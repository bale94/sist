<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    %>
<%
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

</head>
<%--
# Expression Language
1. jsp에서 사용가능한 새로운 스크립트 언어
2. el의 주요기능
	- jsp의 네가지 기본 객체가 제공하는 영역의 속성 사용
	- 집합 객체에 대한 접근 방법 제공
	- 수치 연산, 관계연산, 논리 연산자 제공
	- 자바 클래스 메소드 호출 기능 제공
	- 표현 언어만의 기본 객체 제공
3. 간단한 구분 때문에 표현식 대신 사용
--%>
<body>

<%
	pageContext.setAttribute("num01", 25);
	pageContext.setAttribute("num02", 30);
	request.setAttribute("name", "홍길동");
	/*
	ex) request객체로 물건명 가격 갯수를 변수로 선언하고 데이터를 할당한 후 화면에서 출력
	*/
	request.setAttribute("name", "사과");
	request.setAttribute("price", "1200");
	request.setAttribute("cnt", "5");
	

%>
<h2>el의 활용</h2>
<table >
	<col width="20%">
   <tr><th>num01</th><td>${num01}</td></tr>
   <tr><th>num02</th><td>${num02}</td></tr>
   <tr><th>num01+num02</th><td>${num01+num02}</td></tr>
</table>
<table >
	<col width="20%">
   <tr><th>name</th><td>${name}</td></tr>
   <tr><th>price</th><td>${price}</td></tr>
   <tr><th>cnt</th><td>${cnt}</td></tr>
   <tr><th>총금액</th><td>${price*cnt}</td></tr>
</table>
</body>
</html>