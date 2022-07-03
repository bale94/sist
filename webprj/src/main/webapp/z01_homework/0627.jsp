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
[1단계:개념] 1. useBean 태그 의 기본 속성과 하위 속성을 예제를 통해서 기술하세요.
<jsp:useBean id, class, scope>로 구성되는데, id는 자바빈 객체에 접근할때 사용할 이름,
class는 패키지명을 포함한 전체이름, scope는 저장될 영역을 제한해주는 값이다.

[1단계:확인] 2. useBean을 이용하여 물건명/가격/갯수를 저장하여 출력하게 처리히세요(vo==>bean)

[1단계:확인] 3. useBean을 이용하여 좋아하는 선수의 팀/선수명/성적을 form으로 입력해서 해당 화면에서 출력처리하세요.

[1단계:확인] 4. 부서정보를 등록하는 form을 만들고 useBean을 이용해서 등록 처리하고, 현재 등록된 내용을 리스트 처리하세요(DAO)
[1단계:확인] 5. el을 이용하여 곰돌이 3마리가 먹은 빵의 갯수가 20개일 때, 균등 배분 빵의 갯수와 나머지 갯수 출력하세요.
--%>
<body>


<jsp:useBean id="product" class="webprj.z01_vo.Product"/>
<jsp:useBean id="player" class="webprj.z01_vo.Player"/>
<jsp:useBean id="dept" class="webprj.z01_vo.Dept"/>
<jsp:setProperty property="*" name="dept"/>
<%
	product.setName("김밥");
	product.setPrice(2500);
	product.setCnt(5);
	
	player.setTname("FC서울");
	player.setName("기성용");
	player.setGoals(15);
	
	request.setAttribute("bearCnt", 3);
	request.setAttribute("bearEaten", 20);
%>
<table >
	<col width="30%">
   <tr><th>물건명</th><td><%=product.getName() %></td></tr>
   <tr><th>가격</th><td><%=product.getPrice() %></td></tr>
   <tr><th>갯수</th><td><%=product.getCnt() %></td></tr>
</table>
<table >
	<col width="30%">
   <tr><th>팀명</th><td><%=player.getTname() %></td></tr>
   <tr><th>선수명</th><td><%=player.getName() %></td></tr>
   <tr><th>득점수</th><td><%=player.getGoals() %></td></tr>
</table>
<form>
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
    <div class="col-25">
      <label for="dname">부서명</label>
    </div>
    <div class="col-75">
      <input type="text" id="dname" name="dname" placeholder="부서명입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="loc">부서위치</label>
    </div>
    <div class="col-75">
      <input type="text" id="loc" name="loc" placeholder="부서위치입력.."
         value="">
    </div>
  </div>
  <div class="row">
    <input type="submit" value="요청값 전달">
  </div>
</form>

   <%
	   A04_PreDAO dao = new A04_PreDAO();
    	if(dept.getDname()!=null){	//초기화면이 아닐때
			dao.insertDept(dept);		
    	}
   %>
<table >
   <tr><th>부서번호</th><th>부서명</th><th>부서위치</th></tr>
	<%
	for(Dept d: dao.getDeptList(dept)){
	%>
	<tr><td><%=d.getDeptno() %></td>
		<td><%=d.getDname() %></td>
		<td><%=d.getLoc() %></td>
	</tr>
	<%
	}
	%>
</table>
<h2>곰의수: ${bearCnt}</h2>
<h2>곰이먹을 총 빵의 수: ${bearEaten}</h2>
<h2>각 곰이 먹을 빵의 수: ${bearEaten/bearCnt}</h2>
<h2>남은빵의수: ${bearEaten%bearCnt }</h2>
</body>
</html>