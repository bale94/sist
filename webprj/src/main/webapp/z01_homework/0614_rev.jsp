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
	String name = request.getParameter("name");
	String krscore = request.getParameter("krscore");
	String enscore = request.getParameter("enscore");
	String mascore = request.getParameter("mascore");
	int ks = 0;int es = 0; int ms = 0;
	if(name==null) name=" ";	// 문자열은 null일떄는 공백처리
	if(krscore!=null) ks = Integer.parseInt(krscore);	// 요청값이 있을때만 형변환처리
	if(enscore!=null) es = Integer.parseInt(enscore);	// 요청값이 있을때만 형변환처리
	if(mascore!=null) ms = Integer.parseInt(mascore);	// 요청값이 있을때만 형변환처리
	int tot = ks+es+ms;
	int avg = tot/3;
	%>
<form>
<table width="30%" border>
	<tr><th>이름:</th><td><input type="text" name="name" size="5" value="<%=name %>"/></td></tr>
	<tr><th>국어점수:</th><td><input type="text" name="krscore" size="5" value="<%=krscore %>"/></td></tr>
	<tr><th>영어점수:</th><td><input type="text" name="enscore" size="5" value="<%=enscore %>"/></td></tr>
	<tr><th>수학점수:</th><td><input type="text" name="mascore" size="5" value="<%=mascore %>"/></td></tr>
	<tr><th colspan="2"><input type="submit" value="합산/평균 확인"/></th></tr>
	<%if(!name.equals("")){ %>
	<tr><th>총점수:</th><td><%=tot%></td></tr>
	<tr><th>평균점수:</th><td><%=avg%></td></tr>
	<%} %>
</table>
</form>
</body>
</html>