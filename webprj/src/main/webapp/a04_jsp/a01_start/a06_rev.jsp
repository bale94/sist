<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String product = request.getParameter("product");
	String price = request.getParameter("price");
%>
	<h2>요청값:<%=product %></h2>
	<h2>요청값:<%=price %></h2>
	<%-- /a06_rev.jsp?product=%EC%82%AC%EA%B3%BC&price=3000 --%>


</body>
</html>