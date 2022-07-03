<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
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
		$("h1").text("시작!")
	})
</script>
</head>
<%--

--%>
<body>
<h1></h1>
<div class="container">
	<c:set var="pname" value="사과"/>
	<c:set var="price" value="1200"/>
	<c:set var="cnt" value="5"/>
	<h2>물건명:${pname }</h2>
	<h2>가격:${price }</h2>
	<h2>갯수:${cnt }</h2>
	<h2>총계:${price*cnt }</h2>
  <form >
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
    <input type="submit" value="요청값">
  </div>
  </form>
</div> 
</body>
</html>