<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
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
[1단계:개념] 1. jstl의 날짜와 숫자 형식 처리의 기본 형식을 기술하세요.
request.setAttribute로 날짜와 숫자를 객체화한다
<fmt:formatDate와 formatNumber를 통해 value="${날짜|숫자}"를 설정하고
type="date|time|both"을 설정하고 dateStyle|timeStyle을 full과 short중에 선택한다.
날짜나 숫자를 패턴으로 표현하고싶다면 type과 style대신 pattern=""을 입력하여
원하는 패턴으로 출력할 수 있다.

[1단계:확인] 2. 회원별로 구매한 물건이 다수개일 때, 아래 형식으로 출력해보세요
         forEach, forTokens 활용
         (Buyer)VO객체 필드 :String name; String blist;
         List<Buyer> blist = new ArrayList<Buyer>();
         blist.add(new Buyer("홍길동","사과&바나나&딸기");
         blist.add(new Buyer("신길동","오렌지&수박");
         blist.add(new Buyer("오길동","딸기&바나나");
         # 출력 #
      홍길동 : 사과, 바나나, 딸기
      신길동 : 오렌지, 수박
      오길동 : 딸기 바나나
1) vo만들기
	class Buyer{}
2) el
	ArrayList<Buyer> 객체생성과 단위 객체 할당 처리
	request.setAttribute("blist", blist)
3) <c:forEach var="buyer.name" items="${blist}"
		<h2>${buyer.name}
		<c:forTokens var="fruit" items="${buyer.blist}" delims="&" varStatus="sts"
			${fruit}
			<c:if test="${not sts.last}">,</c:if>
		</h2>
      
[1단계:개념] 3. mvc패턴의 각 model, view, controller 역할을 기술하세요.
controller: 입력 및 흐름제어
view: 화면에 출력해주는 부분
model: dao 및 상태정보들을 관리하는 부분

[1단계:개념] 4. mvc패턴으로 부서정보의 조회 내용을 출력하세요.
-Controller
package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webprj.z01_vo.Dept;

/**
 * Servlet implementation class A06_DeptController
 */
@WebServlet(name = "mvc061.do", urlPatterns = { "/mvc061.do" })
public class A06_DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A06_DeptService service;
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	public A06_DeptController() {
		super();
		// TODO Auto-generated constructor stub
		service = new A06_DeptService();
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		request.setAttribute("deptlist", service.getDeptList(new Dept(dname,loc)));
		String page = "a04_jsp\\a06_mvc\\a02_deptList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
-view
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="webprj.dao.*"
    import="webprj.z01_vo.*"
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
		$("h1").text("부서정보")
	})
</script>
</head>
<body>

<h1></h1>

<div class="container">
  <form >
  <div class="row">
    <div class="col-25">
      <label for="deptno">부서번호</label>
    </div>
    <div class="col-75">
      <input type="text" id="deptno" name="deptno" placeholder="부서번호입력.."
         value="${param.deptno }">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="dname">부서명</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="${param.dname }">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="loc">부서위치</label>
    </div>
    <div class="col-75">
      <input type="text" id="loc" name="loc" placeholder="부서위치입력.."
         value="${param.loc }">
    </div>
  </div>
  <div class="row">
    <input type="submit" value="검색">
  </div>
  </form>
</div> 
<table >
	<col width="30%">
   <tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
   <c:forEach var="dept" items="${deptlist }">
   <tr><td>${dept.deptno }</td><td>${dept.dname }</td><td>${dept.loc }</td></tr>
   </c:forEach>
</table>
</body>
</html>

--%>
<h1></h1>
<%
List<Buyer> blist = new ArrayList<Buyer>();
blist.add(new Buyer("홍길동","사과&바나나&딸기"));
blist.add(new Buyer("신길동","오렌지&수박"));
blist.add(new Buyer("오길동","딸기&바나나"));
request.setAttribute("blist", blist);

%>
<h1>물건정보</h1>
<c:forEach var="buyer" items="${blist }">
	<h2>${buyer.name}: 
		<c:forTokens var="prod" varStatus="sts" items="${buyer.plist}" delims="&">
			${prod}<c:if test="${not sts.last }">,</c:if>
		</c:forTokens>	
	</h2>
</c:forEach>

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

</body>
</html>