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
int deptno=0;

String proc = request.getParameter("proc");
if(proc==null) proc="";


String deptnoS = request.getParameter("deptno");
if(deptnoS!=null) deptno = Integer.parseInt(deptnoS);

String dname = request.getParameter("dname");
if(dname==null) dname = "";

String loc = request.getParameter("loc");
if(loc==null) loc = "";

log("deptno:"+deptno);
log("dname:"+dname);
log("loc:"+loc);

Dept dept = new Dept();
if(deptnoS!=null && !deptnoS.trim().equals("")){
	deptno = Integer.parseInt(deptnoS);
	A04_PreDAO dao = new A04_PreDAO();

	if(proc.equals("upt")){
		// 수정처리를 위한 객체매개변수 전달
		dept = new Dept(deptno,dname,loc);
		dao.updateDept(dept);	// 수정 처리
	}
	// 등록된 내용 조회
	dept = dao.getDeptDetail(deptno);
}
/*
getDeptDetail
*/
%>
<script type="text/javascript">
	var proc="<%=proc%>";
	if(proc!=""){
		if(proc=="upt"){
			if(confirm("수정하였습니다\n조회화면으로 이동하시겠습니까?")){
				location.href="a01_DeptSchList.jsp";
			}
		}
	}
</script>
<h2>부서상세정보(<%=deptnoS%>)</h2>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="deptno">부서번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="deptno" name="deptno" placeholder="부서번호입력.."
         value="<%=dept.getDeptno()%>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">부서명</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="<%=dept.getDname()%>">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="loc">부서위치</label>
    </div>
    <div class="col-75">
      <input type="text" id="loc" name="loc" placeholder="부서위치입력.."
         value="<%=dept.getLoc()%>">
    </div>
  </div>

  <div class="row">
    <input type="button" value="조회화면" onclick="gomain()" style="background-color:#008B8B">
    <input type="button" value="삭제" onclick="delDept()" style="background-color:#FF4500">
    <input type="button" value="수정" onclick="uptDept()" style="background-color:#32CD32">
  </div>
  	<input type="hidden" name="proc"/>
  </form>
</div> 
<script type="text/javascript">
	function uptDept(){
		if(confirm("부서정보를 수정하시겠습니까?")){
			document.querySelector("[name=proc]").value="upt";
			document.querySelector("form").submit();
		}
	}
	function delDept(){
		if(confirm("부서정보를 삭제하시겠습니까?")){
			document.querySelector("[name=proc]").value="del";
			document.querySelector("form").submit();
		}
	}
	function gomain(){
		location.href="a01_DeptSchList.jsp";
	}
</script>
<%

%>
</body>
</html>