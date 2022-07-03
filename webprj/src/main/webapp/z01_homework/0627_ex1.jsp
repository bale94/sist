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
<body>

<%


%>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept"/>
<jsp:setProperty property="deptno" name="dept"/>
<h2>bean으로 요청값 받기</h2>
<table>
   <tr><th>사원명</th><td><%=dept.getDeptno() %></td></tr>
</table>
</body>
</html>