<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
    %>
<%
request.setCharacterEncoding("utf-8");

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
String price = "3000";

%>
<h2>음식명:<%=name %></h2>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="dname">@@@</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table >
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>