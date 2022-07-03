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
		//$("h1").text("시작!")
	})
</script>
</head>
<body>

<%--
# jstl의 프름제어
1. if - 조건이 true일 경우 몸체 내용 실행
	<c:if test="조건">
	</c:if>   jstl의 if에는 else구문이 없다
2. choose when - otherwise
	<c:choose>
		<c:when test="${조건1}">
			처리구문
		</c:when>
		<c:when test="${조건2}">->조건1이외에 조건2~ 같은내용이 이미포함되어있다.(switch-case문 처럼)
			조건 1이외에 조건2일때.. 처리구문
		</c:when>
		<c:when test="${조건3}">
			처리구문
		</c:when>
		<c:otherwise>
			처리구문
		</c:otherwise>
	</c:choose>
--%>
<h1></h1>
<c:if test="${empty param.dname }">
	<h2>초기화면</h2>
</c:if>
<c:if test="${not empty param.dname }">
	<h2>부서명: ${param.dname }</h2>
</c:if>
<%--
점수: [	]
[확인]
70이상: 합격
70미만: 불합격
출력되게처리
--%>

<h3></h3>

<c:choose>
	<c:when test="${param.score>=90 }">
		<h3>A등급</h3>
	</c:when>
	<c:when test="${param.score>=80 }">
		<h3>B등급</h3>
	</c:when>
	<c:when test="${param.score>=70 }">
		<h3>B등급</h3>
	</c:when>
	<c:when test="${param.score>=60 }">
		<h3>D등급</h3>
	</c:when>
	<c:when test="${param.score>=0 }">
		<h3>F등급</h3>
	</c:when>
	<c:otherwise>
		<h3>점수는 0이상 숫자입니다</h3>
	</c:otherwise>
</c:choose>
<%-- ex)나이를 입력받아 성년/미성년 구분 --%>
<c:choose>
	<c:when test="${param.age>=19 }">
		<h3>성인입니다.</h3>
	</c:when>
	<c:when test="${param.age>=0 }">
		<h3>미성년입니다.</h3>
	</c:when>
	<c:otherwise>
		<h3>나이는 0이상의 숫자입니다.</h3>
	</c:otherwise>
</c:choose>


<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="score">점수</label>
    </div>
    <div class="col-75">
      <input type="text" id="score" name="score" placeholder="점수입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="age">나이</label>
    </div>
    <div class="col-75">
      <input type="text" id="age" name="age" placeholder="나이입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="입력">
  </div>
  </form>
</div> 
<c:if test="${param.score>=70 }">
	<h2>합격</h2>
</c:if>
<c:if test="${param.score<70 }">
	<h2>불합격</h2>
</c:if>
</body>
</html>