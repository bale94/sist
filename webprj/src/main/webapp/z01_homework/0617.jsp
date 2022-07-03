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
[1단계:개념] 1. css, js, img의 절대 경로와 상대 경로를 설정하는 방법을 기본 예제를 통해 설명하세요.
절대경로의 기준경로인 path를 정의하여 해당파일의 위치를 바탕화면부터 직접 찾는게 절대경로설정이고 현재위치에서 해당파일의 위치를 찾아가는게
상대경로설정이다.
<%String path = request.getContextPath();%> 로 path값을 설정한다.

[1단계:개념] 2. a link 태그의 속성에 대하여, 설명하되 iframe과 연동처리를 위한 처리를 기본예제로 기술하세요.
a link태그는 다른페이지나 사이트의 경로로 이동시키는 태그인데
이때 iframe연동처리를 통해 정해진 틀안에서 내용을 불러올 수 있다.
<li><a href="img01.jpg" target="frame01">img</a></li>로 태그를 만들고
<div>
	<iframe name="frame01" width="100%" height="100%"></iframe>
</div>
div안에서 iframe을 통해 불러와서 볼 수 있다.

[1단계:개념] 3. json 객체의 속성과 메서드에 대하여 기술하세요.
자바스크립트의 기본제공되는 내장객체 중 하나이다.
자바스크립트 객체를 json문자열로 변환할때 사용하는 JSON.stringify() 메소드와
JSON 문자열을 자바스크립트 객체로 바꿀때 사용하는 JSON.parse() 메소드가있다.

[1단계:확인] 4. [jsp] 4개 중 단일 선택하는 객관식 퀴즈 문제를 form요소 객체와 함께 만들어, 
      정답여부를 다음 페이지에서 출력하세요.--%>
<form style="text-align:center; font-size:20;" action="0617_rev.jsp" method="post">
	<h2>문제: 2 + 1 = ?</h2>
	<input type="radio" name="answer" value="1">1<br>
	<input type="radio" name="answer" value="2">2<br>
	<input type="radio" name="answer" value="3">3<br>
	<input type="radio" name="answer" value="4">4<br>
	<input type="submit" value="제출"><br>
</form>
<%--
<body>
<%
String answer = request.getParameter("answer");
String ans="";
if(answer.equals("3")){
	ans="정답입니다";	
}else{
	ans="오답입니다 정답은 3입니다";
}
%>
<h2 style="text-align:center; color:blue;"><%=ans%></h2>
</body>
--%>
<%--[1단계:확인] 5. [jsp] 1~99임의의 수를 생성하는 덧셈문제 10문제를 출력하고 각 문제당 답을
      입력시, 정답인 수와 점수(0~100)을 출력하세요.
      1  [@@] + [@@] = [   ]
      2  [@@] + [@@] = [   ]
      3  [@@] + [@@] = [   ]
         ..
      10 [@@] + [@@] = [   ]
              [확인]
--%>
<br><br>
<form method="post">
<table border>
	<tr>
		<th>no</th>
		<th>문제</th>
	</tr>
	<%for(int cnt=1;cnt<=10;cnt++){ %>
	<tr><th><%=cnt%></th>
		<%
		int rNum01 = (int)(Math.random()*99+1);
		int rNum02 = (int)(Math.random()*99+1);
		%>
		<td>
			<input type="text" name="num01" size="1" value="<%=rNum01%>"/>+
			<input type="text" name="num02" size="1" value="<%=rNum02%>"/>=
			<input type="text" name="innum" size="1" value="0"/>
		</td></tr>
	<%}%>
	<tr><td colspan="2" style="text-align:center;">
		<input type="submit">
		</td></tr>

</table>
</form>
<%
	int tot=0;	//전체점수
	String []num01SArr = request.getParameterValues("num01");
	String []num02SArr = request.getParameterValues("num02");
	String []innumSArr = request.getParameterValues("innum");
	if( num01SArr != null && num01SArr.length>0 ){	// 초기 문제화면과 구분
		for(int idx=0;idx<num01SArr.length;idx++){	// 반복문 처리
			String num01S = num01SArr[idx];	//각각의 데이터를 문자열값으로 가져오기
			String num02S = num02SArr[idx];
			String innumS = innumSArr[idx];
			int num01 = 0; if(num01S!=null) num01 = Integer.parseInt(num01S);	// 형변환처리
			int num02 = 0; if(num02S!=null) num02 = Integer.parseInt(num02S);
			int innum = 0; if(innumS!=null) innum = Integer.parseInt(innumS);
			int corNum = num01+num02;
			if(corNum==innum){
				tot+=10;
			}
		}
%>
		<h2>총점:<%=tot%></h2>
<%}%>
</body>
</html>