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
[1단계:개념] 1. [js]문자열을 숫자형으로 바꾸는 함수들을 기술하고 차이점을 예시를 통해서 설명하세요
[1단계:확인] 2. [js]물건의 가격[   ], 갯수[  ] [총계] 화면에서 총계를 클릭시,
         가격과 갯수 입력 여부와 숫자형 데이터에 대한 유효성 check를 처리하고, 총계를 출력하세요.
         1) 화면구성(html)
         2) 이벤트 선언, 이벤트 핸들러 함수
         3) DOM을 통해서 각 구성요소 접근
         4) 조건/반복문 처리, 필요로하는 내장함수 처리
         --%>
    <script type="text/javascript">
    	function calcu(){
    		var priceObj = document.querySelector("[name=price]")
    		var cntObj = document.querySelector("[name=cnt]")
    		var price,cnt;price=cnt=0;
    		// 1. 입력여부check
    		if(priceObj.value == ""){
    			alert("가격을 입력하세요")
    			return;	// 프로세스 중단
    		}else{
    			console.log("# 숫자형 데이터 여부 확인 #")
    			console.log(isNaN(priceObj.value))
    			if(isNaN(priceObj.value)){
    				alert("가격은 숫자형으로 입력")
    				priceObj.value="";	//입력된 내용 삭제
   					priceObj.focus;	//포커싱 처리
    				return
    			}else{
    				//숫자형으로 형변환해서 처리
    				price=Number(priceObj.value);
    			}
    		}
    		if(cntObj.value == ""){
    			alert("개수를 입력하세요")
    			return;
    		}else{
    			console.log("# 숫자형 데이터 여부 확인 #")
    			console.log(isNaN(cntObj.value))
    			if(isNaN(cntObj.value)){
    				alert("개수는 숫자형으로 입력")
    				cntObj.value="";	//입력된 내용 삭제
    				cntObj.focus;	//포커싱 처리
    				return
    			}else{
    				//숫자형으로 형변환해서 처리
    				cnt=Number(cntObj.value);
    			}
    		}
    		var tot = price*cnt
    		document.querySelector("p").innerText="총계:"+tot+"원"
    		
    		// js는 + 연산자이외는 자동 형변환이 된다
    		/*
    		var priceVal = Number(priceObj.value)
    		var cntVal = Number(cntObj.value)
    		console.log("가격:"+priceVal)
    		console.log("갯수:"+cntVal)
    		*/
    	}
    </script>
	물건가격 : <input type="text" name="price" size="2">,
	갯수 : <input type="text" name="cnt" size="2">,
	<input type="button" value="총계" onclick="calcu()">
	<p></p>
<%--
[1단계:확인] 3. [js] textarea에 글을 입력하고 [등록]을 클릭시, 글자수가 지정한 글자수(15)초과이면
      @@/15 글자수와 함께 빨간색으로 변경, 유효한 글자수이면(1~15) 파랑색으로 표기처리하세요.
      --%>
      <script type="text/javascript">
      	function ckText(){
      		var ctObj = document.querySelector("[name=content]")
      		var txtLen = ctObj.value.length
      		console.log(txtLen)
      		var shCntObj = document.querySelector("#shTxtCnt")//id값을 가져올수도있다
      		shCntObj.innerText = txtLen+"/15"
      		if(txtLen>=1 && txtLen<=15){
      			shCntObj.style.color="blue"
      		}else{
      			shCntObj.style.color="red"
      		}
      	}
      </script>
      글 등록하세요 <br>
      <textarea name="content" cols="10" rows="5" onkeyup="ckText()"></textarea><br>
      <input type="button" value="등록">
      <span id="shTxtCnt">0/15</span>
      <%--
[1단계:확인] 4. [js/jsp] 로그인 화면을 만들고, id/pass에 대한 공백유효성을 js로 처리,
      jsp로 다음페이지에서 받아 himan/7777일 때만 로그인성공 표시, 그외는 로그인 실패 표기하세요.
      1) 기본화면구성(태그)
      2) js
      3) java처리
--%>
<script type="text/javascript">
	function login(){
		var idObj = document.querySelector("[name=id]")
		var passObj = document.querySelector("[name=pass]")
		console.log(idObj.value)
		console.log(passObj.value)
		// trim()
		if(idObj.value.trim()==""){
			alert("아이디를 입력해주세요")
			idObj.focus()
			return
		}
		if(passObj.value.trim()==""){
			alert("비밀번호를 입력해주세요")
			passObj.value=""
			passObj.focus()
			return
		}
		// 조건이나 여러가지 상황에 따라 action을 설정할 수 있다
		document.querySelector("form").action="0616_rev.jsp"
		// js로 type="submit"로 선언하고 클릭한것과 동일한 효과
		document.querySelector("form").submit()
		
	}
</script>
<h2>로그인</h2>
<form action="0616_rev.jsp" method="post">
	id:<input type="text" name="id"/><br>
	pass:<input type="password" name="pass"/><br>
	<input type="button" value="로그인" onclick="login()"/><br>
</form>
</body>
</html>