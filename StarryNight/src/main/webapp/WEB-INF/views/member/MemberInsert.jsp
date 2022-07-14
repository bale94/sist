<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<!-- datepicker용 jquery ui css -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>
<!-- datepicker용 jquery 기본 js -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- datepicker용 jquery ui 라이브러리 js -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(function(){
	  $("#birthday").datepicker({
		  dateFormat: 'yy-mm-dd',	// text에 입력되는 날짜형식
		  prevText: '이전 달',	// prev
		  nextText: '다음 달',	// next
		  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		  dayNamesMin: ['일','월','화','수','목','금','토'],
		  changeMonth: true,	//월을 바꿀수있는 select박스 표시
		  changeYear: true,	//년을 바꿀수있는 select박스 표시
		  showMonthAfterYear: true,	//월, 년순의 select박스를 년,월 순으로 바꿔줌
		  yearRange: 'c-100:c'	// 년도 선택select박스를 현재년도에서 이전, 이후로 얼마의 범위를 표시할 것인가
	  });
   });
   function goInsert(){
	   location.href="";
   }
</script>
<style>
 .ui-datepicker{ font-size: 12px; width: 180px; }
 .ui-datepicker select.ui-datepicker-month{ width:50%; font-size: 11px; }
 .ui-datepicker select.ui-datepicker-year{ width:50%; font-size: 11px; }
 .ui-datepicker-calender > tbody td.ui-datepicker-week-end:first-child a { color:#f00; }
 .ui-datepicker-calender > tbody td.ui-datepicker-week-end:last-child a { color:#00f; }
</style>
</head>

<body>
<%@ include file="../../../TeamProjectCSS/header.jsp"%>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">타이틀</h2>

</div>
<div class="container">
	<form id="frm01" class="form"  method="post" action="${path}/.do">
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">이메일*</span>
         	</div>
         	<input name="email" class="form-control" 
            	value="" placeholder="이메일을 입력하세요" />   
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">비밀번호*</span>
         	</div>
         	<input name="pswd" class="form-control" 
            	value="" placeholder="비밀번호를 입력하세요" />    
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">비밀번호확인*</span>
         	</div>
         	<input name="pswdck" class="form-control" 
            	value="" placeholder="비밀번호 확인" />  
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">이름*</span>
         	</div>
         	<input name="name" class="form-control" 
            	value="" placeholder="이름을 입력하세요" />  
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">생년월일*</span>
         	</div>
         	<input type="text" id="birthday"class="form-control" />
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">휴대폰번호*</span>
         	</div>
         	<input name="contact" class="form-control" 
            	value="" placeholder="휴대폰번호를 입력하세요" />  
		</div>  
		<div class="input-group mb-3">
        	<div class="input-group-prepend">
            	<span class="text-center input-group-text">주소</span>
         	</div>
         	<textarea name="address" rows="3" class="form-control" 
         		placeholder="주소를 입력하세요"></textarea>
		</div>
		<div class="text-right">
			<button type="button" onclick="goInsert()">회원등록</button> 
			<button type="button" onclick="goMain()">취소</button> 
		</div>
	</form> 
</div>
<%@ include file="../../../TeamProjectCSS/footer.jsp"%>
</body>
</html>