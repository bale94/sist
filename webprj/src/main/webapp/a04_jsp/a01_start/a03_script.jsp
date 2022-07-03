<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# 스크립트의 요소 3가지
1. scriptlet : 스크립트조각 <% %>
	자바의 프로그래밍 코드를 넣는 부분(main method라고 생각할수있다)
2. expression : 표현 <%=%>
3. declare : 선언 <%! %>
--%>
<%--
# scriptlet 연습예제
1. 반복문 처리
2. 조건문 처리
3. 반복문과 조건문 혼합처리
ps) 화면단(html코드)에서 java코드의 로직을 어떻게 처리하고 구분하느냐의 문제
--%>
<%-- 반복문 1단계
1. 코드내용 반복처리
	1) 반복될 태그를 기준으로 앞뒤에 for/while구문이 들어갈 내용을 <% %>블럭으로 시작과 끝을 처리해준다 
	2) 반복할 변수를 중간에 출력 : <%=%>를 활용한다
--%>
<%for(int cnt=1;cnt<=5;cnt++){ %>
<h2><%=cnt%>) 안녕하세요</h2>
<%} %>
<%--
반복문 2단계
1. 테이블형에 데이터를 출력하기
	1) 테이블의 기본형식 만들기
	2) 반복할 범위를 확인 : tr, td
	3) for문을 통해서 처리할 데이터와 함께 expression으로 나타내기
--%>
<%
	String titles[]={"사원번호", "사원명", "직책명", "급여", "부서번호"};
%>
<%--
	for(String title:titles){	==> 자바 scriptlet
		title					==> expression
	}							==> 자바 scriptlet
--%>
<table border>
	<%--
	td로 7780 홍길동 사원 3500 10이 출력되게 문자열 배열로 선언하고 반복문을 통해 출력
	--%>
	<tr>
		<%for(String title:titles){%>
		<th><%=title%></th>
		<%}%>
	</tr>
	<%
	String emps[]={"7780","홍길동","사원","3500","10"};
	ArrayList list = new ArrayList();
	list.add(7780);	// <Object> Integer autoBox(기본==>Wrapper)
	list.add("홍길동");	//Object i = new Integer();
	list.add("사원");		// Integer num = 7780; -> autoboxing
	list.add(3500);
	list.add(10);
	%>
	<tr>
		<%for(String emp:emps){ %>
		<td><%=emp%></td>
		<%} %>
	</tr>
	<tr>
		<%for(Object o:list){ %> <%-- Wrapper, String은 상위 Object로 할당하더라도 --%>
		<td><%=o%></td>			 <%-- 형변환없이 출력이 가능하다. --%>
		<%} %>
	</tr>

</table>
<%--
# 조건문 처리
1. 조건문에 활용할 데이터 선언
2. 조건문 형식 설정
	if(조건){
	
	}
	if(조건){
	
	}else{
	
	}
	
3. scriptlet 코드부분과 expression 구분하기
	<%
	if(조건문){
	%>
		<%=조건에 출력할 내용%>
	<%
	}
	%>
--%>
<%-- 나이가 18세 이상 성인, 그 외는 미성년 표기
1. 조건문 처리
if(age>=18){

}else{

}
2. 처리에 따라 표시될 화면 구현
3. 변수를 선언하고 조건문 처리를 scriptlet에 선언하여 처리한다
--%>
	<%
	int age=22;
	%>
	<%if(age>=18){ %>
	<h2>성인입니다</h2>
	<%}else{ %>
	<h2>미성년입니다</h2>
	<%} %>
<%--
ex) 점수에 따라 평점으로 A~F까지 <h1>선택적으로 출력되게하세요
int score=50;
char grade;
if(score>=90){

}else if(){

}else if(){

}else if(){

}else if(){

}else{

}
--%>
	<%
	int score = 70;
	%>
	<h1><%=score%>점이므로</h1>
	<%if(score>90){%>
	<h1>A등급입니다</h1>
	<%}else if(score>80){%>
	<h1>B등급입니다</h1>
	<%}else if(score>70){%>
	<h1>C등급입니다</h1>
	<%}else if(score>60){%>
	<h1>D등급입니다</h1>
	<%}else if(score>50){%>
	<h1>E등급입니다</h1>
	<%}else{%>
	<h1>F등급입니다</h1>
	<%}%>
<%--
# 조건문과 반복문 혼합예제
1. 배열로 점수를 표시하고, 점수에 따라 합격불합ㅂ격, 배경색상 파랑/빨강표기
	1) java 기본코드선언
		int []ptArry = {70,80,90,60,85};
		for(int pt:ptArry){
			if(pt>=80){
				합격	blue
			}else{
				불합격 red
			}
		}
		
	2) 기본출력화면구현
	3) <%%>,<%=%> 표기
	4) 기본코드 scriptlet에 추가
--%>
	<%
	int []ptArry = {70,80,90,60,85};
	%>
	<%for(int pt:ptArry){ %>
		<%if(pt>=80){ %>
			<h2 style="background-color:blue; color:white;"><%=pt%>: 합격</h2>
		<%}else{ %>
			<h2 style="background-color:red; color:grey;"><%=pt%>: 불합격</h2>
		<%} %>
	<%} %>
<%--
	ex) 회원권한을 문자열로 관리자/일반사용자/방문객으로 나누어서 회원5명의 권한을 배열로 선언하고
		권한에 따라 배경색상을 다르게하세요 (글자색상 관리자:파랑색, 일반사용자:녹색, 방문객:오렌지색)
	String []authArry = {"관리자","일반사용자","방문객"};
	for(String auth:authArry){
		if(auth.equals("관리자")){
		
		}else if(auth.equals("일반사용자")){
		
		}else{
		
		}
	}
--%>
<table border>
	<%
	String []authArry = {"관리자","일반사용자","방문객","일반사용자","관리자"};
	%>
	<tr><th>권한</th></tr>
		<%for(String auth:authArry){ %>
			<tr>
			<%if(auth.equals("관리자")){ %>
				<td style="color: blue;">관리자</td>
			</tr>
			<tr>
			<%}else if(auth.equals("일반사용자")){ %>
				<td style="color: green;">일반사용자</td>
			</tr>
			<tr>
			<%}else{ %>
				<td style="color: orange;">방문객</td>
			<%} %>
			</tr>
		<%} %>
</table>
<table border>
	<tr><th>no</th><th>권한</th></tr>
	<%
	for(int idx=0;idx<5;idx++){
		String auth=authArry[idx];
		String color="";
		if(auth.equals("관리자")){
			color="blue";
		}else if(auth.equals("일반사용자")){
			color="green";
		}else{
			color="orange";
		}
	%>
	<tr><td><%=idx+1%></td><td style="color:<%=color%>"><%=auth%></td></tr>
	<%}%>
</table>
<%--
	<tr><th></th></tr>
	<tr><td></td></tr> 이런식으로짜놓고 내용을 넣는것도 좋다
--%>

	
</body>
</html>