<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<fmt:requestEncoding value="UTF-8"/>    
<!DOCTYPE html>
<html>
<head>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<meta charset="UTF-8">
<%-- 상단 타이틀 제목 --%>
<title>StarryNight</title>

<style>
    
    * {
	box-sizing: border-box;
}
input[type=text],input[type=password], select, textarea {
  width: 10%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=button],input[type=submit] {
  background-color: DodgerBlue;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
 
}

<%--헤더 --%>
header {
	height: 200px;
	background-color:#233067;
	padding: 20px;
	text-align: center;
	font-size: 15px;
	color: white;
	display: flex;
	
  align-items: center;
}

<%-- 메인 --%>

main {
	background: #f2f4f7;
	height:2000px;
}

<%--ul, li 부분은 상단메뉴들 드롭다운 중점으로 맞춰져있습니다 --%>

ul {
  list-style-type: none;
  margin: 10px;
  padding: 0px;
}

li {
  display: inline;
  
} 



a {
color:#f1c40f;
font-size: 30px;
margin-left:30px;
margin-right:30px;
text-decoration: none;
}

.LOGO{
font-size: 50px;
color: orange;
margin-right: 500px;
}

<%-- 여기부터 드롭다운 --%>

.dropbtn {
  background-color: #f1c40f;
  color: white;
  font-size: 10px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
  
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  margin-left:25px;
  min-width: 200px;
  min-height: 0px;
  box-shadow: 8px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  text-decoration: none;
  display: block;
}
dropdown:hover{
color: #f1c40f;
  background-color: #f1c40f;
  text-decoration: underline;
 padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 6px;
  padding-left: 30px;
		
}
.dropdown-content a:hover {background-color: #ddd;
text-decoration: underline;
  margin-left:0px;
  margin-right:0px;
	width: 200px;
	height: 40px;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {backgrounds-color: #3e8e41;}
<%-- 드롭다운 끝 --%>


<%-- 격자선 처리한겁니다 --%>

.divgrey{background:#999999; height:3px;}

.footdiv{ background:#233067; height:700px; }

.container {
  min-width:100;
  min-height:1000;
  overflow: hidden;
  position: relative;
  padding: 15px;
  
}

.container > img {
  position: absolute;
  width: 100%;
  /* height: 100%; */
  top: 50%;
  left: 50%;
 
  transform: translate(-50%, -50%);
}
/* Style the side navigation */
.sidenav {
  height: 100%;
  width: 400px;
  position: fixed;
  z-index: 1;
  top: 0;
  right: 0;
  background-color: white;
  overflow-x: hidden;
}

 {
  box-sizing: border-box;
}
/* Side navigation links */
.sidenav a {
  color: white;
  padding: 16px;
  text-decoration: none;
  display: block;
}

/* Change color on hover */
.sidenav a:hover {
  background-color: #233067;
  color: black;
}

/* Style the content */
.content {
  margin-left: 200px;
  padding-left: 20px;
}


</style>
</head>
<body>
<%-- 

--%>

<header>
<img src="LOGO.png" style=width:250px;height:150px;/>
<ul align="center">
<li>
<div class="dropdown" style=margin-left:600px;>
<a href="#">네비1</a>
<div class="dropdown-content">
<a href="#">드롭다운1</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">네비2</a>
<div class="dropdown-content">
<a href="#">드롭다운1</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">네비3</a>
<div class="dropdown-content">
<a href="#">드롭다운1</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">네비4</a>
<div class="dropdown-content">
<a href="#">드롭다운1</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>

</li>
</ul>

</header>
<main>
<div class="divgrey"></div>
<div class="footdiv" style=text-align:center;><img src="blue.gif" style=width:1700px;height:700px;/></div>

<div class="sidenav">
  <a href="#" style=color:#f1c40f;>주류별</a>
  <a href="#" style=color:#f1c40f;>날씨별</a>
  <a href="#" style=color:#f1c40f;>이벤트</a>
  <a href="#" style=color:#f1c40f;>매장위치/픽업</a>
</div>

</main>
<footer>
<div class="divgrey"></div>
<h2>하단 푸터 부분입니다 .하단 푸터 부분입니다 .하단 푸터 부분입니다 .하단 푸터 부분입니다 .하단 푸터 부분입니다 .</h2>
</footer>
</body>
</html>