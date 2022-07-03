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
String answer = request.getParameter("answer");
String ans="";
if(answer.equals("3")){
	ans="정답입니다";	
}else{
	ans="오답입니다 정답은 3입니다";
}
%>
<h2 style="text-align:center; color:blue;"><%=ans%></h2>
</body>
</html>