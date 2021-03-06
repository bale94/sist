<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<style type="text/css">
.intro{
	width: 40%;
	height: 60px;
	margin: 50px 350px 20px 670px; 
	border: 2px solid #233067;
	border-radius: 8px;
}
.intro h2{
	text-align: center;
	padding: 13px;
	margin: 0;
}
.container{
    width: 90%;
    margin: 10px auto;
}
.navi ul{
    border: 2px solid #233067;
    border-radius: 8px;
    float: left;
    margin: 0px 10px 10px 20px;
    padding: 36px 0px 30px 0px;
    width: 20%;
    height: 500px;
    box-sizing: border-box;
}
.navi li a {
  display: block;
  color: #000;
  padding: 10px 16px;
  margin : 0px 30px 60px 30px;
  text-decoration: none;
}
.navi li {
  text-align: center;
  border-bottom: 1px solid #555;
}
.navi li:last-child {
  border-bottom: none;
}
.navi li a.active {
	border-bottom: 5px solid #f1c40f;
 	color: black;
}
.navi li a:hover:not(.active) {
 	border-bottom: 5px solid #f1c40f;
 	color: black;
}
.row{
    border: 2px solid #233067;
    border-radius: 8px;
    float: left;
    margin-left: 20px;
    width: 75%;
    height: 500px;
    box-sizing: border-box;
}
.row h2{
	padding-top: 10px;
	padding-left: 40px;
}
.tb{
	padding: 20px 40px 0px 40px;
}
table {
	border-collapse: collapse;
	width: 1043px;
}
th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}
tr:hover {
	background-color: #f1c40f;
}
#regBtn{
	float : right;
	margin: 20px 40px;
	padding: 5px 28px;
}
</style> 
<meta charset="UTF-8">
<%-- 상단 타이틀 제목 --%>
<title>StarryNight</title>
</head>
<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="intro">
	<h2>관리자님 안녕하세요!</h2>
</div>
<div class="container">
        <div class="navi">
        	<ul>
			  <li><a href="#">회원 상세 정보</a></li>
			  <li><a href="#">상품 정보</a></li>
			  <li><a href="#">매장 정보</a></li>
			  <li><a href="#">이벤트 정보</a></li>
			</ul>
        </div>
        <div class="row">
        	<h2>이벤트 정보 조회</h2>
        	<div class="tb">
        		<table>
        			<tr>
        				<th>No.</th>
        				<th>이벤트명</th>
        				<th>이벤트기간</th>
        				<th>등록일</th>
        				<th>비고</th>
        			</tr>
        			<c:forEach var="ev" items="${eventList}">
	        			<tr>
	        				<td>${ev.event_no}</td>
	        				<td>${ev.event_title}</td>
	        				<td>
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_stDate}"/> ~ 
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_dueDate}"/> 
	        				</td>
	        				<td>
	        					<fmt:formatDate pattern="yyyy-MM-dd" value="${ev.event_regDate}"/>
	        				</td>
	        				<td><button>수정/삭제</button></td>
	        			</tr>
        			</c:forEach>
        		</table>
        	</div>
        	<button id="regBtn">등록</button>
        </div>
    </div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>