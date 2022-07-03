<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function cal01(){
		var calObjVal = document.querySelector("[name=cal]").value;
		if(calObjVal==""){
			alert("연산자중 하나를 선택하여야 합니다");
			return;
		}
		var num01Val = document.querySelector("[name=num01]").value;
		// isNaN() : is Not a Number? 숫자가아닐때 true, 숫자면 false
		if(num01Val==""){
			alert("숫자를 입력하여야 합니다");
			return;
		}
		var num02Val = document.querySelector("[name=num02]").value;
		if(num02Val==""){
			alert("숫자를 입력하여야 합니다");
			return;
		}
		var form = document.querySelector("form");
		form.submit();
		
	}
</script>
<body>
<%--
[1단계:확인] 1. 구매한 물건의 물건명과 가격 3개를 요청값을 받아서 합산하여 출력하세요.(형변환/전역변수)
--%>
	<form action="0615_rev.jsp" method="post">
		물건명:<input type="text" name="pname"><br>
		가격:<input type="text" name="price1">
		가격:<input type="text" name="price2">
		가격:<input type="text" name="price3"><br>
		<input type="submit" name="등록">
	</form>
<%--
// 0615_rev.jsp에있는부분
<body>
	<%	
	String pname = request.getParameter("pname");
	String price1 = request.getParameter("price1");
	String price2 = request.getParameter("price2");
	String price3 = request.getParameter("price3");
	int pprice1 = 0;int pprice2 = 0; int pprice3 = 0;
	if(pname==null) pname=" ";
	if(price1!=null) pprice1 = Integer.parseInt(price1);
	if(price2!=null) pprice2 = Integer.parseInt(price2);
	if(price3!=null) pprice3 = Integer.parseInt(price3);
	int tot = pprice1+pprice2+pprice3;
	%>
	<h3>물건 <%=pname%> 가격:<%=price1%>원, <%=price2%>원, <%=price3%>원</h3>
	<h3>총가격:<%=tot %>원</h3>
</body>
--%>

<%--
[1단계:개념] 2. form과 속성 중 action, method의 기능과 이를 생략했을 때, 처리되는 내용을 기술하세요.
action은 생략시 해당페이지로 다시리턴된다. 전송할 페이지가없기떄문에..
method는 get/post를 정하는부분인데 생략시 get을 default값으로 진행한다.

[1단계:확인] 3. 구구단을 외자? 라는 타이틀 화면으로 임의의 값이 [@@] X [@@@] ? [   ] [확인] 라는 화면이 로딩되고,
            답을 입력후, 확인 눌렀을 때, 요청된 페이지에 문제와 입력된 값을 출력, 맞으면 정답, 틀리면 오답을 출력되게 하세요.
            # 요청값 프로세스
            0) 초기화면 요청받은 코드 같이 로딩 기억
            	- 초기화면에는 요청값을 받지않았기 때문에 null에대한 처리를 반드시 하여야한다.
            
            1) 자바프로그램
            2) html화면구현
            3) scriptlet, expression작성하여 자바코드추가<%%>,<%=%>
--%>
<h2 style="text-align:center">구구단을외자</h2>
<form action="0615_rev.jsp" method="post" style="text-align:center">
	<input type="text" name="dan" size="2" placeholder="@@"/> X <input type="text" name="num" size="2" placeholder="@@@"/> ? 
	<input type="text" name="ans" size="5"/>
	<input type="submit" name="submit" value="등록"/><br><br>
</form>
<%--
<body>
	<%
	String dan = request.getParameter("dan");
	String num = request.getParameter("num");
	String ans = request.getParameter("ans");
	int ddan = 0;int nnum=0;int aans=0;
	String rw = "";
	if(dan!=null) ddan = Integer.parseInt(dan);
	if(num!=null) nnum = Integer.parseInt(num);
	if(ans!=null) aans = Integer.parseInt(ans);
	int mul = ddan*nnum;
	if(aans!=mul){
		rw="틀렸습니다";
	}else{
		rw="정답입니다";
	}
	%>
	<h3><%=rw %></h3>
	<h3>정답은<%=mul%></h3>
</body>
--%>

<%--
[1단계:확인] 4. [   ][select +/-/*// ][   ] [결과확인] 결과확인을 통해 선택된 연산이 처리되게 하세요
--%>
<form action="0615_rev.jsp" method="post">
	<input type="text" name="num1" /><input type="text" name="math" placeholder="select +/-/*//" /><input type="text" name="num2"/>
	<input type="submit" value="결과확인"/><br><br><br>
</form>

<%	//요청값처리..
	String num01S = request.getParameter("num01");
	String num02S = request.getParameter("num02");
	String calS = request.getParameter("cal");
	int num01=0, num02=0, calIdx=0, sum=0;
	String cal="";
	// 요청값이 있을때 처리
	if(calS!=null){
		num01 = Integer.parseInt(num01S);
		num02 = Integer.parseInt(num02S);
		calIdx = Integer.parseInt(calS);	// 선택한 0,1,2,3 숫자로 변환
		int []sums = {num01+num02, num01-num02, num01*num02, num01==0||num02==0?0:num01/num02};
		String []cals = {"+","-","*","/"};
		sum = sums[calIdx];
		cal = cals[calIdx];
		
		
		/*
		num01 = Integer.parseInt("num01S");
		num02 = Integer.parseInt("num02S");
		calIdx = Integer.parseInt("calS");
		if(calIdx==0){
			sum=num01+num02;
			cal="+";
		}if(calIdx==1){
			sum=num01-num02;
			cal="-";
		}if(calIdx==2){
			sum=num01*num02;
			cal="*";
		}if(calIdx==3){
			cal="/";
			// zero예외처리
			if(num01==0 || num02==0){
				sum=0;
			}else{
				sum=num01/num02;
			}
			
		}*/
	}
%>
<h3>계산기</h3>
<form>
	<input type="text" name="num01" size="2"/>
	<select name="cal" onchange="cal01()">
		<option value=""> 연산자 선택 </option>
		<option value="0"> + </option>
		<option value="1"> - </option>
		<option value="2"> * </option>
		<option value="3"> / </option>
	</select>
	<input type="text" name="num02" size="2"/>
</form>
<%if(calS!=null){%>
	<%=num01 %> <%=cal %> <%=num02 %> = <%=sum %>
<%}%>
<%--
<body>
	<%
	String num1 = request.getParameter("num1");
	String math = request.getParameter("math");
	String num2 = request.getParameter("num2");
	int nnum1=0; int nnum2=0;
	int ret = 0;
	if(num1!=null) nnum1 = Integer.parseInt(num1);
	if(num2!=null) nnum2 = Integer.parseInt(num2);
	if(math.equals("+")){
		ret=(nnum1)+(nnum2);
	}else if(math.equals("-")){
		ret=(nnum1)-(nnum2);
	}else if(math.equals("*")){
		ret=(nnum1)*(nnum2);
	}else{
		ret=(nnum1)/(nnum2);
	}
	%>
	<h3><%=math%>연산에 대한 결과값은 <%=ret%>입니다.</h3>
</body>
--%>

<%--
[1단계:개념] 5. form 하위 요소객체 중, 대표적인 단일/다중 선택을 처리해 주는 요소들의 특징을 구별하여 예제를 통하여 설명하세요.
radio와 checkbox가 있다. radio는 단일개체를 선택처리해주고, checkbox는 다중선택을 처리해준다

	태어난 분기:
	<input type="radio" name="month" size="3" value="1"/>1분기
	<input type="radio" name="month" size="3" value="2"/>2분기
	<input type="radio" name="month" size="3" value="3"/>3분기
	<input type="radio" name="month" size="3" value="4"/>4분기<br>
	좋아하는 만화:
	<input type="checkbox" name="comics" value="원피스"/>원피스
	<input type="checkbox" name="comics" value="나루토"/>나루토
	<input type="checkbox" name="comics" value="블리치"/>블리치
	<input type="checkbox" name="comics" value="짱구"/>짱구
	<input type="checkbox" name="comics" value="하이큐"/>하이큐<br>
	--%>
</body>
</html>