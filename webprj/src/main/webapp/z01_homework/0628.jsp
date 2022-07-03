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
	input{width:10%;}
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
<body>

<%--
[1단계:개념] 1. jstl 환경 설정 순서를 기술하세요
taglib을 파일 상위에 설정해주고 path를 설정해준다. jquery파일을 스크립트로 읽어와서 설정한다.

[1단계:개념] 2. jstl을 통해 객체의 설정 속성과 일반 변수의 설정 속성을 기술하세요
c:set으로 객체를 프로퍼티화할수있다. c:choose로 case문효과를 낼수있고 c:if로 조건문을 쓸수있다
일반변수는 var로 설정할수있다

[1단계:개념] 3. jstl의 조건문과 반복문의 기본형식을 예제를 통해 기술하세요

[1단계:확인] 4. 임의의 구구단 문제가 나오고 정답을 오답 여부를 jstl에 의해 출력하게 하세요
      [ @@  ] X [ @@  ] = [   ] [확인]
[1단계:확인] 5. 회원정보리스트 dao기능 메서드를 추가하고, jstl을 통해서 검색 출력하세요.
	1) dao
		db(table==>데이터입력) ==> sql ==> vo ==> dao기능메소드 추가
		SELECT *
		FROM member21
		WHERE 1=1
		AND name LIKE '%'||''||'%'
		AND auth = '';
		-- id, pass, name, point, auth
		
		
	2) 화면구성
	3) 요청값 처리 및 조회
--%>
<!--
<h1></h1>
<c:forEach var="cnt" begin="1" end="9">
	<c:if test="${cnt%3!=0 }">
		${cnt }
	</c:if>
	<c:if test="${cnt%3==0}">
		${cnt }<br>
	</c:if>
</c:forEach> <%--반복문과 조건문을 모두사용 --%>
<div class="container">
  <form >
	<div class="row">
    <div class="col-25">
      <label for="grade">문제</label>
    </div>
	<%--<c:set var="grade" value="<%=(int)(Math.random()*8+2) %>"/>
	<c:set var="num" value="<%=(int)(Math.random()*9+1) %>"/>--%>
    <div class="col-75">
      <input type="text" name="grade" size="1" value="${grade }">X
      <input type="text" name="num" size="1" value="${num }">=
      <input type="text" name="innum" size="1" value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="정답확인">
  </div>
  </form>
</div> 
	<script>
		var grade = "${param.grade}"
		var num = "${param.num}"
		var innum = "${param.innum}"
		if(grade!=""){//초기화면이 아닌경우
			var corNum = grade*num;	//js의 경우 +연산자 이외는 자동형변환처리된다
			if(corNum == innum){
				alert("정답:"+grade+"X"+num+"="+innum)
			}else{
				alert("오답("+grade+"X"+num+"="+innum+")\n 정답은"+corNum)
			}
		}
	</script>
-->
<jsp:useBean id="sch" class="webprj.z01_vo.Member"/>
<jsp:setProperty property="*" name="sch"/>
<jsp:useBean id="dao" class="webprj.dao.A04_PreDAO"/>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="name">이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="이름입력.."
         value="${sch.name }">
    </div>
   </div>
	<div class="row">
     <div class="col-75">
      <select name="auth">
      	<option value="">전체</option>
      	<option>일반사용자</option>
      	<option>관리자</option>
      	<option>방문객</option>
      </select>
      <script type="text/javascript">
      	$("[name=auth]").val("${sch.auth}");
      	// $("선택자").val("값 할당")
      </script>
    </div>
  </div>
  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table>
	<tr><th>no</th><th>아이디</th><th>이름</th><th>point</th><th>권한</th></tr>
	<c:forEach var="mem" items="${dao.getMemList1(sch) }" varStatus="sts">
		<tr><td>${sts.count }</td><td>${mem.id }</td><td>${mem.name }</td><td>${mem.point }</td><td>${mem.auth }</td></tr>
	</c:forEach>
</table>


</body>
</html>