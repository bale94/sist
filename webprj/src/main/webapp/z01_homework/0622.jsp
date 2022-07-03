<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>

</head>
<script type="text/javascript">
/*
[1단계:개념] 1. 화면 상세 처리를 위하여 특정 페이지로 이동하는 로직을 기술하세요
1.상세보기를 볼 페이지로 이동처리를 한다. onclick, ondblclick 모두 상관없다.
2. form을 작성한다. 어떤값을 받고 어떤값을 입력하고, 어떤것을 버튼으로 쓰는지 등을 정한다.
3. dao 기능 메소드를 작성한다. 어떤값을 key로 받아서 넘길지 여기서 정하면된다.
4. 화면을 출력한다.

[1단계:개념] 2. 페이지의 수정/삭제를 구별하여 처리하기 위한 코드를 예제를 통해 기술하세요
<input type="hidden" name="proc"/>
function을 작성하고, 버튼별로 넣어주면 된다.
String proc = request.getParameter("proc");을 받아서 수정과 삭제 중 현재 어떤값을 갖고있는지
System.out.println("현재 proc: "+proc);로 로그창에서 볼수있다.

[1단계:확인] 3. 물품 정보 리스트/상세를 위한 dao를 작성하세요.
public Emp getEmpDetail(int empno) {
	Emp emp = null;
	

	try {
		setConn();
		String sql = "select empno,ename,job,mgr, "
				+ "to_char(hiredate, 'YYYY-MM-DD') hiredateS, "
				+ "sal, comm, deptno \r\n"
				+ "from emp01 \r\n"
				+ "where empno = ?";	
		System.out.println(sql);
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, empno);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			emp = new Emp(
						rs.getInt("empno"),
						rs.getString("ename"),
						rs.getString("job"),
						rs.getInt("mgr"),
						rs.getString("hiredateS"),
						rs.getDouble("sal"),
						rs.getDouble("comm"),
						rs.getInt("deptno")
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
	return emp;
}
empno를 키로받아 상세정보를 보여준다.

[1단계:확인] 4. 위 물품 정보 리스트/상세 화면을 만들어 보세요.
 */
</script>
<body>

<%
String req = request.getParameter("");

%>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="dname">@@@</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table >
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>