<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.math.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
[1단계:개념] 1. 특정한 화면에서 스크립트릿과 익스프레션에 대한 자바 처리의 코드 순서를 기본예제로 기술해보세요.
--%>
	<%for(int cnt=1;cnt<=5;cnt++){%> <%-- scriptlet --%>
		<h2><%=cnt%>번째 사탕</h2>	<%-- expression // scriptlet들 사이에 출력이 필요한 부분에 expression이 사용된다. --%>
	<%}%>
<%--
1. 자바코드
2. 웹출력화면 기본구성(html/css)
3. scriptlet, expression 처리 화면에 추가
4. 자바코드를 script와 expression에 삽입
[1단계:확인] 2. 영문으로 배열을 무지개색상을 지정하고, 7가지 h3 코드에 무지개명과 배경색이 출력되게 하세요.--%>
	<%
	String rainbow[] = {"red","orange","yellow","green","blue","darkblue","purple"};
	%>
	<%
	for(int idx=0;idx<7;idx++){
		String rb = rainbow[idx];
		String color="";
		if(rb.equals("red")){
			color="red";
		}else if(rb.equals("orange")){
			color="orange";
		}else if(rb.equals("yellow")){
			color="yellow";
		}else if(rb.equals("green")){
			color="green";
		}else if(rb.equals("blue")){
			color="blue";
		}else if(rb.equals("darkblue")){
			color="darkblue";
		}else{
			color="purple";
		}
	%>
	<h3 style="background-color:<%=color%>; color:white;"><%=rb%></h3>
	<%}%>
<%--
<%
	String[] colors={"red","orange","yellow","green","blue","darkblue","purple"};
%>

	<%for(String color:colors){%>
	<h3 style="background-color:<%=color%>"><%=color%></h3>
	<%}%>

 --%>
<%--
[1단계:확인] 3. 아래와 같이 두팀의 주사위게임(1~6임의) 10회의 결과를 테이블로 출력하세요.
      no  홍팀   백팀  결과
      1    5   6   홍팀승
      2    5   6   홍팀승
      3    5   5   무승부
      ...
      10   5   1   청팀승
--%>
<table border>
	<tr><th>no</th><th>홍팀</th><th>백팀</th><th>결과</th></tr>
	<% 
	for(int idx=1;idx<=10;idx++){
		int dice1 = (int)(Math.random()*6)+1;
		int dice2 = (int)(Math.random()*6)+1;
		String result="";
		if(dice1>dice2){
			result="홍팀승";
		}else if(dice1<dice2){
			result="백팀승";
		}else{
			result="무승부";
		}
	%>
	<tr><td><%=idx%></td><td><%=dice1 %></td><td><%=dice2 %></td><td><%=result%></td></tr>
	<%}%>
</table>
<%--
[1단계:개념] 4. jsp에서 특정페이지에 데이터 전송 형식(요청값)을 기술하세요
	query string
	요청할페이지?key=value&key=value&..의 형식으로 전송된다.--%>

<%--[1단계:확인] 5. 학생명과 국어,영어,수학점수를 전송하고 이름과 점수를 받은 요청값을 처리하세요.
      조건문과 형변환 함수를 이용하여 합산과 평균을 출력하세요.
      1) query string 전송
      	?name=홍길동&krscore=70&enscore=80&mascore=90
      2) 형변환과 합산
--%>
	<a href="0614_rev.jsp?name=홍길동&krscore=70&enscore=80&mascore=90">점수</a>
<%--
<body>
	<%	
	String name = request.getParameter("name");
	String krscore = request.getParameter("krscore");
	String enscore = request.getParameter("enscore");
	String mascore = request.getParameter("mascore");
	%>
	<h2>이름:<%=name %></h2>
	<h2>국어점수:<%=krscore %></h2>
	<h2>영어점수:<%=enscore %></h2>
	<h2>수학점수:<%=mascore %></h2>
	<%
	Integer ks = Integer.valueOf(krscore);
	Integer es = Integer.valueOf(enscore);
	Integer ms = Integer.valueOf(mascore);
	%>
	<h2>총점수:<%=ks+es+ms%></h2>
	<h2>평균점수:<%=(ks+es+ms)/3%></h2>
</body>
--%>
</body>
</html>