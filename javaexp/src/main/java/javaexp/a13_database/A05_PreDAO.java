package javaexp.a13_database;
// javaexp.a13_database.A04_PreDAO

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javaexp.z03_vo.Dept;
import javaexp.z03_vo.Emp;
import javaexp.z03_vo.Emp10;
// DAO(Database Access Object)
// 전화기와 동일 : 연결/대화/결과를 통해 받은 데이터/종료-자원해제,예외처리
public class A05_PreDAO {
	private Connection con; // 연결객체
	private PreparedStatement pstmt; // 대화객체
	private ResultSet rs; // data를 받는 결과 객체 select sql의 처리결과로 활용

	public void setConn() throws SQLException {// 예외를 외부에 던져 한번에 처리할수 있도록 함

		try {//왼쪽에 오류버튼에 마우스올리면 surround with trycatch가 나온다 그거클릭
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//2. 특정서버에 접속정보로 접속 - localhost
			// 		ip,port,sid,계정,비밀번호
			String info = "jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(info,"scott","tiger");
			System.out.println("접속성공!");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
//			e.printStackTrace();
			System.out.println("클래스 에러: "+e.getMessage());
		}
		
	}
	
	
	// 3. 각 기능별 메소드
	// 1) emp를 출력하는 기능메소드
	public void showEmp() {
		// 선언한 공통 연결메소드
		try {
			// 1. 필드에 선언된 private Connection con;에 객체가 생성이 된다.
			setConn();
			// 2. 대화객체선언
				// 1) sql문 작성
			String sql = "select * from emp01";	
			// sql문 안에 (;)를 붙이지않는다
			// DB 에러 : ORA-00911: invalid character
			// 계층적으로 연관 관계로 객체가 만들어진다
			// 드라이버 객체 ==> DB처리는 연결객체 ==> 대화가 결과객체(상호간에 연동하여 객체 생성)
			
/*
-- .next() : 행단위로 이동 처리함 - 그 행에 데이터가 없으면 true/없으면 false
-- .getString("컬럼명") : 해당 row에 상단에 선언된 column명을 기준으로 데이터를 가져온다.
--		**주의) select @@최종컬럼명이기에 alias가 있으면 alias명으로 호출해야한다
--		.get데이터유형()
--			ex) rs.getInt("empno"), rs.getDate("hiredate"), sal의 경우 number(4,2)로 실수형이기에
--				rs.getDouble("sal")
* */
			
			
				// 2) 대화 객체 생성
			pstmt = con.prepareStatement(sql);
				// 3) 대화객체를 통해 결과객체 생성, 매개변수로 sql문을 할당 처리한다
			rs = pstmt.executeQuery();
				// 4) 전체 데이터 가져오기
				// 		저장된 갯수만큼 next()를 호출
			int cnt=1;
			while(rs.next()) {
				System.out.print(cnt+"행\t"+rs.getInt("empno"));
				System.out.print(rs.getString("ename")+"\t");
				System.out.print(rs.getString("job")+"\t");
				System.out.print(rs.getInt("mgr")+"\t");
				System.out.print(rs.getDate("hiredate")+"\t");
				System.out.print(rs.getDouble("sal")+"\t");
				System.out.print(rs.getDouble("comm")+"\t");
				System.out.print(rs.getInt("deptno")+"\n");
				cnt++;
			}
			// 자원해제(열린순서 반대방향)
			rs.close();
			pstmt.close();
			con.close();
			// 예외처리
			// 기본예외 : DB - SQLException
			// 일반예외 : Exception
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("DB 에러: "+e.getMessage());
		} catch(Exception e){
			System.out.println("일반 예외: "+e.getMessage());
		} finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	// getEmpCnt()를 PreparedStatement로 처리해서 에러없게하기
	// 단일 row sql 처리
	public int getEmpCnt() {
		int cnt = 0;
		// [핵심코드]
		String sql = "select count(*) cnt from emp";
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// 하나의 데이터이기에 if문으로 처리가능
			// [핵심코드]
			rs.next();
			cnt = rs.getInt("cnt");
			//
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return cnt;
		
	}
	
	
	
	// 단일 row sql 처리
	public int getEmpCnt(int deptno) {
		int cnt = 0;
		// [핵심코드]
		String sql = "select count(*) cnt from emp where deptno=?";
		System.out.println(sql);
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			// ?에 mapping될 데이터를 타입에 맞게 처리한다
			pstmt.setInt(1, deptno);
			// deptno로 연동할 데이터가 정수형이고, 첫번째 ?에 연동할 데이터
			// ?는 1부터 시작해서 증가 시켜준다
			rs = pstmt.executeQuery();
			// 하나의 데이터이기에 if문으로 처리가능
			// [핵심코드]
			rs.next();
			cnt = rs.getInt("cnt");
			//
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return cnt;
		
	}


	// 단일 row sql 처리
	public int getEmpCnt(String job) {
		int cnt = 0;
		// [핵심코드]
		String sql = "select count(*) cnt from emp where job= ? ";//****** '?'형식으로 넣지말자!
		System.out.println(sql);
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			// ?에 mapping될 데이터를 타입에 맞게 처리한다
			pstmt.setString(1, job);
			// job으로 연동할 데이터가 문자열이고, 첫번째 ?에 연동할 데이터
			// ?는 1부터 시작해서 증가 시켜준다
			rs = pstmt.executeQuery();
			// 하나의 데이터이기에 if문으로 처리가능
			// [핵심코드]
			rs.next();
			cnt = rs.getInt("cnt");
			//
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return cnt;
		
	}


	/*
	
	 * */
		public ArrayList<Emp> getEmpList(String ename) {
			ArrayList<Emp> empList = new ArrayList<Emp>();
			// 메소드 중괄호 블럭 마지막에 return empList; 선언

			try {
				setConn();
				String sql = "SELECT *\r\n"
						+ "FROM EMP e \r\n"
						+ "WHERE ename LIKE '%'|| ? ||'%'";	//##주의 '?'로 표기하면안된다!

				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ename);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					empList.add(new Emp(
								rs.getInt("empno"),
								rs.getString("ename"),
								rs.getString("job"),
								rs.getInt("mgr"),
								rs.getDate("hiredate"),
								rs.getDouble("sal"),
								rs.getDouble("comm"),
								rs.getInt("deptno")
							));
				}
				// 자원해제(열린순서 반대방향)
				rs.close();
				pstmt.close();
				con.close();
				// 예외처리
				// 기본예외 : DB - SQLException
				// 일반예외 : Exception
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("DB 에러: "+e.getMessage());
			} catch(Exception e){
				System.out.println("일반 예외: "+e.getMessage());
			} finally {
				if(rs!=null) {
					try {
						rs.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(pstmt!=null) {
					try {
						pstmt.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(con!=null) {
					try {
						con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			return empList;
		}


	/*
		
		 * */
//			public ArrayList<Emp> getEmpList1(int sal) {
//				ArrayList<Emp> empList = new ArrayList<Emp>();
//				// 메소드 중괄호 블럭 마지막에 return empList; 선언
//		
//				try {
//					setConn();
//					String sql = "SELECT *\r\n"
//							+ "FROM EMP e \r\n"
//							+ "WHERE sal>= ?\r\n"
//							+ "ORDER BY deptno";	
//		
//					pstmt = con.prepareStatement(sql);
//					pstmt.setInt(1, sal);
//					rs = pstmt.executeQuery();
//		
//					while(rs.next()) {
//						empList.add(new Emp(
//									rs.getInt("empno"),
//									rs.getString("ename"),
//									rs.getString("job"),
//									rs.getInt("mgr"),
//									rs.getDate("hiredate"),
//									rs.getDouble("sal"),
//									rs.getDouble("comm"),
//									rs.getInt("deptno")
//								));
//					}
//					// 자원해제(열린순서 반대방향)
//					rs.close();
//					pstmt.close();
//					con.close();
//					// 예외처리
//					// 기본예외 : DB - SQLException
//					// 일반예외 : Exception
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					System.out.println("DB 에러: "+e.getMessage());
//				} catch(Exception e){
//					System.out.println("일반 예외: "+e.getMessage());
//				} finally {
//					if(rs!=null) {
//						try {
//							rs.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(pstmt!=null) {
//						try {
//							pstmt.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(con!=null) {
//						try {
//							con.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//				}
//				return empList;
//			}


	/*
		
		 * */
//			public ArrayList<EmpDept> getEmpList1(String dname, String ename) {
//				ArrayList<EmpDept> empList = new ArrayList<EmpDept>();
//				// 메소드 중괄호 블럭 마지막에 return empList; 선언
//		
//				try {
//					setConn();
//					String sql = "select dname, empno, ename, sal\r\n"
//							+ "from dept d, EMP e \r\n"
//							+ "where ename like '%'|| ? ||'%' and dname like '%'|| ? ||'%'\r\n"
//							+ "AND d.deptno=e.DEPTNO";	//##주의 '?'로 표기하면안된다!
//		
//					pstmt = con.prepareStatement(sql);
//					pstmt.setString(1, dname);
//					pstmt.setString(2, ename);
//					rs = pstmt.executeQuery();
//		
//					while(rs.next()) {
//						empList.add(new EmpDept(
//									rs.getString("dname"),
//									rs.getInt("empno"),
//									rs.getString("ename"),
//									rs.getDouble("sal")
//								));
//					}
//					// 자원해제(열린순서 반대방향)
//					rs.close();
//					pstmt.close();
//					con.close();
//					// 예외처리
//					// 기본예외 : DB - SQLException
//					// 일반예외 : Exception
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					System.out.println("DB 에러: "+e.getMessage());
//				} catch(Exception e){
//					System.out.println("일반 예외: "+e.getMessage());
//				} finally {
//					if(rs!=null) {
//						try {
//							rs.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(pstmt!=null) {
//						try {
//							pstmt.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(con!=null) {
//						try {
//							con.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//				}
//				return empList;
//			}


	/*
				
				 * */
			//		public ArrayList<Emp> getEmpList(String ename) {
			//			ArrayList<Emp> empList = new ArrayList<Emp>();
			//			// 메소드 중괄호 블럭 마지막에 return empList; 선언
			//
			//			try {
			//				setConn();
			//				String sql = "SELECT *\r\n"
			//						+ "FROM EMP e \r\n"
			//						+ "WHERE ename LIKE '%'|| ? ||'%'";	//##주의 '?'로 표기하면안된다!
			//
			//				pstmt = con.prepareStatement(sql);
			//				pstmt.setString(1, ename);
			//				rs = pstmt.executeQuery();
			//
			//				while(rs.next()) {
			//					empList.add(new Emp(
			//								rs.getInt("empno"),
			//								rs.getString("ename"),
			//								rs.getString("job"),
			//								rs.getInt("mgr"),
			//								rs.getDate("hiredate"),
			//								rs.getDouble("sal"),
			//								rs.getDouble("comm"),
			//								rs.getInt("deptno")
			//							));
			//				}
			//				// 자원해제(열린순서 반대방향)
			//				rs.close();
			//				pstmt.close();
			//				con.close();
			//				// 예외처리
			//				// 기본예외 : DB - SQLException
			//				// 일반예외 : Exception
			//			} catch (SQLException e) {
			//				// TODO Auto-generated catch block
			//				System.out.println("DB 에러: "+e.getMessage());
			//			} catch(Exception e){
			//				System.out.println("일반 예외: "+e.getMessage());
			//			} finally {
			//				if(rs!=null) {
			//					try {
			//						rs.close();
			//					} catch (SQLException e) {
			//						// TODO Auto-generated catch block
			//						e.printStackTrace();
			//					}
			//				}
			//				if(pstmt!=null) {
			//					try {
			//						pstmt.close();
			//					} catch (SQLException e) {
			//						// TODO Auto-generated catch block
			//						e.printStackTrace();
			//					}
			//				}
			//				if(con!=null) {
			//					try {
			//						con.close();
			//					} catch (SQLException e) {
			//						// TODO Auto-generated catch block
			//						e.printStackTrace();
			//					}
			//				}
			//			}
			//			return empList;
			//		}
			
			
				/*
					
					 * */
			//			public ArrayList<Emp> getEmpList1(int sal) {
			//				ArrayList<Emp> empList = new ArrayList<Emp>();
			//				// 메소드 중괄호 블럭 마지막에 return empList; 선언
			//		
			//				try {
			//					setConn();
			//					String sql = "SELECT *\r\n"
			//							+ "FROM EMP e \r\n"
			//							+ "WHERE sal>= ?\r\n"
			//							+ "ORDER BY deptno";	
			//		
			//					pstmt = con.prepareStatement(sql);
			//					pstmt.setInt(1, sal);
			//					rs = pstmt.executeQuery();
			//		
			//					while(rs.next()) {
			//						empList.add(new Emp(
			//									rs.getInt("empno"),
			//									rs.getString("ename"),
			//									rs.getString("job"),
			//									rs.getInt("mgr"),
			//									rs.getDate("hiredate"),
			//									rs.getDouble("sal"),
			//									rs.getDouble("comm"),
			//									rs.getInt("deptno")
			//								));
			//					}
			//					// 자원해제(열린순서 반대방향)
			//					rs.close();
			//					pstmt.close();
			//					con.close();
			//					// 예외처리
			//					// 기본예외 : DB - SQLException
			//					// 일반예외 : Exception
			//				} catch (SQLException e) {
			//					// TODO Auto-generated catch block
			//					System.out.println("DB 에러: "+e.getMessage());
			//				} catch(Exception e){
			//					System.out.println("일반 예외: "+e.getMessage());
			//				} finally {
			//					if(rs!=null) {
			//						try {
			//							rs.close();
			//						} catch (SQLException e) {
			//							// TODO Auto-generated catch block
			//							e.printStackTrace();
			//						}
			//					}
			//					if(pstmt!=null) {
			//						try {
			//							pstmt.close();
			//						} catch (SQLException e) {
			//							// TODO Auto-generated catch block
			//							e.printStackTrace();
			//						}
			//					}
			//					if(con!=null) {
			//						try {
			//							con.close();
			//						} catch (SQLException e) {
			//							// TODO Auto-generated catch block
			//							e.printStackTrace();
			//						}
			//					}
			//				}
			//				return empList;
			//			}
			
			
				/*
					
				 * */
					public ArrayList<Dept> getDeptList(String dname, String loc) {
						ArrayList<Dept> deptList = new ArrayList<Dept>();
						// 메소드 중괄호 블럭 마지막에 return empList; 선언
				
						try {
							setConn();
							String sql = "select * from dept where dname like '%'|| ? ||'%' and loc like '%'|| ? ||'%'";
				
							pstmt = con.prepareStatement(sql);
							pstmt.setString(1, dname);
							pstmt.setString(2, loc);
							rs = pstmt.executeQuery();
				
							while(rs.next()) {
								deptList.add(new Dept(
											rs.getInt("deptno"),
											rs.getString("dname"),
											rs.getString("loc")
										));
							}
							// 자원해제(열린순서 반대방향)
							rs.close();
							pstmt.close();
							con.close();
							// 예외처리
								// 기본예외 : DB - SQLException
							// 일반예외 : Exception
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							System.out.println("DB 에러: "+e.getMessage());
						} catch(Exception e){
							System.out.println("일반 예외: "+e.getMessage());
						} finally {
							if(rs!=null) {
								try {
									rs.close();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
							if(pstmt!=null) {
								try {
									pstmt.close();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
							if(con!=null) {
								try {
									con.close();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}
							}
						}
						return deptList;
					}
	public ArrayList<Emp10> getEmpList3(double start, double end, int deptno) {
		ArrayList<Emp10> empList = new ArrayList<Emp10>();
		// 메소드 중괄호 블럭 마지막에 return empList; 선언

		try {
			setConn();
			String sql = "SELECT empno no, ename name, job, sal salary, to_char(hiredate, 'Q') hireq, deptno dno \r\n"
					+ "FROM EMP e \r\n"
					+ "WHERE sal between ? and ? \r\n"
					+ "and deptno = ? ";	

			pstmt = con.prepareStatement(sql);
			pstmt.setDouble(1, start);
			pstmt.setDouble(2, end);
			pstmt.setInt(3, deptno);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				empList.add(new Emp10(
						rs.getInt("no"),
						rs.getString("name"),
						rs.getString("job"),
						rs.getDouble("salary"),
						rs.getString("hireq"),
						rs.getInt("dno")
						)
					);
			}
			// 자원해제(열린순서 반대방향)
			rs.close();
			pstmt.close();
			con.close();
			// 예외처리
			// 기본예외 : DB - SQLException
			// 일반예외 : Exception
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("DB 에러: "+e.getMessage());
		} catch(Exception e){
			System.out.println("일반 예외: "+e.getMessage());
		} finally {
			if(rs!=null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return empList;
	}


	/*
	
	 * */
//		public void insertEmp(Emp ins) {
//			try {
//				setConn();
//				con.setAutoCommit(false);
//				String sql = "INSERT INTO emp01 values(?, ?, ?, ?,\r\n"
//						+ "	 to_date(?, 'YYYY-MM-DD'), ?, ?, ?)";
//	
//				pstmt = con.prepareStatement(sql);
//				pstmt.setInt(1, ins.getEmpno());
//				pstmt.setString(2, ins.getEname());
//				pstmt.setString(3, ins.getJob());
//				pstmt.setInt(4, ins.getMgr());
//				pstmt.setString(5, ins.getHiredate_s());
//				pstmt.setDouble(6, ins.getSal());
//				pstmt.setDouble(7, ins.getComm());
//				pstmt.setInt(8, ins.getDeptno());
//				
//				pstmt.executeUpdate();
//				con.commit();
//				pstmt.close();
//				con.close();
//
//			} catch (SQLException e) {
//				// TODO Auto-generated catch block
//				System.out.println("DB 에러: "+e.getMessage());
//				// commit 전에 예외가 발생하면 rollback()처리
//				try {
//					con.rollback();
//				} catch (SQLException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				}
//				
//			} catch(Exception e){
//				System.out.println("일반 예외: "+e.getMessage());
//			} finally {
//				if(pstmt!=null) {
//					try {
//						pstmt.close();
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				}
//				if(con!=null) {
//					try {
//						con.close();
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//					}
//				}
//			}
//		}
//
//
//	/*
//		
//		 * */
//			public void updateEmp(Emp ins) {
//				try {
//					setConn();
//					con.setAutoCommit(false);
//					String sql = "UPDATE emp01\r\n"
//							+ "	SET ename=?,\r\n"
//							+ "		job=?,\r\n"
//							+ "		mgr=?,\r\n"
//							+ "		hiredate = to_date(?, 'YYYY-MM-DD'),\r\n"
//							+ "		sal = ?,\r\n"
//							+ "		comm = ?,\r\n"
//							+ "		deptno = ?\r\n"
//							+ "WHERE empno=?";
//		
//					pstmt = con.prepareStatement(sql);
//					pstmt.setString(1, ins.getEname());
//					pstmt.setString(2, ins.getJob());
//					pstmt.setInt(3, ins.getMgr());
//					pstmt.setString(4, ins.getHiredate_s());
//					pstmt.setDouble(5, ins.getSal());
//					pstmt.setDouble(6, ins.getComm());
//					pstmt.setInt(7, ins.getDeptno());
//					pstmt.setInt(8, ins.getEmpno());
//					
//					pstmt.executeUpdate();
//					con.commit();
//					pstmt.close();
//					con.close();
//		
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					System.out.println("DB 에러: "+e.getMessage());
//					// commit 전에 예외가 발생하면 rollback()처리
//					try {
//						con.rollback();
//					} catch (SQLException e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					}
//					
//				} catch(Exception e){
//					System.out.println("일반 예외: "+e.getMessage());
//				} finally {
//					if(pstmt!=null) {
//						try {
//							pstmt.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(con!=null) {
//						try {
//							con.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//				}
//			}
//
//
//			/*
//		
//		 * */
//			public void deleteEmp(int empno) {
//				try {
//					setConn();
//					con.setAutoCommit(false);
//					String sql = "DELETE FROM EMP01 e \r\n"
//							+ "WHERE empno=?";
//		
//					pstmt = con.prepareStatement(sql);
//					pstmt.setInt(1, empno);
//					
//					pstmt.executeUpdate();
//					con.commit();
//					pstmt.close();
//					con.close();
//		
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					System.out.println("DB 에러: "+e.getMessage());
//					// commit 전에 예외가 발생하면 rollback()처리
//					try {
//						con.rollback();
//					} catch (SQLException e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					}
//					
//				} catch(Exception e){
//					System.out.println("일반 예외: "+e.getMessage());
//				} finally {
//					if(pstmt!=null) {
//						try {
//							pstmt.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					if(con!=null) {
//						try {
//							con.close();
//						} catch (SQLException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//				}
//			}


	/*
			
			 * */
//				public void Dept01(Dept ins) {
//					try {
//						setConn();
//						con.setAutoCommit(false);
//						String sql = "INSERT INTO dept values(?, ?, ?)";
//			
//						pstmt = con.prepareStatement(sql);
//						pstmt.setInt(1, ins.getDeptno());
//						pstmt.setString(2, ins.getDname());
//						pstmt.setString(3, ins.getLoc());
//						
//						pstmt.executeUpdate();
//						con.commit();
//						pstmt.close();
//						con.close();
//			
//					} catch (SQLException e) {
//						// TODO Auto-generated catch block
//						System.out.println("DB 에러: "+e.getMessage());
//						// commit 전에 예외가 발생하면 rollback()처리
//						try {
//							con.rollback();
//						} catch (SQLException e1) {
//							// TODO Auto-generated catch block
//							e1.printStackTrace();
//						}
//						
//					} catch(Exception e){
//						System.out.println("일반 예외: "+e.getMessage());
//					} finally {
//						if(pstmt!=null) {
//							try {
//								pstmt.close();
//							} catch (SQLException e) {
//								// TODO Auto-generated catch block
//								e.printStackTrace();
//							}
//						}
//						if(con!=null) {
//							try {
//								con.close();
//							} catch (SQLException e) {
//								// TODO Auto-generated catch block
//								e.printStackTrace();
//							}
//						}
//					}
//				}
//	public void Dept01(Dept ins) {
//		try {
//			setConn();
//			con.setAutoCommit(false);
//			String sql = "UPDATE dept01\r\n"
//					+ "	SET dname=?,\r\n"
//					+ "		loc = ?\r\n"
//					+ "WHERE deptno=?";
//
//			pstmt = con.prepareStatement(sql);
//			pstmt.setInt(1, ins.getDeptno());
//			pstmt.setString(2, ins.getDname());
//			pstmt.setString(3, ins.getLoc());
//			
//			pstmt.executeUpdate();
//			con.commit();
//			pstmt.close();
//			con.close();
//
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			System.out.println("DB 에러: "+e.getMessage());
//			// commit 전에 예외가 발생하면 rollback()처리
//			try {
//				con.rollback();
//			} catch (SQLException e1) {
//				// TODO Auto-generated catch block
//				e1.printStackTrace();
//			}
//			
//		} catch(Exception e){
//			System.out.println("일반 예외: "+e.getMessage());
//		} finally {
//			if(pstmt!=null) {
//				try {
//					pstmt.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//			if(con!=null) {
//				try {
//					con.close();
//				} catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		}
//	}
	public void Dept01(Dept ins) {
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "DELETE FROM dept01\r\n"
					+ "WHERE deptno=?";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, ins.getDeptno());
			
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("DB 에러: "+e.getMessage());
			// commit 전에 예외가 발생하면 rollback()처리
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		} catch(Exception e){
			System.out.println("일반 예외: "+e.getMessage());
		} finally {
			if(pstmt!=null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(con!=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

				
				
					public static void main(String[] args) {
		// 실제는 외부에서 위 DAO의 특정한 객체를 호출하는데,
		// 그전에 테스트로 main()에서 객체를 생성해본다.
		// TODO Auto-generated method stub
		A05_PreDAO dao = new A05_PreDAO();
		
//		dao.insertEmp(new Emp(1003, "이영철", "과장", 7780, "2022-06-01", 3500, 100, 10));
//		dao.updateEmp(new Emp(1003, "오영철", "과장", 7780, "2022-07-01", 4500, 100, 10));
//		dao.deleteEmp(7499);
		dao.showEmp();
		/*
		System.out.println("사원 정보의 갯수: "+dao.getEmpCnt());
		System.out.println("사원 정보의 갯수(직책): "+dao.getEmpCnt("SALESMAN"));
		*/
//		ArrayList<Emp> empList = dao.getEmpList("A");
//		for(Emp e:empList) {
//			System.out.print(e.getEmpno()+"\t");
//			System.out.print(e.getEname()+"\t");
//			System.out.print(e.getJob()+"\t");
//			System.out.print(e.getMgr()+"\t");
//			System.out.print(e.getHiredate()+"\t");
//			System.out.print(e.getComm()+"\t");
//			System.out.print(e.getDeptno()+"\n");
//		}
//		ArrayList<Emp> empList1 = dao.getEmpList1(1200);
//		for(Emp e:empList1) {
//			System.out.print(e.getEmpno()+"\t");
//			System.out.print(e.getEname()+"\t");
//			System.out.print(e.getJob()+"\t");
//			System.out.print(e.getMgr()+"\t");
//			System.out.print(e.getHiredate()+"\t");
//			System.out.print(e.getComm()+"\t");
//			System.out.print(e.getDeptno()+"\n");
//		}
//		ArrayList<Dept> deptList = dao.getDeptList("A", "C");
//		for(Dept e:deptList) {
//			System.out.print(e.getDeptno()+"\t");
//			System.out.print(e.getDname()+"\t");
//			System.out.print(e.getLoc()+"\n");
//		}
//		for(Emp10 e:dao.getEmpList3(1000,4000,10)) {
//			System.out.print(e.getNo()+"\t");
//			System.out.print(e.getName()+"\t");
//			System.out.print(e.getJob()+"\t");
//			System.out.print(e.getSalary()+"\t");
//			System.out.print(e.getHireq()+"\t");
//			System.out.print(e.getDno()+"\n");
//		}
	}

}
