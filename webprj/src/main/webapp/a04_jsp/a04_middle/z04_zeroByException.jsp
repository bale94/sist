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
String req = request.getParameter("");


%><%--
<h2>ArithmeticException</h2>
<table>
	<tr><th>예외내용</th><td><%=exception.getMessage()%></td></tr>
	<tr><th>예외클래스</th><td><%=exception.getClass()%></td></tr>
</table>--%>
</body>
</html>