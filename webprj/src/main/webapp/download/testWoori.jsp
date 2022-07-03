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
	height: 800px;
}

footer {
	background: #e1e1e1;
	height: 70px;
}

h1 {
	padding: 0.7rem;
	
	height: 30px;
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
  padding-bottom: 8px;
  padding-left: 30px;
}
.box1{
text-align: center;
	background-color : white;
	text-color : DodgerBlue;
	width: 20%;
  padding-top: 31px;
  padding-right: 30px;
  padding-bottom: 8px;
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
  padding-bottom: 9px;
  padding-left: 30px;
		
}
a:visited{
	text-color : DodgerBlue;
	
}
.container {
  width: 13rem;
  height: 8rem;
  overflow: hidden;
  position: relative;
  
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


</style>

</head>
<body>
 

<img class="container"src="woorilogo.png"> 
	<header>
		
		<nav class="clearfix">
		<h1>
		<span class="box1">
		<a href="#">조회</a></span>
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
	<div class="gray"> 개인 > 조회 > 전계좌조회</div>
	
	<main>
	
	<br>
	
	<h2 class="mainfont">전계좌조회</h2>
	
	<img src="woriadd.png" >
	
	<br><br>
	

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

	<form method="post">
		회원번호:<input type="text" name="memberNum" value="<%=memberNum%>" /><br>
		계좌번호:<input type="text" name="accountNum" value="<%=accountNum%>" /><br>
		<input type="submit" value="검색" /><br>
	</form>
	<br>
	<br>
	<h3>입출금</h3>

	<table border="1px" class="table1">
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


		<%
		for (Select e : wd.getWori(memberNum, accountNum)) {
		%>
		
		<tr>
			<td><%=e.getMemberNum()%></td>
			<td><%=e.getAname()%></td>
			<td><%=e.getLastex()%></td>
			<td><%=e.getFirstex()%></td>
			<td><%=e.getInputM()%></td>
			<td><%=e.getOutputM()%></td>
			<td><%=e.getLatM()%></td>
			<td><%=e.getAccountNum()%></td>

		</tr>

		<%
		}
		%>

	</table>
</main>
<footer>하단</footer>
</body>
</html>