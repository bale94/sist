<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청값에 대한 encoding처리
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름:<%=request.getParameter("name") %><br>
	나이:<%=request.getParameter("age") %>

	<%
	String pname = request.getParameter("pname");
	if(pname==null) pname="";
	String pprice = request.getParameter("price");
	int price=0;
	if(pprice!=null) price=Integer.parseInt(pprice);
	String pcnt = request.getParameter("cnt");
	int cnt=0;
	if(pcnt!=null) cnt=Integer.parseInt(pcnt);
	int tot = price*cnt;
	%>
	<h3>물건 <%=pname%> <%=price%>원에 <%=cnt%>개 구매하여 총 비용이 <%=tot%>원입니다</h3>
	
</body>
</html>