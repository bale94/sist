package javaexp.a13_database;

import java.sql.*;
// DAO(Database Access Object)
public class A03_DAO {
	// 1. 공통필드 선언
	private Connection con; // 연결객체
	private Statement stmt; // 대화객체
	private ResultSet rs; // data를 받는 결과 객체 select sql의 처리결과로 활용
	
	// 2. 공통 연결 메소드
	public void setConn() throws SQLException {
		//1) 드라이버 선언
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
			System.out.println("드라이버: "+e.getMessage());
		}
		//2) 서버연결처리(Connection 객체 생성)
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"scott","tiger");
		System.out.println("접속성공!");		
	}
	// 3. 조회처리 기능 메소드
	public void empList() {
		// 1) 연결메소드 호출
		try {
			setConn();
//		 	2) 대화객체 만들기
			stmt = con.createStatement();
//			3) 결과객체 할당하기
			String sql = "select * from emp";
			rs = stmt.executeQuery(sql);
			System.out.println("기능 sql 처리 완료");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("DB처리: "+e.getMessage());
		}
	}
	// ex) 부서정보를 조회하여 출력하는 기능메소드를 처리
	public void deptList() {
		try {
//			setConn;
			String sql = "select * from dept";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.println(rs.getInt("deptno")+"\t");
				System.out.println(rs.getString("deptno")+"\t");
				System.out.println(rs.getInt("deptno")+"\t");
			
			}
			rs.close();
			stmt.close();
			con.close();
		} catch(SQLException e){
			System.out.println(e.getMessage());
			
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			if(rs!=null) {
				
			}
		}
	}
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A03_DAO dao = new A03_DAO();
		dao.empList();
	}

}
