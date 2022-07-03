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
<link href="<%=path %>/a00_com\a01_common.css" rel="stylesheet">
<style>

</style>
<script>

function regEmp(){
	if(confirm("사원등록하시겠습니까?")){
		// id로 선언했을 때, 인식가능	id="empno" name="empno"
		// 물론 [name=empno]도 가능하다
		var empnoObj = document.querySelector("#empno");
		var enameObj = document.querySelector("#ename");
		var hiredateSObj = document.querySelector("#hiredateS");
		if(empnoObj.value == ""){
			alert("사원번호를 입력하세요");
			empnoObj.focus();
			return;
		}
		if(enameObj.value == ""){
			alert("사원명을 입력하세요");
			enameObj.focus();
			return;
		}
		if(hiredateSObj.value == ""){
			alert("입사일을 입력하세요");
			hiredateSObj.focus();
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
int empno,mgr,deptno; empno=mgr=deptno=0;
double sal, comm; sal=comm=0;

String empnoS = request.getParameter("empno");
if(empnoS!=null) empno = Integer.parseInt(empnoS);

String mgrS = request.getParameter("mgr");
if(mgrS!=null) mgr = Integer.parseInt(mgrS);

String deptnoS = request.getParameter("deptno");
if(deptnoS!=null) deptno = Integer.parseInt(deptnoS);

String salS = request.getParameter("sal");
if(salS!=null) sal = Double.parseDouble(salS);

String commS = request.getParameter("comm");
if(commS!=null) comm = Double.parseDouble(commS);
//!commS.trim().equals("") 추가해도됨 조건에
String ename = request.getParameter("ename"); if(ename==null) ename="";
String job = request.getParameter("job"); if(job==null) job="";
String hiredateS = request.getParameter("hiredateS"); if(hiredateS==null) hiredateS="";
log("empno:"+empno);log("mgr:"+mgr);log("deptno:"+deptno);
log("sal:"+sal);log("comm:"+comm);
log("ename:"+ename);log("job:"+job);log("hiredateS:"+hiredateS);
//등록처리를 위한 조건
String isIns = "N";
if(empnoS!=null && !empnoS.trim().equals("")){
	//등록할 Emp() 생성
	A04_PreDAO dao = new A04_PreDAO();
	dao.insertEmp(new Emp(empno, ename, job, mgr, hiredateS, sal, comm, deptno));
	isIns = "Y";
}
%>
<script type="text/javascript">
	var isIns = "<%=isIns%>";
	if(isIns=="Y"){
		if(confirm("등록성공\n조회화면으로 이동하시겠습니까?")){
			location.href="a01_empSchList.jsp";
		}
	}
</script>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="empno">사원번호(*)</label>
    </div>
    <div class="col-75">
      <input type="text" id="empno" name="empno" placeholder="사원번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">사원명(*)</label>
    </div>
    <div class="col-75">
      <input type="text" id="ename" name="ename" placeholder="사원명입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="loc">직책명</label>
    </div>
    <div class="col-75">
      <input type="text" id="job" name="job" placeholder="직책명입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="mgr">관리자번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="mgr" name="mgr" placeholder="관리자번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="hiredateS">입사일(*)</label>
    </div>
    <div class="col-75">
      <input type="text" id="hiredateS" name="hiredateS" placeholder="YYYY-MM-DD"
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="sal">급여</label>
    </div>
    <div class="col-75">
      <input type="text" id="sal" name="sal" placeholder="급여입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="comm">보너스</label>
    </div>
    <div class="col-75">
      <input type="text" id="comm" name="comm" placeholder="보너스입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="deptno">부서번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="deptno" name="deptno" placeholder="부서번호입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <input type="button" value="등록" onclick="regEmp()">
  </div>
  </form>
</div> 

</body>
</html>