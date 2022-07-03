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
<title>로그인</title>

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
#header1{
	height: 20px;
	background-color: white;
	padding: 20px;
	text-align: center;
	font-size: 15px;
	color: white;
	display: flex;
	
  	align-items: right;
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
.box2 {
	text-align: center;
	color : white;
	background-color : DodgerBlue;	
	width: 20%;
	font-size:14px;
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
	height: 300px;
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
	padding: 60px;
}
header>ul{
	display: flex;
}

.dropbtn {
  background-color: #ea2129;
  color: white;
  padding: 16px;
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
  min-width: 170px;
  box-shadow: 8px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;
text-decoration: underline;
  margin : 0px;
	width: 170px;
	height: 50px;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {backgrounds-color: #3e8e41;}

</style>

<script type="text/javascript">
	function canLog(){
		var id = document.querySelector("#id")
		if(id.value!=null){
			if(id.value==""){
				alert("아이디를 입력해주세요")
				id.focus();
				return
			}else{
				if(id.value.length<5 || id.value.length>16){
					alert("id는 5~16자만 입력가능합니다")
					id.focus()
					return
				}
			}
		}
		var webPW = document.querySelector("#webPW")
		if(webPW.value!=null){//비밀번호 유효성검사
			if(webPW.value==""){
				alert("비밀번호를 입력해주세요")
				webPW.focus()
				return
			}else{
				if(webPW.value.length<5 || webPW.value.length>12){
					alert("비밀번호는 5~12자리여야합니다")
					webPW.value=""
					webPW.focus()
					return
				}
			}
		}
	}
	function gomain(){
		location.href="Wori_Login.jsp";
	}
	function goSignup(){
		location.href="Wori_Signup.jsp";
	}
</script>
</head>
<body>
<img class="container"src="woorilogo1.png"> 
	<input type="button" value="로그인" onclick="gomain()" style="items-align:right; color:black;"/>
	<input type="button" value="회원가입" onclick="goSignup()" style="align:right; color:black;"/>
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

<main>
	<br>
	<h2 class="mainfont" style=margin-left:30px;>로그인</h2>
	
	
	<br><br>
	
<form action="Wori_LogValid.jsp" method="post" onsubmit="return canLog()">
	<div id="wrap">
		<table >
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" id="id" name="id" value="" placeholder="아이디입력.."/>
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td>
					<input type="password" id="webPW" name="webPW" value="" placeholder="비밀번호입력.."/>
				</td>
			</tr>
		</table>
		<br><br>
		<input type="submit" value="확인">
		<input type="button" value="취소" onclick="gomain()">
	</div>
</form>
<%
	String logPass = request.getParameter("logPass");
	
	if(logPass!=null && logPass.equals("0")){
		out.println("");
	}else if(logPass!=null && logPass.equals("-1")){
		out.println("");
	}
%>



</main>
<div class="footdiv"></div>
<div class="divgrey"></div>
<footer>
<img src="woorigrey1.png" align="left">
<img src="socialgrey.png" align="right">
</footer>
</body>

</html>