package javaexp.z01_homework;

import java.sql.SQLException;

import javaexp.z03_vo.Dept;

public class A0608 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		[1단계:개념] 1. 등록/수정/삭제시, 추가 삭제 필요한 코드를 예제로 기술하세요.
//			rs = pstmt.executeQuery(); 을 비롯한 rs관련 코드들이 필요가 없기에 삭제하면된다.
//			rs로 쿼리를 시작하지 않기때문에 필요가 없다.
//		[1단계:확인] 2. 복사테이블로 Dept01 을 만들고, 입력처리하는 메서드를 만드세요.
//		public void Dept01(Dept ins) {
//			try {
//				setConn();
//				con.setAutoCommit(false);
//				String sql = "INSERT INTO dept values(?, ?, ?)";
//	
//				pstmt = con.prepareStatement(sql);
//				pstmt.setInt(1, ins.getDeptno());
//				pstmt.setString(2, ins.getDname());
//				pstmt.setString(3, ins.getLoc());
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
//		[1단계:확인] 3. Dept01부서정보를 전체 컬럼을 수정하세요.
//		public void Dept01(Dept ins) {
//			try {
//				setConn();
//				con.setAutoCommit(false);
//				String sql = "UPDATE dept01\r\n"
//						+ "	SET dname=?,\r\n"
//						+ "		loc = ?\r\n"
//						+ "WHERE deptno=?";
//
//				pstmt = con.prepareStatement(sql);
//				pstmt.setInt(1, ins.getDeptno());
//				pstmt.setString(2, ins.getDname());
//				pstmt.setString(3, ins.getLoc());
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
		
//		[1단계:확인] 4. Dept01부서정보를 deptno기준으로 삭제하세요
//		public void Dept01(Dept ins) {
//			try {
//				setConn();
//				con.setAutoCommit(false);
//				String sql = "DELETE FROM dept01\r\n"
//						+ "WHERE deptno=?";
//
//				pstmt = con.prepareStatement(sql);
//				pstmt.setInt(1, ins.getDeptno());
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
//		[1단계:개념] 5. jsp페이지를 웹서버(WAS)에서 실행할 때, 기본예제로 기본 위치와 설정파일을 기술하세요.
//		jsp파일은 src/main/webapp아래에 만들어야하고 web-INF/lib안에 jsp-api.jar, servlet-api.jar을 복사해서
//		넣어줘야한다. 수업시간에는 ojdbc6.jar도 같이 복사해서 넣어주었다.
	}

}
