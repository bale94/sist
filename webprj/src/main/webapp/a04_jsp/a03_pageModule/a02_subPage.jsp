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
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String cnt = request.getParameter("cnt");
%>

<h2>물건명:<%=name %></h2>
<h2>가격:<%=price %></h2>
<h2>갯수:<%=cnt %></h2>
<table >
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>