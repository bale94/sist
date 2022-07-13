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
<style>
*{
	margin: 0;
	padding:0;
}

/* 화면 전체 렙 */
.wrapper{
	width: 1900px;	
}

/* content 랩 */
.wrap{
	width : 800px;
	margin: auto;
}
/* 페이지 제목 */
.subjecet{
	width: 100%;
    height: 120px;
    background-color: #8EC0E4;
}
.subjecet span{
	margin-left: 31px;
    font-size: 80px;
    font-weight: 900;
    color: white;
}

/* 아이디 영역 */
.id_wrap{
	width: 100%;
    margin-top: 20px;
}
.id_name{
	font-size: 25px;
    font-weight: bold;
}
.id_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.id_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

/* 비밀번호 영역 */
.pw_wrap{
	width: 100%;
    margin-top: 20px;
}
.pw_name{
	font-size: 25px;
    font-weight: bold;
}
.pw_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.pw_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

/* 비밀번호 확인 영역 */
.pwck_wrap{
	width: 100%;
    margin-top: 20px;
}
.pwck_name{
	font-size: 25px;
    font-weight: bold;
}
.pwck_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.pwck_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

/* 이름 영역 */
.user_wrap{
	width: 100%;
    margin-top: 20px;
}
.user_name{
	font-size: 25px;
    font-weight: bold;
}
.user_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.user_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

/* 메일 영역 */
.mail_wrap{
	width: 100%;
    margin-top: 20px;
}
.mail_name{
	font-size: 25px;
    font-weight: bold;
}
.mail_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.mail_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}
.mail_check_wrap{
	margin-top: 20px;	
}
.mail_check_input_box{
	border: 1px solid black;
    height: 31px;
    padding: 10px 14px;
    width: 61%;
    float: left;
}
.mail_check_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}
.mail_check_button{
    border: 1px solid black;
    height: 51px;
    width: 30%;
    float: right;
    line-height: 50px;
    text-align: center;
    font-size: 30px;
    font-weight: 900;
    background-color: #ececf7;
    cursor: pointer;
}

/* 주소 영역 */
.address_wrap{
	width: 100%;
    margin-top: 20px;
}
.address_name{
	font-size: 25px;
    font-weight: bold;
}
.address_input_1_box{
	border: 1px solid black;
    height: 31px;
    padding: 10px 14px;
    width: 61%;
    float: left;	
}
.address_input_1{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;	
}
.address_button{
    border: 1px solid black;
    height: 51px;
    width: 30%;
    float: right;
    line-height: 50px;
    text-align: center;
    font-size: 30px;
    font-weight: 900;
    background-color: #ececf7;
    cursor: pointer;	
}
.address_input_2_wrap{
	margin-top: 20px;
}
.address_input_2_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.address_input_2{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

.address_input_3_wrap{
	margin-top: 20px;
}
.address_input_3_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	
}
.address_input_3{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}

/* 가입하기 버튼 */
.join_button_wrap{
	margin-top: 40px;
	text-align: center;
}
.join_button{
	width: 100%;
    height: 80px;
    background-color: #6AAFE6;
    font-size: 40px;
    font-weight: 900;
    color: white;
}

/* float 속성 해제 */
.clearfix{
	clear: both;
}
/* 중복아이디 존재하지 않는경우 */
.id_input_re_1{
	color : green;
	display : none;
}
/* 중복아이디 존재하는 경우 */
.id_input_re_2{
	color : red;
	display : none;
}
</style>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
</script>
</head>

<body>

<div class="wrapper">
	<form id="join_form" method="post">
	<div class="wrap">
		<div class="subject">
			<span>회원가입</span>
		</div>
		<div class="email_wrap">
			<div class="email_name">이메일</div>
			<div class="email_input_box">
				<input class="email_input" name="email">
			</div>
			<span class="email_input_re_1">사용 가능한 이메일입니다.</span>
			<span class="email_input_re_2">이메일이 이미 존재합니다.</span>
		</div>
		<div class="pw_wrap">
			<div class="pw_name">비밀번호</div>
			<div class="pw_input_box">
				<input class="pw_input" name="pw">
			</div>
		</div>
		<div class="pwck_wrap">
			<div class="pwck_name">비밀번호 확인</div>
			<div class="pwck_input_box">
				<input class="pwck_input" name="pwck">
			</div>
		</div>
		<div class="user_wrap">
			<div class="user_name">이름</div>
			<div class="user_input_box">
				<input class="user_input" name="user">
			</div>
		</div>
		<div class="address_wrap">
			<div class="address_name">주소</div>
			<div class="address_input_box">
				<input class="address_input" name="address">
			</div>
		</div>
		<div class="join_button_wrap">
			<input type="button" class="join_button" value="가입">
		</div>
	</div>
	</form>
</div>

<script>

$(document).ready(funtion(){
	$(".join_button").click(function(){
		$("#join_form").attr("action", "/member/join");
		$("#join_form").submit();
	});
});

$('.email_input').on("propertychange change keyup paste input", function(){
	//console.log("keyup 테스트");
	var email = $('.email_input').val();
	var data = {email:email}	// 컨트롤에 넘길 data이름:입력되는값
	
	$.ajax({
		type: "post",
		url: "/member/memberEmailCk",
		data: data,
		success: function(result){
			//console.log("성공여부체크:"+result); 1이면 중복, 0이면 중복X
			if(result != 'fail'){
				$('.email_input_re_1').css("display","inline-block");
				$('.email_input_re_2').css("display", "none");
			}else{
				$('.email_input_re_1').css("display","none");
				$('.email_input_re_2').css("display", "inline-block");
			}
		}
	});
	
});

</script>


</body>
</html>








