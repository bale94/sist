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
<body>

<%--
a04_showBean.jsp?ename=홍길동
--%>
<jsp:useBean id="emp" class="webprj.z01_vo.Emp" scope="session"/>
<jsp:setProperty property="ename" name="emp"/>
<h2>bean으로 요청값 받기</h2>
<table>
   <tr><th>사원명</th><td><%=emp.getEname() %></td></tr>
</table>
</body>
<%--
ex) a05_deptForm.jsp 부서정보 입력
	a06_deptBean.jsp 부서정보를 Bean으로 받아 출력
 --%>
</html>