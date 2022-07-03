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
function insertDept(){
	if(confirm("부서등록하시겠습니까?")){
		var deptnoObj = document.querySelector("#deptno");
		var dnameObj = document.querySelector("[name=dname]");
		if(deptnoObj.value==""){
			alert("부서번호를 입력하세요");
			deptnoObj.focus();
			return;
		}
		if(dnameObj.value==""){
			alert("부서명을 입력하세요");
			dnameObj.focus();
			return;
		}
		document.querySelector("form").submit();
	}
	
}
</script>
</head>
<body>
<%
String req = request.getParameter("");

int deptno=0;

String deptnoS = request.getParameter("deptno");
if(deptnoS!=null) deptno = Integer.parseInt(deptnoS);

String dname = request.getParameter("dname");
if(dname==null) dname = "";

String loc = request.getParameter("loc");
if(loc==null) loc = "";
log("deptno:"+deptno);
log("dname:"+dname);
log("loc:"+loc);
/*
1. 객체만들기
2. 데이터 입력여부
3. dao 호출
4. 등록완료변수
5. js처리
*/

String isIns = "N";	//등록완료 표시 변수 설정
if(deptnoS!=null && !deptnoS.trim().equals("")){
	A04_PreDAO dao = new A04_PreDAO();
	dao.insertDept(new Dept(deptno, dname, loc));
	isIns = "Y";
}
%>
<script type="text/javascript">
	var isIns = "<%=isIns%>"
	if(isIns=="Y"){
		if(confirm("등록성공\n조회화면으로 이동하겠습니까?")){
			location.href="a01_DeptSchList.jsp"			
		}
	}
</script>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="dname">부서번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="deptno" name="deptno" placeholder="부서번호입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">부서명</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">부서위치</label>
    </div>
    <div class="col-75">
      <input type="text" id="loc" name="loc" placeholder="부서위치입력..">
    </div>
  </div>


  <div class="row">
    <input type="button" value="등록" onclick="insertDept()">
  </div>
  </form>
</div> 

</body>
</html>