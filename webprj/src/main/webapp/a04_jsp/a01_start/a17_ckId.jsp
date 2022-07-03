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
	String id = request.getParameter("id");
	String ans = "";
	if(id!=null){
		if(id.equals("himan")){
			ans="등록된아이디입니다.";
		}else{
			ans = "등록가능합니다.";
		}
	}
%>
<script type="text/javascript">
	var result = "<%=ans%>"
	var sendId = ""
	if(result=="등록된아이디입니다."){
		alert("다시 입력하세요")
		location.href="a16_requestExp.jsp"
	}else{
		sendId = "<%=id%>"
		location.href="a16_requestExp.jsp?id="+sendId
	}
</script>
	<h2><%=ans%></h2>
</body>
</html>