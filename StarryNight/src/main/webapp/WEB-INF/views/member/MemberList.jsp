<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2 data-toggle="modal" data-target="#exampleModalCenter">회원정보</h2>

</div>
<div class="container">
   <form id="frm01" class="form-inline"  method="post">
     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
       <input class="form-control mr-sm-2" placeholder="회원이메일" />
       <button class="btn btn-info" type="submit">Search</button>
    </nav>
   </form>
   <table class="table table-hover table-striped">
      <col width="20%">
      <col width="10%">
      <col width="20%">
      <col width="20%">
      <col width="30%">
    <thead>
    
      <tr class="table-success text-center">
        <th>이메일</th>
        <th>회원명</th>
        <th>생년월일</th>
        <th>휴대폰번호</th>
        <th>주소</th>
      </tr>
    </thead>   
    <tbody>
    	<c:forEach var="member" items="${schMember }">
			<tr><td>${member.email}</td><td>${member.name}</td>
			<td>${member.birthDate}</td><td>${member.contact}</td>
			<td>${member.address}</td></tr>
    	</c:forEach>
    </tbody>
   </table>    
    
</div>

</body>
</html>