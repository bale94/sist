<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Wori.*"
    import = "java.sql.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오픈뱅킹</title>
<script type="text/javascript">
	
</script>
</head>
<style>
* {
	box-sizing: border-box;
}
input[type=text],input[type=password], select, textarea {
  width: 25%;
  height: 20%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
  margin: auto;
  margin-left:10px;
  margin-right:10px;
}
#accountNum{
	margin-left:10%;
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
	margin:auto;
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
	height: 100%;
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
.box2{
	text-align: center;
	color : white;
	font-size: 14px;
	background-color : DodgerBlue;	
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

#wrap{
	width:700px;
	height:80px;
	margin-left:auto; 
	margin-right:auto;
	margin-bottom:10px;
	text-align:center;
}
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
<script type="text/javascript">
function goLog(){
	location.href="Wori_Login.jsp"
}
function goSign(){
	location.href="Wori_Signup.jsp"
}
</script>
<body>
<img class="container"src="woorilogo1.png"> 
	<input type="button" id="BtnLogin" value="로그아웃" onclick="goLog()" style="items-align:right; color:black;"/>
	<input type="button" id="BtnSignup" value="회원가입" onclick="goSign()" style="align:right; color:black;"/>
	<header>
		
		<nav class="clearfix">
		<h1>
		<span class="box">
		<a href="#">조회</a></span>
		<span class="box">
		<a href="#">이체</a></span>
		<span class="box1">
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
	<div style=white-space:nowrap; class="gray" >
	<img src="greyhome.png" class="greyhome" style=display:inline;>
	 <div style=vertical-align:super;display:inline;> 개인 > 오픈뱅킹>
	 <div style=font-weight:bold;display:inline;>다른금융 정보조회</div></div></div>
	<main>
	<br>
	<h2 class="mainfont" style=margin-left:30px;>다른금융 정보조회</h2>
	<br><br>
	
	<%--              여기까지 상단 네비게이션화면  				--%>
<script type="text/javascript">
	function doReg(){
		var accountNum = document.querySelector("#accountNum");
		var accountName = document.querySelector("#accountName");
		if(accountName.value == ""){
			alert("계좌이름을 입력하세요");
			accountName.focus();
			return;
		}
		if(accountNum.value == ""){
			alert("계좌번호를 입력하세요");
			accountNum.focus();
			return;
		}else{
			if(accountNum.value.length!=13){
				alert("계좌번호는 13자리여야 합니다")
				accountNum.focus();
				return
			}
		}
		document.querySelector("form").submit();
	}
</script>
<%
	Connection con = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String passwd = "tiger";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection(url, user, passwd);
%>
	
<%
	String bankName = request.getParameter("bankName");
	if(bankName==null) bankName="";
	String accountName = request.getParameter("accountName");
	if(accountName==null) accountName="";
	String accountNumS = request.getParameter("accountNum");
	long accountNum = 0;
	if(accountNumS!=null) accountNum = Long.parseLong(accountNumS);
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from otherBank");
	
	String str1 = "";
	String str2 = "";
	String str3 = "";
%>
	<h3 style="text-align:center; font-size:20px">타금융 계좌정보 등록</h3>
	<form>
	<input type="text" id="accountNum" name="accountNum" value="" placeholder="계좌번호">
	<input type="text" id="accountName" name="accountName" value="" placeholder="계좌명">
	<select name="bankName">
		<option value="신한은행">신한은행</option>
		<option value="국민은행">국민은행</option>
		<option value="농협은행">농협은행</option>
		<option value="기업은행">기업은행</option>
		<option value="카카오뱅크">카카오뱅크</option>
		<option value="하나은행">하나은행</option>
		<option value="부산은행">부산은행</option>
		<option value="대구은행">대구은행</option>
	</select>
	<input type="button" value="등록" onclick="doReg()"/><br>
	</form>
<h3 style="text-align:center;">보유중인 타금융 계좌정보</h3>
<%
	while(rs.next()){
		str1 = rs.getString("accountNum");
		str2 = rs.getString("accountName");
		str3 = rs.getString("bankName");
%>
	<div id="wrap">
		<table border="1px;" class="table1" >
		<tr>
			<th>계좌번호</th>			
			<th>계좌명</th>		
			<th>은행명</th>		
		</tr>
		<tr>
			<td><%out.print(str1);%></td>		
			<td><%out.print(str2);%></td>		
			<td><%out.print(str3);%></td>	
		</tr>
		</table>
	</div>
	<%}%>
	
<%
	rs.close();
	st.close();
	con.close();
%>
<%
if(accountNumS!=null && !accountNumS.trim().equals("")){
	WoriBANK_DAO dao = new WoriBANK_DAO();
	dao.insertOther(new WoriBANK(accountNum, accountName, bankName));
}
%>
	


	
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