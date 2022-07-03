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
[1단계:확인] 1. jsp의 기본 객체 out를 활용하여, 구매물건과 가격 갯수를 입력 받아      
      총비용(가격X개수)에 따라 MVP VIP 보통고객으로 분류하여 출력되게 하세요.
[1단계:개념] 2. session scope의 범위를 4가지를 기본 예제와 함께 기술하세요.
page, request, session, application의 범위가있고, page는 해당페이지 한정, request는 http 요청범위,
session은 해당 session의 범위, 보통 브라우저범위로 브라우저가 모두 꺼지면 사라진다. application은 서버가
켜져있는동안 계속 유지되는 범위이다.

[1단계:확인] 3. id/pass을 입력해서 himan/7777이면 request범위로 설정하여 main.jsp에서
      @@@ 님 로그인이라고 표시하세요.
[1단계:확인] 4. include 지시자를 이용해서 top main 으로 하나의 페이지에 두개의 페이지가 포함되게하세요.
--%>
<script type="text/javascript">
	function goMain(){
		document.querySelector("form").submit();
	}
</script>
<%
	String cntS = request.getParameter("cnt");
	String priceS = request.getParameter("price");
	int price=0;int cnt=0;
	if(priceS!=null && !priceS.trim().equals("") && cntS!=null && !cntS.trim().equals("")) {
		price = Integer.parseInt(priceS);
		cnt = Integer.parseInt(cntS);
		int tot = price*cnt;
		if(tot>100000){
			out.println("<h2>MVP등급입니다</h2>");
		}else if(tot>50000){
			out.println("<h2>VIP등급입니다</h2>");
		}else{
			out.println("<h2>보통고객입니다</h2>");
		}
	}
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	if(id==null) id="";
	if(pass==null) pass="";
	if(id.equals("himan")){
		request.setAttribute("id", "himan");
	}
	if(pass.equals("7777")){
		request.setAttribute("pass", "7777");
	}
	String req = request.getParameter("req");
	if(req!=null && req.equals("Y")){
		request.getRequestDispatcher("main.jsp").forward(request, response);
	}
	/*
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	if(id==null) id="";
	if(pass==null) pass="";
	String loginSuss="";
	if(!id.equals("")){
		if(id.equals("himan")&&pass.equals("7777")){
			request.setAttribute("id01",id);
			request.getRequestDispatcher("main.jsp").forward(request,response);
		}else{
			loginSuss="N";
		}
	}
	<script type="text/javascript">
		var loginSuss = "<%=loginSuss>%";
		if(loginSuss=="N"){
			alert("로그인실패")
		}
	</script>
	*/
%>
<div class="container">
  <form>
  <div class="row">
    <div class="col-25">
      <label for="id">id</label>
    </div>
    <div class="col-75">
      <input type="text" id="id" name="id" placeholder="아이디입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pass">pass</label>
    </div>
    <div class="col-75">
      <input type="text" id="pass" name="pass" placeholder="비밀번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="price">구매물건가격</label>
    </div>
    <div class="col-75">
      <input type="text" id="price" name="price" placeholder="가격입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="cnt">개수</label>
    </div>
    <div class="col-75">
      <input type="text" id="cnt" name="cnt" placeholder="구매물건가격입력.."
         value="">
    </div>
  </div>
  <input type="hidden" name="req" value="Y"/>
  <div class="row">
    <input type="button" value="이동" onclick="goMain()"/>
    <input type="submit" value="출력"/>
  </div>
  </form>
</div> 
<jsp:include page="main.jsp" flush="false"/>
</body>
</html>