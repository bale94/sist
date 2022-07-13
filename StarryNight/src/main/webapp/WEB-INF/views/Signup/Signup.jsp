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

/* 페이지 로고 */
.logo_wrap{
	text-align: center;	
	margin: 150px 0;	
}
.logo_wrap>span{
	font-size : 50px;
	font-weight: 900;
}


/* 로그인 area */
.id_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	display: block;
	width : 80%;
	margin : auto;	
}
.id_input{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}


.pw_wrap{
	margin-top: 40px;
}
.pw_input_box{
	border: 1px solid black;
	height:31px;
	padding: 10px 14px;	
	display: block;
	width : 80%;
	margin : auto;	
}
.pw_iput{
	width:100%;
	height:100%;
	border:none;
	font-size:28px;
}


.login_button_wrap{
	margin-top: 40px;
	text-align: center;
}
.login_button{
	width: 84%;
    height: 80px;
    background-color: #6AAFE6;
    font-size: 40px;
    font-weight: 900;
    color: white;
    margin : auto;
}

/* float 속성 해제 */
.clearfix{
	clear: both;
}
</style>
</head>

<body>

<div class="wrapper">
	<div class="wrap">
		<div class="logo_wrap">
			<span>Starry Night</span>
		</div>
		<div class="login_wrap">
			<div class="id_wrap">
				<div class="id_input_box">
					<input class="id_input">
				</div>
			</div>
			<div class="pw_wrap">
				<div class="pw_input box">
					<input class="pw_input">
				</div>
			</div>
			<div class="login_button_wrap">
				<input type="button" class="login_button" value="로그인">
			</div>
		</div>
	</div>
</div>

</body>
</html>








