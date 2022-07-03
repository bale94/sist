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
<%


%>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept" />
<jsp:setProperty property="*" name="dept"/>

<%if(dept.getDname()!=null){ %>
<table >
   <tr><th>부서번호</th><td><%=dept.getDeptno() %></td></tr>
   <tr><th>부서명</th><td><%=dept.getDname() %></td></tr>
   <tr><th>부서위치</th><td><%=dept.getLoc() %></td></tr>
</table>
<%} %>
</body>
</html>