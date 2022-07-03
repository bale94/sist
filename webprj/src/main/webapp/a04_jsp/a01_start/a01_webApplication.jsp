<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
jsp 주석문
# 웹어플리케이션 구성요소
0. 아래의 순서로 처리를 했다가 다시 최종적으로 웹브라우저에 받는다
1. 웹브라우저 : url에 주소와 경로를 요청하면 최종적으로 웹 서버에서 넘겨운 html내용을 출력한다
2. 웹서버
3. 어플리케이션서버
	jsp ==> java ==> class
		class가 어플리케이션 서버에 의해서 DB가 처리되어 최종 html을 만들어 웹브라우저에 절달한다
	java를 컴파인해서 html 파일을 만든다
4. 데이터베이스
# url
1. uniform resource locator
2. 구성
	프로토콜 ://호스트:포트/경로명/파일명.확장자?쿼리문자열
	ex) http://naver.com:8080/search?sch=홍길동
	1) 프로토콜 : 통신규약
	2) 호스트 : 특정서버 ==> ip로 변환 ps) localhost - 현재서버
	3) 포트 : port
	4) 경로 : 특정 절대경로로부터 하위 경로
	5) 쿼리문자열 : 해당 페이지에 전달할 데이터
# 서블릿과 jsp
1. 자바를 만든 sun에서 정한 웹 개발 표준
	1) 서블릿(servlet) : 실행코드방식의 특징
	2) JSP(JavaServer Pages) : 스크립트코드방식의 특징
2. JSP특징
	1) 자바 기반 스크립트언어
		- 자바의 기능을 그대로 사용 가능
	2) html에 대한 클라이언트의 요청 처리/응답
	3) 웹 어플리케이션에서 결과화면을 생성할 때 주로 사용
# 웹 컨테이너
1. 웹 어플리케이션을 실행할 수 있는 컨테이너
2. jsp와 서블릿을 실행하줌
	웹 컨테이너
		- jsp
		- 서블릿
# jsp를 사용하는 이유
1. 자바언어에 기반하기 때문에 플랫폼에 독립적
	- 리눅스, 윈도우 등 운영체제에 상관없이 동작
2. 자바언어에 대한 깊은 이해 없이도 초기 학습 가능
	- 스크립트 언어는 상대적으로 자바언어보다 단순
3. 스프링이나 스트러츠와 같은 프레임워크와 연동
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>구구단</h2>
	<table border>
		<%for(int cnt=0;cnt<=9;cnt++){%>
		<tr>
			<%for(int grade=2;grade<=9;grade++){%>
				<%if(cnt==0){%>
					<th><%=grade%>단</th>
				<%}else{ %>
					<td><%=grade%>X<%=cnt%>=<%=grade*cnt%></td>
				<%} %>
			<%}%>
		</tr>
		<%}%>
	</table>

</body>
	<script type="text/javascript">
		function gugu(){
			var grade = document.querySelector("input[name=grade]").value//input을 생략할 수 있다.
			var addHTML = ""
			for(grade=2;grade<=9;grade++){
				for(cnt=1;cnt<=9;cnt++){
					console.log(grade+" * "+cnt+" = "+(grade*cnt))
					addHTML += "<tr><td>"+grade+" * "+cnt+" = "+(grade*cnt)+"</td></tr>"
				}
			}
			console.log(addHTML)
			document.querySelector("table").innerHTML = addHTML
		}
	
	</script>
</html>