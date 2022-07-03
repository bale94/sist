package Wori;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;

import Wori.*;

	
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
	            System.out.print(rs.getInt("webPW") + "\t");
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
	   public int getWoriBANKpw(String id) {
	      int cnt = 0;
	      // [핵심코드]
	      String sql = "select webPW from WoriBANK where id=?";
	      // 연결
	      try {
	         setConn();
	         pstmt = con.prepareStatement(sql);
	         rs = pstmt.executeQuery();
	         // 하나의 데이터 결과 처리이기에 바로 처리
	         // [핵심코드]
	         while (rs.next()) {
	            cnt = rs.getInt("cnt");
	         }
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
		public void insertWori(WoriBANK ins) {
			try {
				setConn();
				con.setAutoCommit(false);
				String sql = "INSERT INTO WoriMember values(memNum01.nextval,"
						+ " ?, ?, ?, ?, ?, ?)";
	
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, ins.getId());
				pstmt.setString(2, ins.getWebPW());
				pstmt.setString(3, ins.getName());
				pstmt.setLong(4, ins.getAccountNum());
				pstmt.setString(5, ins.getPhone());
				pstmt.setString(6, ins.getCardNum());

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
	

	   public WoriBANK showWoriReg(String id) {
		     WoriBANK wori = new WoriBANK();
		      try {
		         setConn();
		         String sql = "select * "
		         		+ "from WoriMember "
		         		+ "where memberNum = memNum01.currval";
		         pstmt = con.prepareStatement(sql);
		         rs = pstmt.executeQuery();
		
		         if (rs.next()) { 
		        	 //memberNum/name/accountNum/PW/balance
		        	System.out.print(rs.getInt("memberNum") + "\t");
		            System.out.print(rs.getString("name") + "\t");
		            System.out.print(rs.getString("webPW") + "\t");
		            System.out.print(rs.getLong("accountNum") + "\t");
		           
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
		      return wori;
		   }


	/*
	
	 * */
		public WoriBANK getWoriDetail(String id) {
			WoriBANK wori = new WoriBANK();
	
			try {
				setConn();
				String sql = "select * \r\n"
						+ "from WoriMember \r\n"
						+ "where id = ?";	
				System.out.println(sql);
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					wori = new WoriBANK(
								rs.getString("id"),
								rs.getString("webPW"),
								rs.getString("name"),
								rs.getLong("accountNum"),
								rs.getString("phone"),
								rs.getString("cardNum")
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
			return wori;
		}


	/*
		
		 * */
			private static WoriBANK_DAO instance;

			public static WoriBANK_DAO getInstance() {
				if(instance==null) {
					instance = new WoriBANK_DAO();
				}
				return instance;
			}
			
			public int getWoripw(String id, String webPW) {
				String pwdb = "";
				int a = -1;
		
				try {
					setConn();
					StringBuffer query = new StringBuffer();
					query.append("select webPW from WoriMember where id = ?");	
					pstmt = con.prepareStatement(query.toString());
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					if (rs.next()) {
						pwdb = rs.getString("webPW");
						if(pwdb.equals(webPW))
							a = 1;
						else
							a = 0;
					}else {
						a = -1;
					}
					return a;

				}catch(Exception e){
					throw new RuntimeException(e.getMessage());
				} finally {
					try {
						if(pstmt != null) {
							pstmt.close();
							pstmt=null;
						}
						if(con != null) {
							con.close();
							con = null;
						}
					}catch(Exception e) {
						throw new RuntimeException(e.getMessage());
					}
				}
			}

	public void insertOther(WoriBANK ins) {
				try {
					setConn();
					con.setAutoCommit(false);
					String sql = "INSERT INTO otherBank values(?, ?, ?)";
			
					pstmt = con.prepareStatement(sql);
					pstmt.setLong(1, ins.getAccountNum());
					pstmt.setString(2, ins.getAccountName());
					pstmt.setString(3, ins.getBankName());
			
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
		   WoriBANK_DAO dao = new WoriBANK_DAO();
		 //memberNum/name/accountNum/PW/balance

	   }

	}

	


