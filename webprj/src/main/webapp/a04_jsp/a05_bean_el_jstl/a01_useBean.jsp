<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    %>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=path %>/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>

</head>
<%--
# 자바빈
1. 웹 프로그래밍에서 데이터의 표현을 목적으로 사용한다
2. 일반적인 구성(vo구성과 동일)
	- 값을 저장하기 위한 필드
	- 값을 수정하기 위한 setter
	- 값을 읽기위한 getter
3. 프로퍼티
	1) 자바빈에 저장되어있는 값을 표현
	2) 메소드 이름을 사용해서 프로퍼티의 이름을 결정
	3) 규칙 : 프로퍼티 이름이 "프로퍼티명"일 경우
		setter : public void set프로퍼티명(타입)
		getter : public 타입 get프로퍼티명()
		boolean : getter에 get대신 is사용가능
		배열지정가능 : public void setNames(String [])
	4) 읽기/쓰기
		읽기 전용 : get 또는 is메소드만 존재하는 프로퍼티
		읽기/쓰기 : get/set 또는 is/set메소드가 존재하는 프로퍼티
4. 기본 형식
	1) jsp에서 자바빈 객체를 생성할 때 사용한다
	2) <jsp:useBean id="빈이름" class="자바패키지.클래스명" scope="범위" />
		id : jsp페이지에서 자바빈 객체에 접근할 때 사용할 이름
		class : 패키지 이름을 포함한 자바빈클래스의 완전한 이름
		scope : 자바빈 객체가 저장될 영역을 지정 page, request, session, application 중 하나를
				값으로 갖는다.
--%>
<body>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept" scope="session" />
<jsp:useBean id="emp" class="webprj.z01_vo.Emp" scope="session"/>
<%-- Dept dept = new Dept()와 똑같다, 대신 scope부분이 붙는느낌 --%>
<%-- 값을저장하지 않더라도 session범위로 저장된 데이터가 나타난다. --%>
<%
	dept.setDeptno(50);
	dept.setDname("회계");
	dept.setLoc("서울 강남");
	
	emp.setEname("조길동");
	emp.setEmpno(1020);
	emp.setDeptno(60);
	
%>
<%-- Emp VO클래스를 이용해서 사원명, 사원번호, 부서번호를 설정하여 출력 --%>
<h2>useBean</h2>
<table >
   <tr><th>부서번호</th><td><%=dept.getDeptno() %></td></tr>
   <tr><th>부서명</th><td><%=dept.getDname() %></td></tr>
   <tr><th>부서위치</th><td><%=dept.getLoc() %></td></tr>
</table>
<table >
   <tr><th>사원명</th><td><%=emp.getEname() %></td></tr>
   <tr><th>사원번호</th><td><%=emp.getEmpno() %></td></tr>
   <tr><th>부서번호</th><td><%=emp.getDeptno() %></td></tr>
</table>


<a href="a02_useBean.jsp">bean 확인</a>

</body>
</html>