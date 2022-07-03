<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
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
<title>회원가입</title>
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
.box2{
	text-align: center;
	color : white;
	font-size:14px;
	background-color : DodgerBlue;	
	width: 20%;
	padding-top: 31px;
	padding-right: 30px;
	padding-bottom: 6px;
	padding-left: 30px;
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
function ckLog(){
	var id = document.querySelector("[name=id]")
	if(id.value!=null){//id 유효성검사
		if(id.value==""){
			alert("아이디를 입력해주세요")
			id.focus();
			return
		}else{
			if(id.value.length<5 || id.value.length>16){
				alert("id는 5~16자만 입력가능합니다.")
				id.value=""
				id.focus()
				return
			}
		}
	}
	var webPW = document.querySelector("[name=webPW]")
	var ckwebPW = document.querySelector("[name=ckwebPW]")
	if(webPW.value!=null){//비밀번호입력값이 null이 아닐때
		if(webPW.value==""){//비밀번호가 입력되지않았을떄
			alert("비밀번호를 입력해주세요")
			webPW.focus();
			return
		}else{
			if(webPW.value.length<5 || webPW.value.length>12){
				alert("비밀번호는 5~12자리만 입력가능합니다")
				webPW.value=""
				webPW.focus()
				return
			}else{
				if(ckwebPW.value==""){//비밀번호확인이 입력되지않았을때
					alert("비밀번호확인을 입력해주세요")
					ckwebPW.focus()
					return
				}else{
					if(webPW.value!=ckwebPW.value){//비밀번호와 확인이 같지않을때
						alert("비밀번호가 확인되지않습니다")
						alert("비밀번호를 확인해주세요")
						ckwebPW.focus()
						return
					}
				}
			}
		}
	}
	var name = document.querySelector("[name=name]")
	if(name.value!=null){//이름 유효성 검사
		if(name.value==""){
			alert("이름을 입력해주세요")
			name.focus();
			return
		}else{
			if(name.value.length<3 || name.value.length>5){
				alert("이름은 3~5자입니다")
				name.focus();
				return
			}
		}
	}
	var accountNum = document.querySelector("[name=accountNum]")
	if(accountNum.value!=null){//계좌번호입력값이 null이 아닐때
		if(accountNum.value==""){//계좌번호가 공백이라면
			alert("계좌번호를 입력해주세요")
			accountNum.focus();
			return
		}else{//계좌번호가 숫자인지 확인
			if(isNaN(accountNum.value)){
				alert("계좌번호는 숫자만 입력되어야합니다")
				alert("계좌번호를 다시 입력해주세요")
				accountNum.value="";
				accountNum.focus();
				return
			}else{//숫자가 맞다면 13자리인지 확인
				if(accountNum.value.length!=13){
					alert("계좌번호는 13자리여야 합니다")
					accountNum.value="";
					accountNum.focus();
					return//숫자로만 구성되고, 13자리라면 통과
				}
			}
		}
	}
	var phone = document.querySelector("[name=phone]")
	if(phone.value!=null){
		if(phone.value==""){
			alert("휴대폰 번호를 입력해주세요")
			phone.focus();
			return
		}else{
			if(isNaN(phone.value)){
				alert("휴대폰번호는 숫자만 입력되어야합니다")
				alert("휴대폰번호를 다시 입력해주세요")
				phone.value="";
				phone.focus();
				return
			}else{
				if(phone.value.length!=11){
					alert("휴대폰번호는 11자리여야 합니다")
					phone.value="";
					phone.focus();
					return
				}
			}
		}
	}
	var cardNum = document.querySelector("[name=cardNum]")
	if(cardNum.value!=null){
		if(cardNum.value==""){
			alert("카드번호를 입력해주세요")
			cardNum.focus();
			return
		}else{
			if(isNaN(cardNum.value)){
				alert("카드번호는 숫자만 입력되어야합니다")
				alert("카드번호를 다시 입력해주세요")
				cardNum.value="";
				cardNum.focus();
				return
			}else{
				if(cardNum.value.length!=16){
					alert("카드번호는 16자리여야 합니다")
					cardNum.value="";
					cardNum.focus();
					return
				}
			}
		}
	}
	document.querySelector("form").submit();
}

function gomain(){
	location.href="Wori_Login.jsp";
}
function goLog(){
	location.href="Wori_Login.jsp"
}
function goSign(){
	location.href="Wori_Signup.jsp"
}

</script>
</head>
<body>
<img class="container" src="woorilogo1.png">
	<input type="button" id="BtnLogin" value="로그인" onclick="goLog()" style="items-align:right; color:black;"/>
	<input type="button" id="BtnSignup" value="회원가입" onclick="goSign()" style="align:right; color:black;"/>
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
	<h2 class="mainfont" style=margin-left:30px;>회원가입</h2>
	
	
	<br><br>
<%
/*
memberNum, name, PW, accountNum
*/
String id = request.getParameter("id");
String webPW = request.getParameter("webPW");
String name = request.getParameter("name");
String accountNumS = request.getParameter("accountNum");
String phone = request.getParameter("phone");
String cardNum = request.getParameter("cardNum");
if(id==null) id="";
long accountNum = 0;
if(name==null) name="";
if(webPW==null) webPW="";
if(accountNumS!=null) accountNum = Long.parseLong(accountNumS);
if(phone==null) phone="";
if(cardNum==null) cardNum="";

String isSign = "N";
if(id!=null && !id.trim().equals("")){
	//등록할 Emp() 생성
	WoriBANK_DAO dao = new WoriBANK_DAO();
	dao.insertWori(new WoriBANK(id, webPW, name, accountNum, phone, cardNum));
	isSign = "Y";
}

%>
<script type="text/javascript">
	var isSign = "<%=isSign%>";
	if(isSign=="Y"){
		if(confirm("가입성공\n로그인화면으로 이동하시겠습니까?")){
			location.href="Wori_Login.jsp";
		}
	}
</script>
<%-- memberNum을 직접입력하지않고 그냥값만 넘겨주려면?: sequence설정 --%>

	<form style="margin-left:30px;font-weight:bold;">
		<div id="wrap">
			<table>
				<tr>
					<td id="title">아이디</td>
					<td>
						<input type="text" id="id" name="id" value="" placeholder="사용할아이디입력.."/>
					</td>
				</tr>
				<tr>
					<td id="title">비밀번호</td>
					<td>
						<input type="password" id="webPW" name="webPW" value="" placeholder="비밀번호입력.."/>
					</td>
				</tr>
				<tr>
					<td id="title">비밀번호확인</td>
					<td>
						<input type="password" id="ckwebPW" name="ckwebPW" value="" placeholder="비밀번호확인.."/>
					</td>
				</tr>
				<tr>
					<td id="title">이름</td>
					<td>
						<input type="text" id="name" name="name" value="" placeholder="본인이름입력.."/>
					</td>
				</tr>
				<tr>
					<td id="title">계좌번호</td>
					<td>
						<input type="text" id="accountNum" name="accountNum" value="" placeholder="계좌번호입력.."/>
					</td>
				</tr>
				<tr>
					<td id="title">휴대폰번호</td>
					<td>
						<input type="text" id="phone" name="phone" value="" placeholder="휴대폰번호입력.."/>
					</td>
				</tr>
				<tr>
					<td id="title">카드번호</td>
					<td>
						<input type="text" id="cardNum" name="cardNum" value="" placeholder="카드번호입력.."/><br>
					</td>
				</tr>
			</table>
			<input type="button" value="등록" onclick="ckLog()">
			<input type="button" value="취소" onclick="gomain()">
		</div>
	</form>
   
</main>
<div class="footdiv"></div>
<div class="divgrey"></div>
<footer>
<img src="woorigrey1.png" align="left">
<img src="socialgrey.png" align="right">
</footer>
</body>
</html>