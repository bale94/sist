<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    isErrorPage="true"
    %>
    
<%
	// isErrorPage: 에러가 발생할 때 나타날 페이지
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
<script type="text/javascript">
	window.onload=function(){
		//document.querySelector("h3").innerText="";
	}
</script>

</head>
<%--

--%>
<%


%>
<body>
	<h2 align="center">에러처리 페이지</h2>
	<h3 align="center">에러의 내용:<%=exception.getMessage() %></h3>

</body>
</html>