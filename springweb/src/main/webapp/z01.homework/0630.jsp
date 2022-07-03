<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="UTF-8"/>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/a00_com/a01_common.css" rel="stylesheet">
<style>

</style>
<script src="${path}/a00_com/jquery-3.6.0.js" type="text/javascript"></script>
<script>
	/*
	
	 */
	$(document).ready(function(){
		//$("h1").text("시작!")
	})
</script>
</head>
<body>

<%--
[1단계:개념] 1. 스프링의 초기 환경에 필요한 구성 요소은 아래 단계별로 기술하세요.
         1) lib: jar들 넣기
         2) web.xml: 한글출력을 위한 filtering설정, controller 선언
         3) dispatcher-servlet.xml: 컨테이너설정-> WEB-INF아래에 폴더로 설정한다.
         
[1단계:확인] 2. 기본 스프링 환경을 springweb2 프로젝트로 구성하고, 설정 내용을 ppt자료를
      만들어 제출하세요.
      
[1단계:개념] 3. 스프링의 MVC 설정 파일과 요청값에 대한 처리 방식을 기술하세요.
Controller 설정(@어노테이션), 기능메소드별로 url pattern을 선언하고 view단 선언을 한다.
요청값은 controller 메소드의 매개변수로 처리하거나, 객체로 매개변수로 받아서 처리할 수 있다 

[1단계:개념] 4. 스프링 MVC의 요청값 처리를 단일 처리와 객체형 처리를 비교하여 기술하세요.
d.addAttribute("playerInfo", "이름은 "+pname+", 성적은 "+record);
단일값은 한번에 하나씩 값을 출력하는 방식으로 처리할수있다
d.addAttribute("emplist",new A04_PreDAO().getEmpList2(sch));
객체형으로 받아와서 처리할 수도 있다.

[1단계:확인] 5. 스프링으로 회원등록 form을 만들고, 등록된 내용을 모델로 출력 처리하세요.
@RequestMapping("/reg01.do")
	public String reg01(@RequestParam(value="name", defaultValue="") String name,
						@RequestParam(value="age", defaultValue="") String age,
						Model d
			) {
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		
		d.addAttribute("memberInfo", new Member(name, age));
		
		return "WEB-INF\\views\\a01_basic\\a07_memList.jsp";
	}
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="name">회원이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="name" name="name" placeholder="회원이름입력.."
         value="${param.ename}">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="age">나이</label>
    </div>
    <div class="col-75">
      <input type="text" id="age" name="age" placeholder="나이입력.."
         value="${param.age}">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="데이터 입력">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>회원이름</th><th>나이</th></tr>
   <tr><td>${memberInfo.name}</td><td>${memberInfo.age}</td></tr>
</table>
<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="pname">선수이름</label>
    </div>
    <div class="col-75">
      <input type="text" id="pname" name="pname" placeholder="선수이름입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="record">성적</label>
    </div>
    <div class="col-75">
      <input type="text" id="record" name="record" placeholder="성적입력.."
         value="">
    </div>
  </div>

  <div class="row">
    <input type="submit" value="데이터 입력">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>선수명</th><th>기록</th><th></th></tr>
   <tr><td>${playerInfo.pname }</td><td>${playerInfo.record }</td></tr>
</table>
--%>
<h1></h1>

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
	<col width="30%">
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>