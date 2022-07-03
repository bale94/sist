<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
	/*
	
	 */
	$(document).ready(function(){
		$("h1").text("사원정보")
	})
</script>
</head>
<body>

<%--

--%>
<h1></h1>

<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="ename">사원명</label>
    </div>
    <div class="col-75">
      <input type="text" id="ename" name="ename" placeholder="사원명입력.."
         value="${param.ename}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="job">직책명</label>
    </div>
    <div class="col-75">
      <input type="text" id="job" name="job" placeholder="직책명입력.."
         value="${param.job}">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="입력">
  </div>
  </form>
</div> 
<table ><%-- mvc는 jsp에서 실행하지않는다!(controller에서 실행!) --%>
	<col width="30%">
   <tr><th>사원번호</th><th>사원명</th><th>직책</th><th>급여</th></tr>
   <c:forEach var="emp" items="${emplist }">
	   <tr><td>${emp.empno }</td><td>${emp.ename }</td><td>${emp.job }</td><td>${emp.sal }</td></tr>
   </c:forEach>
</table>
</body>
</html>