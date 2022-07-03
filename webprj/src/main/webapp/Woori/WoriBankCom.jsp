<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    import = "webprj.project4.*"
    %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path%>/a00_com/WoriBankCom.css" rel="stylesheet">

<script>

</script>
</head>
<body>
	<h1><img src="wori.PNG">개인  <a href="html_images.asp" target="_blank" class = "DodgerBlue-box"style = "background-color : DodgerBlue">
	   로그인</a>
	</h1>
	
<div class="clearfix">
  <div class="box">
	<a href="<%=path%>/z01_empCRUD/a01_empSchList.jsp" target="_blank">조회</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">이체</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">오픈 뱅킹</a>
  </div>
</div>
<div class="clearfix">
  <div class="box">
	<a href="html_images.asp" target="_blank">공과금</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">예금 신탁</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">펀드</a>
  </div>
</div>
<div class="clearfix">
  <div class="box">
	<a href="html_images.asp" target="_blank">보험 대출</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">외환 골드</a>
  </div>
  <div class="box">
	<a href="html_images.asp" target="_blank">뱅킹관리</a>
  </div>
</div>
<%
String req = request.getParameter("");
%>
<div class="container">
	<form>
	<div class="row">
		<div class="col-25">
			<label for= "ename">@@@</label>
		</div>
		<div class="col-25">
			<input type = "text" id="ename" name="ename"
			placeholder = "사원명 입력" value=""/>
		</div>
	</div>
	<div class="row">
		<input type="submit" value = "검색">
	</div>
	</form>
</div>
<table>
	<tr><th>안녕</th><th>우리</th><th>은행</th></tr>
	<tr><td>안녕1</td><td>우리1</td><td>은행1</td></tr>
	<tr><td>안녕2</td><td>우리1</td><td>은행1</td></tr>
	<tr><td>안녕3</td><td>우리1</td><td>은행1</td></tr>
	<tr><td>안녕4</td><td>우리1</td><td>은행1</td></tr>
	<tr><td>안녕5</td><td>우리1</td><td>은행1</td></tr>
	<tr><td>안녕6</td><td>우리1</td><td>은행1</td></tr>
</table>


</body>
</html>