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
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>

</head>
<body>

<%

%>
<h2>deptBean 정보 넘겨주기</h2>
<div class="container">
  <form action="a06_deptBean.jsp">
  <div class="row">
    <div class="col-25">
      <label for="deptno">부서번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="deptno" name="deptno" placeholder="부서번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">부서명</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="loc">부서위치</label>
    </div>
    <div class="col-75">
      <input type="text" id="loc" name="loc" placeholder="부서위치입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <input type="submit" value="정보검색">
  </div>
  </form>
</div> 
<jsp:useBean id="dept" class="webprj.z01_vo.Dept"/>
<jsp:setProperty property="*" name="dept"/>
<%-- 요청값과 같은 형식의 property가 있으면 자동으로 할당 
?deptno=10&dname=인사&loc=서울
property="*" 로 선언하면
setDeptno(), setDname(), setLoc()가 자동으로 할당(존재하는것들 전부 할당)
: 요청key의 이름과 할당할 수 있는 type이 일치하면 자동으로 setProperty 메소드를 호출하여 처리하여 저장한다

--%>
<%--
<jsp:setProperty property="deptno" name="dept"/>
<jsp:setProperty property="dname" name="dept"/>
<jsp:setProperty property="loc" name="dept"/> --%>
<%if(dept.getDname()!=null){ %>
<table>
	<tr><th>부서번호</th><td><%=dept.getDeptno() %></td></tr>
	<tr><th>부서명</th><td><%=dept.getDname() %></td></tr>
	<tr><th>부서위치</th><td><%=dept.getLoc() %></td></tr>
</table>
<%} %>
</body>
</html>