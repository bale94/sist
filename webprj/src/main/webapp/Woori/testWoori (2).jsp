<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="webTeamprj.WoriSelect_DAO"
	import="webTeamprj.Select" import="java.util.*"%>
	<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>우리은행 조회 테스트</title>
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

</head>
<body>
 

<img class="container"src="woorilogo1.png"> 
	<header>
		<nav class="clearfix">
		<h1>
		<div class="dropdown">
		<span class="box1">
		<a href="testWoori.jsp" >조회</a></span>
			<div class="dropdown-content">
				<a href="testWoori.jsp">전계좌조회</a>
				<a href="WooriTRA.jsp">거래내역조회</a>
			</div>
		</div>
		<span class="box">
		<a href="#">이체</a></span>
		<span class="box">
		<a href="#">오픈뱅킹</a></span>
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
	<div style=white-space:nowrap; class="gray" >
	<img src="greyhome.png" class="greyhome" style=display:inline;>
	 <div style=vertical-align:super;display:inline;> 개인 > 조회>
	 <div style=font-weight:bold;display:inline;>전계좌조회</div></div></div>
	<main>
	<br>
	<h2 class="mainfont" style=margin-left:30px;>전계좌조회</h2>
	
	<img src="woriadd.png" style=margin-left:30px;>
	<br><br>
	
	<%--              여기까지 상단 네비게이션화면  				--%>
	
	<%
	WoriSelect_DAO wd = new WoriSelect_DAO();
	%>
	<%
	int memberNum = 0;
	String memberNumS = request.getParameter("memberNum");
	if (memberNumS != null) {
		memberNum = Integer.parseInt(memberNumS);
	}
	String accountNum = request.getParameter("accountNum");
	if (accountNum == null)
		accountNum = "";
	%>

	<form method="post" style=margin-left:30px;font-weight:bold;>
		회원번호:<input type="text" name="memberNum" value="<%=memberNum%>" /><br>
		계좌번호:<input type="text" name="accountNum" value="<%=accountNum%>" /><br>
		<input type="submit" value="검색" style=font-weight:bold;/><br>
	</form>
	
	
<%
		for (Select e : wd.getWori(memberNum, accountNum)) {
		%>
		 <h3 style=margin-left:30px;>입출금:</h3><h3 style=color:DodgerBlue;margin-left:30px;><%=e.getLatM() %>원</h3>
	<table border="1px"; class="table1" style=margin-left:30px;>
		<tr>
			<th>회원번호</th>
			<th>계좌명</th>
			<th>최종거래일</th>
			<th>발행일자</th>
			<th>입금액</th>
			<th>출금액</th>
			<th>잔액</th>
			<th>계좌번호</th>
		</tr>

		<tr>
			<td><%=e.getMemberNum()%></td>
			<td><%=e.getAname()%></td>
			<td><%=e.getLastex()%></td>
			<td><%=e.getFirstex()%></td>
			<td><%=e.getInputM()%></td>
			<td><%=e.getOutputM()%></td>
			<td style=color:DodgerBlue;><%=e.getLatM()%></td>
			<td><%=e.getAccountNum()%></td>
	</table>
	<% } %>
	
	<%-- 				이밑은 footer                                --%>
</main>
<div class="footdiv"></div>
<div class="divgrey"></div>
<footer>
<img src="woorigrey1.png" align="left">
<img src="socialgrey.png" align="right">
</footer>
</body>
</html>