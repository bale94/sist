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
ex) 아래와 같은 내용을 처리하는 form하위 요소객체와 전송된 결과값까지 출력하세요
	회원등록
성별 : ()남 ()여
추천인 : 1.[	], 2.[	], 3.[	]
취미 : []독서 []음악 []게임 []등산 []운동
	[등록] ==> 등록 버튼 입력시
성별@@@, 추천인 @@,@@,@@, 취미 @@ @@
--%>
<form>
	<h2>회원등록</h2>
	성별:
	<input type="radio" name="gender" value="남"/>남
	<input type="radio" name="gender" value="여"/>여<br>
	추천인:
	<input type="text" name="name01" size="3"/>
	<input type="text" name="name01" size="3"/>
	<input type="text" name="name01" size="3"/><br>
	취미:
	<input type="checkbox" name="hobby" value="독서"/>독서
	<input type="checkbox" name="hobby" value="음악"/>음악
	<input type="checkbox" name="hobby" value="게임"/>게임
	<input type="checkbox" name="hobby" value="등산"/>등산
	<input type="checkbox" name="hobby" value="운동"/>운동<br>
	
	<input type="submit" value="등록"/><br>
</form>
<%
	String gender = request.getParameter("gender");if(gender==null) gender="";
	String names[] = request.getParameterValues("name01");
	if(names==null) names = new String[]{"","",""};
%>
성별:<%=gender%>, 추천인:<%=names[0] %>,<%=names[1] %>,<%=names[2] %>,
<%
String hobbies[] = request.getParameterValues("hobby");//선택된내용만 출력해준다
%>
취미:<%
if(hobbies!=null){%>
	<%for(String hobby:hobbies){%>
		<%=hobby%>,
	<%}%>
<%}%>




</body>
</html>