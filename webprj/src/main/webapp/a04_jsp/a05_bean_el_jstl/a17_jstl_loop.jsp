<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
	/*
	
	 */
	$(document).ready(function(){
		$("h1").text("시작!")
	})
</script>
</head>
<body>

<%--
# forEach
1. 집합이나 컬렉션 데이터 사용
	<c:forEach var="변수" items="아이템">
	</c:forEach>
2. 특정횟수 반복
	<c:forEach var="cnt" begin="시작번호" end="마지막번호" step="증감단위"

--%>
<%--ex) 좋아하는 점심메뉴 3개ㅡㄹ ArrayList로 선언할당하고 jstl로 출력
	select의 option에 넣어서 출력
 --%>
<h1></h1>
구매갯수:<select>
	<c:forEach var="cnt" begin="1" end="10">
		<option>${cnt }</option>
	</c:forEach>
</select><br>
<%-- ex) 1~9까지 숫자를 출력하는 3X3테이블을 forEach처리 --%>


<c:forEach var="cnt" begin="1" end="9">
	<c:if test="${cnt%3!=0 }">
		${cnt }
	</c:if>
	<c:if test="${cnt%3==0}">
		${cnt }<br>
	</c:if>
</c:forEach>
<%
	request.setAttribute("names", new String[]{"홍길동","신길동","마길동"});
	List<Integer> list = new ArrayList<Integer>();
	list.add(1000);
	list.add(1001);
	list.add(1002);
	request.setAttribute("nos", list);
	
	List<String> menus = Arrays.asList(new String[]{"짜장면","짬뽕","우동"});
	request.setAttribute("menus", menus);
%>
<c:forEach var="name" items="${names}">
	<h2>${name}</h2>
</c:forEach>
<c:forEach var="no" items="${nos}">
	<h3>${no }</h3>
</c:forEach>

메뉴선택: <select>
	<c:forEach var="menu" items="${menus}">
		<option>${menu}</option>
	</c:forEach>
</select>

</body>
</html>