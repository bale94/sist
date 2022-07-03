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
<script type="text/javascript">

</script>
</head>
<%--

--%>
<body>

<%
String req = request.getParameter("");

%>

<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="mart">구매할 마트명</label>
    </div>
    <div class="col-75">
      <input type="text" id="mart" name="mart" placeholder="마트명입력.."
         value="">
    </div>
  </div>
<table>
	<tr><th>물건명</th><th>갯수</th></tr>
	<%for(int cnt=1;cnt<=3;cnt++){ %>
	<tr><td><input type="text" name="prods"></td>
		<td><input type="text" name="cnt"></td></tr>
	<%} %>
</table>

  <div class="row">
    <input type="submit" value="구매">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>구매할 마트명:</th><td>${param.mart}</td></tr>
   <tr><th>물건명</th><th>갯수</th></tr>
   <tr><td>${paramValues.prods[0]}</td><td>${paramValues.cnt[0]}</td></tr>
   <tr><td>${paramValues.prods[1]}</td><td>${paramValues.cnt[1]}</td></tr>
   <tr><td>${paramValues.prods[2]}</td><td>${paramValues.cnt[2]}</td></tr>
</table>
</body>
</html>