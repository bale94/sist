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
<script type="text/javascript">
/*
[1단계:개념] 1. 조회리스트 화면에서 사용되는 요청값 처리와 dao단 매개변수 처리 방식에 대하여 핵심 코드를 기술하세요
	<input type="text" id="name" name="name"/>	input으로 값을 요청한다
	String nameS = request.getParameter("#name");
	if(nameS==null) name="";	getParameter로 name을 받아와서 만약null이면 공백처리하는 유효성처리를
							해준다.
							
[1단계:개념] 2. 등록 처리를 위해서 처리하는 순서를 기술하세요.
1)등록할항목을 정하고, 2)입력할 값을 form 하위객체에 지정하고, 3)입력항목들을 js로 처리하여 요청값을 확인한다.
4) 등록처리하고 값을 확인한다.

[1단계:확인] 3. 회원 테이블 member(회원아이디, 패스워드, 회원명, 포인트, 권한)을 만들고, 
              회원등록 화면에서 등록 처리(dao 메서드 추가)하세요.(본인 단계 맞게 진행)
     1단계) 회원등록 화면구성 2단계) 회원등록 유효CHECK, 요청값 전달 3단계) DAO 만들기 4단계) 처리하기 
 
 */
	function insertMem(){
		var idObj = document.querySelector("#id");
		var passObj = document.querySelector("[name=pass]");
		var passCfmObj = document.querySelector("#passCfm");
		var nameObj = document.querySelector("#name");
		var pointObj = document.querySelector("#point");
		//필수입력은 아이디와 패스워드만이므로 유효성체크는 그 두 부분만 해주면된다
		// point에 대해선 숫자형체크
		if(idObj.value.trim()==""){
			alert("아이디를 입력하세요");
			idObj.focus();
			return
		}
		if(passObj.value.trim()==""){
			alert("비밀번호를 입력하세요");
			passObj.focus();
			return
		}
		if(passCfmObj.value!=passObj.value){
			alert("비밀번호와 확인이 동일하지않습니다");
			passObj.value="";
			passCfmObj.value="";
			passObj.focus();
			return
		}
		//isNaN : 숫자형이 아니면 true
		// pointObj.value 공백이면
		// isNaN(pointObj.value)를 통해서 0으로 처리되기에
		// 숫자형 check에 공백check도 포함하여야 한다
		if(pointObj.value.trim()=="" || isNaN(pointObj.value)){
			alert("포인트는 숫자형이어야 합니다");
			pointObj.focus();
			return
		}
		document.querySelector("form").submit();
	}
</script>
<body>

<h2 style="text-align:center;">회원등록</h2>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
String pointS = request.getParameter("point");
String auth = request.getParameter("auth");
//하나의 페이지이지만(물리적)
// 프로그래밍(논리적) 2개의 페이지
// 1번째 페이지 -> 초기에 로딩한 페이지
// 2번째 페이지 -> 데이터를 입력한 후에 로딩된 페이지
if(id==null) id="";
if(pass==null) pass="";
if(name==null) name="";
if(auth==null) auth="";
int point = 0;
if(pointS!=null) point = Integer.parseInt(pointS);
// DAO에 등록 객체로 생성
if(id!=null && !id.trim().equals("")){
	//초기화면이 아닌 데이터가 입력이 있을 때 : 데이터 있어야지 등록처리
	new Member(id,pass,name,point,auth);
	
}
/*
1) db구성
	create table member21(
			id varchar2(50),
			pass varchar2(50),
			name varchar2(50),
			point number,
			auth varchar2(50)
			);
	INSERT INTO member21 values('goodMan', '8888', '마길동', 2000, '일반사용자');
2) VO 만들기
	class Member{
		private String id;
		private String pass;
		private String name;
		private int point;
		private String auth;
		// 생성자 선언
		
	}
3) 입력화면 만들기..
4) js 유효성 처리
	- 필수항목 : 아이디/패스워드
	- 패스워드와 패스워드 확인 동일한지
	- 포인트는 숫자형
	<input type="submit"> ==> <input type="button" onclick="insertMem()">
	function insertMem(){
		var idObj = document.querySelector("#id");
		var passObj = document.querySelector("[name=pass]");
		var passCfmObj = document.querySelector("#passCfm");
		var nameObj = document.querySelector("#name");
		var pointObj = document.querySelector("#point");
		//필수입력은 아이디와 패스워드만이므로 유효성체크는 그 두 부분만 해주면된다
		// point에 대해선 숫자형체크
		if(idObj.value.trim()==""){
			alert("아이디를 입력하세요");
			idObj.focus();
			return
		}
		if(passObj.value.trim()==""){
			alert("비밀번호를 입력하세요");
			passObj.focus();
			return
		}
		if(passCfmObj.value!=passObj.value){
			alert("비밀번호와 확인이 동일하지않습니다");
			passObj.value="";
			passCfmObj.value="";
			passObj.focus();
			return
		}
		//isNaN : 숫자형이 아니면 true
		if(isNaN(pointObj.value)){
			alert("포인트는 숫자형이어야 합니다");
			pointObj.focus();
			return
		}
		document.querySelector("form").submit();
	}
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String name = request.getParameter("name");
	String pointS = request.getParameter("point");
	String auth = request.getParameter("auth");
	//하나의 페이지이지만(물리적)
	// 프로그래밍(논리적) 2개의 페이지
	// 1번째 페이지 -> 초기에 로딩한 페이지
	// 2번째 페이지 -> 데이터를 입력한 후에 로딩된 페이지
	if(id==null) id="";
	if(pass==null) pass="";
	if(name==null) name="";
	if(auth==null) auth="";
	int point = 0;
	if(pointS!=null) point = Integer.parseInt(pointS);
	// DAO에 등록 객체로 생성
	if(id!=null && !id.trim().equals("")){
		//초기화면이 아닌 데이터가 입력이 있을 때 : 데이터 있어야지 등록처리
		new Member(id,pass,name,point,auth);
		
	}
	
*/
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
      <label for="pass">비밀번호</label>
    </div>
    <div class="col-75">
      <input type="password" id="pass" name="pass" placeholder="비밀번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="pass">비밀번호확인</label>
    </div>
    <div class="col-75">
      <input type="password" id="passCfm" name="passCfm" placeholder="비밀번호확인.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="uname">회원명</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="회원명입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="point">포인트</label>
    </div>
    <div class="col-75">
      <input type="text" id="point" name="point" placeholder="포인트입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="auth">권한</label>
    </div>
    <div class="col-75">
      <input type="text" id="auth" name="auth" placeholder="권한입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="button" value="등록" onclick="insertMem()">
  </div>
  </form>
</div> 
<%
A04_PreDAO dao = new A04_PreDAO();
%>
<table>
	<tr><th>사원번호</th><th>사원명</th><th>직책</th><th>급여</th><th>부서번호</th></tr>
	<%for(Member m:dao.getMemList(new Member(id))){%>
	<tr><td><%=m.getId()%></td><td><%=m.getPass()%></td><td><%=m.getUname()%></td><td><%=m.getPoint()%></td><td><%=m.getAuth()%></td></tr>
	<%}%>
</table>




</body>
</html>