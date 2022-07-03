<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# 웹 요청값 처리 및 js연습 예제
1. 회원 id 등록된 여부 check
	회원 id [	] [유효 check]
	유효 check버튼을 클릭시
	js단 유효처리 - 공백인지여부, 8~16자인지 여부 check해서 alert표기
	jsp단 유효처리 - 공백이 아니면 다음페이지(a17_ckId.jsp)에 넘겨
		himan이면 등록된아이디입니다 그외는 등록가능합니다 표시처리
--%>
<script type="text/javascript">
	function idCheck(){
		var written = ""
		var id = document.querySelector("[name=id]")
		if(id.value==""){
			alert("id가 입력되지않았습니다")
			id.focus()
			return
		}else{
			if(id.value.length<5 || id.value.length>16){
				alert("id는 5~16자만 입력가능합니다")
				id.focus()
				return
			}
		}
		document.querySelector("form").submit()
	}
	function ckKeyCode(){
		alert(event.keyCode)	//키보드마다 코드값
		if(event.keyCode==13){	// 13번이 enter키의 값
			ckId();
		}
	}
</script>
<form action="a17_ckId.jsp" method="post" style="text-align:center;">
	<h2>id등록여부</h2>
	회원id<input type="text" name="id" onkeyup="ckKeyCode()">
	<input type="button" value="유효 check" onclick="idCheck()">
</form>
</body>
</html>