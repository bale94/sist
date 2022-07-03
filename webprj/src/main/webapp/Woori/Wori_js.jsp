<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="Wori.*"
    %>
    <%-- 저는 webprj/src/main/java/Wori폴더에 다 들어있어서 import 주소가 이렇습니다 --%>
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
String req = request.getParameter("");

%>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="id">아이디</label>
    </div>
    <div class="col-75">
      <input type="text" id="id" name="id" placeholder="아이디입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="PW">비밀번호</label>
    </div>
    <div class="col-75">
      <input type="password" id="PW" name="PW" placeholder="비밀번호입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table >
   <tr><th>아이디</th><th></th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>