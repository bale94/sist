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
<title>main</title>
<style>
* {
	box-sizing: border-box;
}
input[type=text],input[type=password], select, textarea {
  width: 90%;
  padding: 12px 20px;
  display: inline-block;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  margin: auto;
}
input[type=text]:focus{
	background-color: lightblue;
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
  margin: 8px 0;
  cursor: pointer;
}

header {
	height: 70px;
	background-color: DodgerBlue;
	padding: 20px;
	text-align: center;
	font-size: 15px;
	color: white;
	display: flex;
	
  align-items: center;
}

main {
	background: #f2f4f7;
	height: 700px;
}
.divgrey{background:#999999; height:3px;}
.footdiv{ background:#e1e1e1; height:50px; }
footer {
	background: white;
	height: 75px;
}

h1 {
	padding: 0.7rem;
	
	height: 10px;
	width: 100px%;
}
.table1 {
	margin:10px;
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 50%;
  height: 15%;
}
.table2 {
	margin:10px;
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  
}
table{
	margin-left:auto; 
	margin-right:auto;
	border-collapse: collapse;
}
td{
	border-collapse: collapse;
}
 
  th {
    background-color: #D3D3D3;
  }
a:link {
  color: #003e9c; 
  background-color: transparent;
  text-decoration: none;
 
}
.box {
	text-align: center;
	color : white;
	background-color : DodgerBlue;	
	width: 20%;
  padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 6px;
  padding-left: 30px;
}
.box1{
text-align: center;
	background-color : white;
	text-color : DodgerBlue;
	width: 20%;
  padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 6px;
  padding-left: 30px;
  
  
}
.gray {

	text-align: left;
	background-color : #CCCCCC;
	padding-top:5px;
	padding-bottom:5px;
	
	
}
body{
 background-image: url('backlog.png');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
.mainfont{	font-size: xx-large;padding: 0.7rem;}

a:active {
  color: white;
  background-color: DodgerBlue;
  text-decoration: underline;
  
}
a:hover {
  color: DodgerBlue;
  background-color: white;
  text-decoration: underline;
  margin : 0px;
	width: 100px;
	height: 50px;
}
span:hover{
color: DodgerBlue;
  background-color: white;
  text-decoration: underline;
 padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 6px;
  padding-left: 30px;
		
}
a:visited{
	text-color : DodgerBlue;
	
}
.afont{ font-family: Georgia; }
.container {
  width: 15rem;
  height: 5rem;
  overflow: hidden;
  position: relative;
  padding: 15px;
  
}
#wrap{
	width:530px;
	margin-left:auto; 
	margin-right:auto;
	text-align:center;
}

.container > img {
  position: absolute;
  width: 100%;
  /* height: 100%; */
  top: 50%;
  left: 50%;
 
  transform: translate(-50%, -50%);
}

.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
#float1 {float:left; padding-left: 50px;}
#float2 {float:left; padding-top:40px;}

.greyhome{
	margin-top:10px;
	margin-left:60px;
	height: 25px;
	width:25px;
	align: left;
	background-color : #CCCCCC;	
}
div{
	border-radius: 5px;
	background-color: rgb(197, 218, 241);
	padding: 40px;
}
</style>
<script type="text/javascript">
	function goLogin(){
		location.href="Wori_Login.jsp"
	}
	function goSignup(){
		location.href="Wori_Signup.jsp"
	}
</script>
</head>
<body>
<img class="container"src="woorilogo1.png"> 
	<header>
		<nav class="clearfix">
			<h1>
				<span class="box">
				<a href="#">조회</a></span>
				<span class="box">
				<a href="#">이체</a></span>
				<span class="box">
				<a href="Wori_transfer.jsp">오픈뱅킹</a></span>
				<span class="box">
				<a href="#">공과금</a></span>
				<span class="box">
				<a href="#">예금/신탁</a></span>
				<span class="box">
				<a href="#">퇴직연금</a></span>
				<span class="box">
				<a href="#">보험</a></span>
				<span class="box">
				<a href="#">대출</a></span>
				<span class="box">
				<a href="#">외환/골드</a></span>
				<span class="box">
				<a href="#">뱅킹관리</a> </span>
			</h1>
		</nav>
	</header>
	<div style=white-space:nowrap; class="gray" ></div>

	<main>
	<br>
	<h2 class="mainfont" style=margin-left:30px;></h2>
<%


%>

<form >


</form>
<div class="footdiv"></div>
<div class="divgrey"></div>
<footer>
<img src="woorigrey1.png" align="left">
<img src="socialgrey.png" align="right">
</footer>
</body>
</html>