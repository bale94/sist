package javaexp.Wori_transfer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import javaexp.Wori_transfer.vo.Wori;
/*
유효성 체크할 부분들:
계좌번호, 회원serial
 */




public class Wori_transfer {
	//이부분에 dao를 추가하면 아래 메인에서 테이블을 불러올수가 있겠다
	//DAO
		private Connection con; // 연결객체
		private PreparedStatement pstmt; // 대화객체
		private ResultSet rs; // data를 받는 결과 객체 select sql의 처리결과로 활용

		public void setConn() throws SQLException {

			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String info = "jdbc:oracle:thin:@localhost:1521:xe";
				con = DriverManager.getConnection(info,"scott","tiger");
				System.out.println("접속성공!");
			} catch (ClassNotFoundException e) {
				System.out.println("클래스 에러: "+e.getMessage());
			}
			
		}
		// 단일 row sql 처리
	public void WoriDeposit(Wori wod) {
		try {
			setConn();
			con.setAutoCommit(false);
			String sql = "INSERT INTO Wori values(?,?,?,?,?)";
			// 정해진 DB정보넣기
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, wod.getSerial());
			pstmt.setInt(2, wod.getBankserial());
			pstmt.setInt(3, wod.getAccount());
			pstmt.setString(4, wod.getName());
			pstmt.setInt(5, wod.getBalance());
			
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

	public int getWithdraw(int serial) {
		int cnt = 0;
		String sql = "INSERT INTO Wori values(?,?,?,?,?)";
		// 출금기록을 
		// 공통 db테이블을 짜면 거기서 불러오기 (회원정보)
		System.out.println(sql);
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			// ?에 mapping될 데이터를 타입에 맞게 처리한다
			pstmt.setInt(1, serial);

			rs = pstmt.executeQuery();
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
	public int showWoriBANK(int serial) {
		int cnt = 0;
		// [핵심코드]
		String sql = "select account, name, balance from Wori where serial=?";
		// 공통 db테이블을 짜면 거기서 불러오기 (회원정보)
		System.out.println(sql);
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			// ?에 mapping될 데이터를 타입에 맞게 처리한다
			pstmt.setInt(1, serial);

			rs = pstmt.executeQuery();
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
	public int showOtherBANK(int memberNum) {
		int cnt = 0;
		// [핵심코드]
		String sql = "select account, name, balance from otherBank where memberNum = ?";
		// 공통 db테이블을 짜면 거기서 불러오기 (회원정보)
		System.out.println(sql);
		// 연결
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			// ?에 mapping될 데이터를 타입에 맞게 처리한다
			pstmt.setInt(1, memberNum);
			
			rs = pstmt.executeQuery();
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
	
	public void main(String[] args) {

		Wori_transfer dao = new Wori_transfer();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("오픈뱅킹서비스입니다.");
		int num = sc.nextInt();
		System.out.println("1.다른금융기관 정보조회, 2:다른금융기관 이용정보등록/추가, 0:종료");
		switch(num) {
			case 1:
				System.out.println("다른금융기관 정보조회입니다.");
				System.out.println("1:다른금융정보조회, 2:다른금융기관 거래내역조회");
				int q1num = sc.nextInt();
				if(q1num==1) {
					System.out.println("다른금융 정보조회입니다");
					System.out.println("계좌번호를 입력하세요:");
					int acNum = sc.nextInt();
					showWoriBANK(acNum);
				}
				
			case 2:
				System.out.println("다른금융기관 이용정보등록/추가입니다");
				System.out.println("1:이용정보등록, 2:이용정보추가");
				int q2num = sc.nextInt();
				if(q2num==1) {
					System.out.println("다른금융기관 이용정보보기입니다");
					int acNum = sc.nextInt();
					showOtherBANK(acNum);	// 등록정보추가?
					//번호를 받아서 번호+ 계좌번호로 저장
				}if(q2num==2) {
					System.out.println("다른금융기관 이용정보추가입니다");
					System.out.println();
					int acNum = sc.nextInt();
					showOtherBANK(acNum);
					
				}
				
		}
	}
}
