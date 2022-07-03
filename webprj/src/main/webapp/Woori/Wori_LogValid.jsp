<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Wori.*"
    %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인확인</title>

</head>

<body>
<%
String id = request.getParameter("id");
if(id == null) id = "";

String webPW = request.getParameter("webPW");
if(webPW==null) webPW="";

WoriBANK_DAO wori = WoriBANK_DAO.getInstance();
int ck = wori.getWoripw(id,webPW);
String logPass="";
if(ck==1){
	session.setAttribute("id",id);
	session.setAttribute("webPW",webPW);
	logPass = "Wori_transfer.jsp"; //수정
}else if(ck==0){
	logPass = "Wori_Login.jsp?logPass=0";
}else{
	logPass = "Wori_Login.jsp?logPass = -1";
}
response.sendRedirect(logPass);

%>
</body>
</html>