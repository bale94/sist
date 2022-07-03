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
[1단계:개념] 1. <jsp:include, <jsp:forward  <%@ include file="" 의 차이점을 예제를 통해 설명하세요.
include는 include된 페이지로 이동했다가 돌아와도 request를 여전히 갖고있는 반면에 forward는 한번 forward를 하고나면
request의 권한을 잃게된다. 또 include 지시어인 <%@ include file=""는 파일을 포함시킨 뒤 컴파일을 하는 방식이다.(jsp:include는
실행즉시 호출하여 결과를 실행해주는데 이것과 좀 다른 방식)

[1단계:개념] 2. jsp에서 에러를 처리하는 방식이 두가지이다. 해당 처리방식의 차이점을 기술하세요
errorPage, isErrorPage 로 지정해서 처리하는방법과 exception내장객체를 사용해서 처리하는 방법 두가지가있다.
전자는 직접 어떤 에러인지 파악 후 이러한 에러 시 어떤페이지를 보여줘라 직접 지정을 하는 방법인 반면에 후자는 어디서 어떤오류가 
나는지 메세지를 통해 바로 알수가있다.

[1단계:확인] 3. 현재 서버에서 경로나 페이지명을 잘 못 입력했을 때, 나타나는 이미지와 함께 있는 페이지를 설정할려고 한다.
             해당 내용을 처리하는 순서와 함께 처리하세요.
1) 해당 에러가 무엇인지 파악해둔다 2) 해당에러가 뜰때 어떤 페이지를 띄울지 설정한다. 3) 해당에러를 web.xml페이지에 설정한다

[1단계:개념] 4. 쿠키와 세션의 궁극적인 차이점을 기본 예제를 통해서 기술하세요.
쿠키는 브라우저를 모두 닫았다가 열어도 다시 적용되지만, 세션은 브라우저를 모두 닫게되면 사라져버린다.
--%>
<body>

<%
String req = request.getParameter("");

%>
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
   <tr><th>###</th><th>###</th><th>###</th></tr>
   <tr><td></td><td></td><td></td></tr>
</table>
</body>
</html>