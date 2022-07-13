<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.util.*"   
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="hpath" value="${pageContext.request.contextPath}"/>

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
	width:1700px;
	height: 200px;
	background-color:#233067;
	padding: 20px;
	text-align: center;
	font-size: 15px;
	color: white;
	display: flex;
	justify-content: space-between;
 	 align-items: center;
}

<%-- 메인 --%>

main {
    width:1700px;
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
  color: #233067;
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

.divgrey{background:#999999; height:1px;}

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
font-size:large;
  height: 100%;
  width: 300px;
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
  margin: 0;
  padding: 21px;
  text-decoration: none;
  display: inline-block;
  width: 100%;
  font-size: 17px;
  text-align: center;
  font-weight: 300;

}

/* Change color on hover */
.sidenav a:hover {
  border-left: 5px solid #233067;
  box-shadow: 0 4px 4px -4px lightgray;
}

/* Style the content */
.content {
  margin-left: 200px;
  padding-left: 20px;
}

/* 클릭 시 사이드바가 보이는 아이콘, 사이드바 x아이콘 설정 */
.sideicon{
 margin-right: 20px;
 cursor: pointer;
}

/* 사이드바의 x아이콘, 장바구니아이콘, 프로필아이콘을 담는 div */
.sidediv{
	display: inline-block;
	width: 300px;
	height: 230px;	
}

/* 사이드바의 x아이콘 설정 */
.sidediv .sideicon{
	float: right;
	margin-top: 25px;
	margin-right: 25px;
	
}

.sideProCart{
	margin-top: 110px;
	text-align: center;
	cursor: pointer;
}

.profileicon{
	margin-right: 20px;
}

.carticon{
	margin-left: 20px;
}

.search_div{
	display: inline-block;
	position: relative;
}

.searchicon{
	top: 10px;
	left: 455px;
	width: 30px;
	position: absolute;	
	cursor: pointer;
}


@font-face {
    font-family: 'ParkYongJun';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_220508@1.0/ParkYongJun.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>

<body>
<%-- 

--%>
<!-- <a href="#"><img src="LOGO.png" style=width:250px;height:150px;/></a> -->
<header style=font-family:ParkYongJun;>
<a href="#"><img src="${hpath}\TeamProjectCSS\LOGO.png" style=width:250px;height:150px;/></a>
<ul align="center">
<li>
<div class="dropdown">
<a href="#" style=margin-left:100px;>날씨별</a>
<div class="dropdown-content">
<a href="#">날씨별상세</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">주류별</a>
<div class="dropdown-content">
<a href="#">주류별상세</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">이벤트</a>
<div class="dropdown-content">
<a href="#">이벤트</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>
<div class="dropdown">
<a href="#">픽업/매장장소</a>
<div class="dropdown-content">
<a href="#">매장장소</a>
<a href="#">드롭다운2</a>
<a href="#">드롭다운3</a>
</div>
</div>

</li>
</ul>
<div class="search_div">


<input type="text" class="search" style=border-radius:50px;width:300px;height:50px;font-size:18px;margin-left:200px; onclick="search()">
<img class="searchicon" src="${hpath}\TeamProjectCSS\Icon\SearchIcon.png">
</div>
<img class="sideicon" src="${hpath}\TeamProjectCSS\Icon\SideIcon.png" style=width:60px; onclick="sidenav()"/>
</header>
<main>
<div class="divgrey"></div>
<!-- <div class="footdiv" style=text-align:center;><img src="blue.gif" style=width:1700px;height:700px;/></div> -->

<div class="sidenav" style=font-family:ParkYongJun;>
  <!-- 사이드바의 x아이콘, 장바구니아이콘, 프로필아이콘을 담는 div --> 
  <div class="sidediv">
  <img class="sideicon" src="${hpath}\TeamProjectCSS\Icon\SideIconX.png" style=width:60px; onclick="sidenav2()"/>
  <!-- 사이드바의 장바구니아이콘, 프로필아이콘을 담는 div --> 
  <div class="sideProCart" >
  <img class="procarticon profileicon" src="${hpath}\TeamProjectCSS\Icon\ProfileIcon.png" style=width:65px; onclick="/"/>
  <img class="procarticon carticon" src="${hpath}\TeamProjectCSS\Icon\CartIcon.png" style=width:65px; onclick="/"/>
  </div>
  </div>
  <a href="#" style=color:#233067;font-size:25px>주류별</a>
  <a href="#" style=color:#233067;font-size:25px>날씨별</a>
  <a href="#" style=color:#233067;font-size:25px>이벤트</a>
  <a href="#" style=color:#233067;font-size:25px>매장위치/픽업</a>
</div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script type="text/javascript">
	$(".sidenav").hide();
	function sidenav(){
		$(".sidenav").show();
		}
	function sidenav2(){
		$(".sidenav").hide();
	}
		
</script>
</html>