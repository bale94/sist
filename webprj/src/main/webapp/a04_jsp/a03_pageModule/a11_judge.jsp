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
a11_judge.jsp?isPass=합격
a11_judge.jsp?isPass=불합격
위 요청값이 합격/불합격에 따라 jsp:forward로 결정되어 처리되도록.
a12_pass.jsp
a13_fail.jsp
--%>
<body>

<%
String name = request.getParameter("name");
String isPass = request.getParameter("isPass");
String goPage="";
if(isPass!=null && !isPass.trim().equals("")){
	request.setAttribute("name",name);
	if(isPass.equals("합격")){
		goPage="a12_pass.jsp";
	}else if(isPass.equals("불합격")){
		goPage = "a13_fail.jsp";
	}
}

%>
<%if(isPass!=null && !isPass.equals("")){%> 
	<jsp:forward page="<%=goPage%>"/>
<%}%>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="name">이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="이름입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">@@@</label>
    </div>
    <div class="col-75">
      <select name="isPass">
      	<option value="합격">합격</option>
      	<option value="불합격">불합격</option>
      </select>
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