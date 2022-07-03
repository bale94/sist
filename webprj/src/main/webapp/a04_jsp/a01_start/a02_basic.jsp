<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
# jsp페이지의 구성요소
1. 디렉티브(directive)
2. 스크립트(jsp에서 자바코드) : scriptlet(<% %>),
	expression(<%= %>), declaration(<%! %>)
3. 표현언어(expression language)
4. 기본 객체(implicit object)
	request, response, session
5. 정적인 데이터
6. 표준액션태그
7. 커스텀 태그(custom tag)와 표준 태그 라이브러리(jstl)

# directive
1. jsp페이지에 대한 설정 정보를 지정
2. 디렉티브 구문
	<%@ 디렉티브명 속성1="속성1값" 속성2="속성2값" %>
3. 사용되는 디렉티브명
	1) page : jsp 페이지에 대한 정보를 지정
		문서의 타입, 출력버퍼의 크기, 에러페이지 등 정보 지정
	2) taglib : 사용할 태그 라이브러리를 지정
	3) include : 다른 문서를 포함
4. page 디렉티브
	1) jsp가 생성할 문서의 타입, 사용할 클래스, 버퍼여부, 세션여부
	2) 작성예
		<%@ page contentType="text/html;charset=utf-8"%>
		<%@ page import="java.util.Date"%>
	3) 주요속성
		contentType : jsp가 생성할 문서의 타입을 지정
		import : jsp페이지에서 사용할 자바 클래스를 지정
		session : jsp페이지가 세션을 사용할 지의 여부를 지정
		info : jsp페이지에 대한 설명을 입력한다
		errorPage : 에러가 발생할 때 보여줄 페이지를 지정
		ieErrorPage : 에러 페이지인지 여부를 지정
5. 스크립트 요소
	1) 요청을 처리하는데 필요한 코드를 실행
	2) 동적으로 응답 결과를 생성하기 위해 사용
	3) 스크립트의 요소 세가지
		- 스크립트릿(scriptlet) <% %>
		- 표현식(expression) <%= %>
		- 선언부(declaration) <%! %>
--%>
<%--
# 스크립트릿
1. 자바코드를 실행할 때 사용되는 코드블럭
--%>
<%
	String name = "홍길동";
	int age = 25;
	String loc = "서울 방배동";
%>
<%
	String pname = "초콜렛";
	int price = 2500;
	int cnt;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>이름 <%=name %></h2>	<%-- <%-변수%> 주로 화면에 출력 expression --%>
	<h2>나이 <%=age %></h2>
	<h2>사는곳 <%=loc %></h2>
	<%
	for(cnt=1;cnt<=10;cnt++){
	%>
		<h3>반복할 내용<%=cnt %>번째 출력</h3>
	<%
	}
	%>
	<%--
	ex) 물건명 가격 갯수 선언과 할당하고
	h3화면으로 java로 선언된 내용을 출력하고 반복문으로 해당 가격으로 1~10까지 구매한가격 출력
	--%>
	<h3>물건명 <%=pname %></h3>
	<h3>가격 <%=price %></h3>
	<h3>갯수 <%=cnt %></h3>
	<%
	for(int i=1;i<=10;i++){
	%>
		<h3>구매한가격<%=price*i %></h3>
	<%
	}
	%>
	<table width="30%" border>
		<%for(cnt=1;cnt<=9;cnt++){%>
			<%if(cnt%3==1){%>	<%-- 1,4,7에서만 <tr> --%>
			<tr>
			<%}%>
			<td><%=cnt%></td>
			<%
			if(cnt%3==0){	// 3,6,9일때 </tr>
			%>
			</tr>
			<%
			}
			%>
		<%} %>
	</table>
	
	
</body>
</html>