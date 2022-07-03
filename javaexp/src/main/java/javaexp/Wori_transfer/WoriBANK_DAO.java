package javaexp.Wori_transfer;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;

import javaexp.Wori_transfer.vo.WoriBANK;
import javaexp.z03_vo.*;

	
	public class WoriBANK_DAO {
	   private Connection con; 
	   private PreparedStatement pstmt;
	   private ResultSet rs; 

	   public void setConn() throws SQLException { 
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         String info = "jdbc:oracle:thin:@localhost:1521:xe";
	         con = DriverManager.getConnection(info, "scott", "tiger");
	         System.out.println("접속성공!!");
	      } catch (ClassNotFoundException e) {
	         // TODO Auto-generated catch block
	        
	         System.out.println("클래스 에러:" + e.getMessage());
	      }
	   }

	
	   public void showWoriBANK() {
	     
	      try {
	         setConn();
	         String sql = "select * from WoriBANK";
	         pstmt = con.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         int cnt = 1;
	         while (rs.next()) { 
	        	 //memberNum/name/accountNum/PW/balance
	        	System.out.print(rs.getInt("memberNum") + "\t");
	            System.out.print(rs.getString("name") + "\t");
	            System.out.print(rs.getLong("accountNum") + "\t");
	            System.out.print(rs.getInt("PW") + "\t");
	            System.out.print(rs.getInt("balance") + "\n");
	           
	            cnt++;
	         }
	      
	         rs.close();
	         pstmt.close();
	         con.close();
	        
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         System.out.println("DB 에러:" + e.getMessage());
	      } catch (Exception e) {
	         System.out.println("일반 예외:" + e.getMessage());
	      } finally {
	         if (rs != null) {
	            try {
	               rs.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         if (pstmt != null) {
	            try {
	               pstmt.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	      
	         if (con != null) {
	            try {
	               con.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	      }
	   }


	   // 단일 row sql 처리
	   public int getWoriBANKList() {
	      int cnt = 0;
	      // [핵심코드]
	      String sql = "select count(*) cnt from WoriBANK";
	      // 연결
	      try {
	         setConn();
	         pstmt = con.prepareStatement(sql);
	         rs = pstmt.executeQuery();
	         // 하나의 데이터 결과 처리이기에 바로 처리
	         // [핵심코드]
	         if (rs.next())
	            cnt = rs.getInt("cnt");
	         //
	         rs.close();
	         pstmt.close();
	         con.close();
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      } catch (Exception e) {
	         System.out.println(e.getMessage());
	      } finally {
	         if (con != null) {
	            try {
	               con.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         if (pstmt != null) {
	            try {
	               pstmt.close();
	            } catch (SQLException e) {
	               // TODO Auto-generated catch block
	               e.printStackTrace();
	            }
	         }
	         if (rs != null) {
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
	   
	   public ArrayList<WoriBANK> getWoriBANKList(String name) { 
		      ArrayList<WoriBANK> WoriBANKList = new ArrayList<WoriBANK>();
		      try {
		         setConn();
		         String sql = "SELECT *\r\n"
		               + "FROM WoriBANK\r\n"
		               + "WHERE name LIKE '%'|| ? ||'%'"; // 주의 '?' (X>
		         pstmt = con.prepareStatement(sql);
		         pstmt.setString(1, name);
		         rs = pstmt.executeQuery();
		         while (rs.next()) {
		        	 WoriBANKList.add(new WoriBANK(
		        			 rs.getInt("MemberNum"),
		        			 rs.getString("name"),
		                     rs.getLong("accountNum"),
		                     rs.getInt("PW"),
		                     rs.getInt("balance") )
		                     );
		         }
		         // 자원해제(열린순서 반대 방향)
		         rs.close();
		         pstmt.close();
		         con.close();
		         // 예외 처리.
		         // 기본 예외 : DB - SQLException
		         // 일반 예외 : Exception
		      } catch (SQLException e) {
		         // TODO Auto-generated catch block
		         System.out.println("DB 에러:" + e.getMessage());
		      } catch (Exception e) {
		         System.out.println("일반 예외:" + e.getMessage());
		      } finally {
		         if (rs != null) {
		            try {
		               rs.close();
		            } catch (SQLException e) {
		               // TODO Auto-generated catch block
		               e.printStackTrace();
		            }
		         }
		         if (pstmt != null) {
		            try {
		               pstmt.close();
		            } catch (SQLException e) {
		               // TODO Auto-generated catch block
		               e.printStackTrace();
		            }
		         }
		         // 예외 상관없이 처리할 내용.
		         if (con != null) {
		            try {
		               con.close();
		            } catch (SQLException e) {
		               // TODO Auto-generated catch block
		               e.printStackTrace();
		            }
		         }
		      }
		      return WoriBANKList;
		   }
	

	   public static void main(String[] args) {
		   WoriBANK_DAO dao = new WoriBANK_DAO();
		 //memberNum/name/accountNum/PW/balance	     
	      ArrayList<WoriBANK> list = dao.getWoriBANKList("a");
	      for( WoriBANK wori:list) {
	         System.out.print(wori.getMemberNum()+"\t");
	         System.out.print(wori.getName()+"\t");
	         System.out.print(wori.getAccountNum()+"\t");
	         System.out.print(wori.getPW()+"\t");
	         System.out.print(wori.getBalance()+"\n");
	        
	      }

	   }

	}

	


