package javaexp.z01_homework;

import java.sql.SQLException;
import java.util.ArrayList;

import javaexp.z03_vo.Dept;
import javaexp.z03_vo.Emp;
import javaexp.z03_vo.Emp10;
import javaexp.z03_vo.EmpDept;

public class A0607 {

	/*
	[1단계:개념] 1. PreparedStament를 사용하는 이유를 기술하세요
		preparedstatement는 미완성된 문장을 전달할 수 있어서 ? 부분을 자유롭게 가져갈 수 있다.
		변수를 사용한다는 느낌인데, 더욱 유동적으로 코드를 작성할 수 있기때문에 사용한다.
		
	[1단계:개념] 2. PreparedStament 를 활용하여 기존에 Statement와 비교하여 변경되는 code를 예제를 통해 기술하세요.
	String sql = "select count(*) cnt from emp where job='"+job+"' ";와
	stmt = con.createStatement();이 사용되야할 부분에
	String sql = "select count(*) cnt from emp where job= ? ";, pstmt = con.prepareStatement(sql);
	로 써서 더욱 직관적이고 값을 바꾸기 쉽게 만들 수 있다.
	
	[1단계:확인] 3. 연봉이 범위(@@~@@) 사이이고, 부서별로 검색하는 사원 정보를 PreparedStament 로 처리하여 결과를 출력하세요
		1) sql 작성
		2) DAO 기능 메소드 작성
			- VO생성확인
			- 리턴값 매개변수 확인
		3) 기능메소드 복사
		4) sql 선언, psmt.setXXXX() 설정
		5) resultSet 선언
		6) 리턴값 객체 할당
		
	public ArrayList<Emp> getEmpList3(int start, int end, int deptno) {
				ArrayList<Emp> empList = new ArrayList<Emp>();
				// 메소드 중괄호 블럭 마지막에 return empList; 선언
		
				try {
					setConn();
					String sql = "SELECT empno no, ename name, job, sal salary, to_char(hiredate, 'Q') hireq, deptno dno\r\n"
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
									rs.getString("hireq"),
									rs.getDouble("salary"),
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
			
	[1단계:확인] 4. 사원명과 부서명을 키워드검색(like,%활용)하여, 부서명, 사원명, 사원번호, 급여를 출력 하게 하세요.(PreparedStament)
	public ArrayList<EmpDept> getEmpList1(String dname, String ename) {
				ArrayList<EmpDept> empList = new ArrayList<EmpDept>();
				// 메소드 중괄호 블럭 마지막에 return empList; 선언
		
				try {
					setConn();
					String sql = "select dname, empno, ename, sal\r\n"
							+ "from dept d, EMP e \r\n"
							+ "where ename like '%'|| ? ||'%' and dname like '%'|| ? ||'%'\r\n"
							+ "AND d.deptno=e.DEPTNO";	//##주의 '?'로 표기하면안된다!
		
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, dname);
					pstmt.setString(2, ename);
					rs = pstmt.executeQuery();
		
					while(rs.next()) {
						empList.add(new EmpDept(
									rs.getString("dname"),
									rs.getInt("empno"),
									rs.getString("ename"),
									rs.getDouble("sal")
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
	[1단계:확인] 5. select * from dept where dname like '%'||''||'%' and loc like '%'||''||'%' 를 이용해서
              리턴 ArrayList<Dept>로 처리해서 main()에서 확인하세요.
              					public ArrayList<Dept> getEmpList1(String dname, String loc) {
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

	[1단계:확인] 6. 오늘 webprj2로 프로젝트 만들고, 톰캣연동하는 부분을 ppt 자료를 만들어서 캡쳐해서, 제출하세요.
	 * */
	 
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A0607 dao = new A0607();
//		ArrayList<Emp> empList = dao.getEmpList1(1200);
//		for(Emp e:empList) {
//			System.out.print(e.getEmpno()+"\t");
//			System.out.print(e.getEname()+"\t");
//			System.out.print(e.getJob()+"\t");
//			System.out.print(e.getMgr()+"\t");
//			System.out.print(e.getHiredate()+"\t");
//			System.out.print(e.getComm()+"\t");
//			System.out.print(e.getDeptno()+"\n");
//		}
//		ArrayList<EmpDept> empList = dao.getEmpList1("S", "A");
//		for(EmpDept e:empList) {
//			System.out.print(e.getDname()+"\t");
//			System.out.print(e.getEmpno()+"\t");
//			System.out.print(e.getEname()+"\t");
//			System.out.print(e.getSal()+"\n");
//
//		}
//		ArrayList<Dept> deptList = dao.getEmpList1("A", "C");
//		for(Dept e:deptList) {
//			System.out.print(e.getDeptno()+"\t");
//			System.out.print(e.getDname()+"\t");
//			System.out.print(e.getLoc()+"\n");
//		}
//		for(Emp10 e:dao.getEmpList3(1000,4000,10)) {
//			System.out.println(e.getNo()+"\t");
//			System.out.println(e.getName()+"\t");
//			System.out.println(e.getJob()+"\t");
//			System.out.println(e.getSalary()+"\t");
//			System.out.println(e.getDeptno()+"\n");
//		}
	}

}
