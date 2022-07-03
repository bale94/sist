<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "webprj.dao.A04_PreDAO"
    import = "webprj.z01_vo.Dept"
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

#regBtn{
  width: 49%;
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=button],input[type=submit] {
  width: 20%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}
#customers tr:nth-child(even){background-color: #f2f2f2;}
#customers tr:hover {background-color: #ddd;}
#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
<script type="text/javascript">
	function goInsert(){
		location.href="a02_deptInsert.jsp";
	}
</script>
</head>
<%
String deptnoS = request.getParameter("deptno");
String dname = request.getParameter("dname");
String loc = request.getParameter("loc");
int deptno = 0;
if(deptnoS!=null) deptno = Integer.parseInt(deptnoS);
if(dname==null) dname="";
if(loc==null) loc="";
%>
<body>
<h2>부서 정보</h2>
<form method="get">
	부서번호:<input type="text" name="deptno" value="<%=deptno%>"/><br>
	부서명:<input type="text" name="dname" value="<%=dname%>"/><br>
	부서위치:<input type="text" name="loc" value="<%=loc%>"/><br>
	<input type="button" value="등록" onclick="goInsert()"/>
	<input type="submit" value="검색"/><br>
</form>
<script type="text/javascript">
	function goDetail(deptno){
		alert("부서번호"+deptno+" 상세화면 이동")
		location.href="a03_deptDetail.jsp?deptno="+deptno
	}
</script>
<%
A04_PreDAO dao = new A04_PreDAO();

/*for(Dept d:dao.getDeptList(new Dept())){
	d.getDeptno();
	d.getDname();
	d.getLoc();
}*/
%>
<table id="customers">
	<tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%for(Dept d:dao.getDeptList(new Dept(dname,loc))){%>
	<tr ondblclick="goDetail(<%=d.getDeptno()%>)"><td><%=d.getDeptno()%></td><td><%=d.getDname()%></td><td><%=d.getLoc()%></td></tr>
	<%}%>
</table>
</body>
</html>