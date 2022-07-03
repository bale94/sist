<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- --%>
	<%
	String []favors = request.getParameterValues("favorFood");
	if(favors!=null&&favors.length>0){
		for(String favor:favors){
	%>		
			<h2>과일명:<%=favor%></h2>
		<%}%>
	<%}%>
</body>
</html>