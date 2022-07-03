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
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	//null에대한 check
	//유효성 check
	String ckValid="";
	if(id!=null && pass!=null){
		if(id.equals("himan")&&pass.equals("7777")){
			ckValid="로그인 성공";
		}else{
			ckValid="로그인 실패";
		}
	}
%>
<script type="text/javascript">
	//js넘기기
	var result= "<%=ckValid%>"
	alert(result)
	if(result=="로그인 실패"){
		alert("다시 로그인 하세요")
		location.href="0616.jsp"	//기존에 로그인 페이지로 이동(a링크와 동일한 역할)
	}
</script>
	<h2><%=id%>님 <%=ckValid%></h2>
</body>
</html>