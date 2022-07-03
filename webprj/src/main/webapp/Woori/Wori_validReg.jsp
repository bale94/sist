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
<title>회원등록 성공</title>
<style>
h2, h3 {
	text-align: center;
}
</style>
</head>
<body>
<%
String id = request.getParameter("id");

WoriBANK wori = new WoriBANK();
if(id!=null && !id.trim().equals("")){
	WoriBANK_DAO dao = new WoriBANK_DAO();
	wori = dao.getWoriDetail(id);
}

%>
	<h2><%=id%></h2>
	<h2 style="color:grey;">등록 완료</h2>
	<h2><%=wori.getName()%>님의 회원가입을 축하합니다!</h2><br><br><br><br>
	<h3>이름:<%=wori.getName()%></h3><br>
	<h3>계좌번호:<%=wori.getAccountNum()%></h3><br><br><br><br>
	<input type="button" value="로그인화면으로 이동"/>
	
</body>
</html>