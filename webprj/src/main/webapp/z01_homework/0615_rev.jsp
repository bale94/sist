<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
h3:{
	text-align:center;
	size: "3";
	}
</style>
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
	int avg = tot/3;
	%>
	<h3>물건 <%=pname%> 가격:<%=price1%>원, <%=price2%>원, <%=price3%>원</h3>
	<h3>평균가격: <%=avg %>원, 총가격:<%=tot %>원</h3>
	
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
	<h3><%=rw%></h3>
	<h3>정답은<%=mul%></h3>
	<%
	String num1 = request.getParameter("num1");
	String math = request.getParameter("math");
	String num2 = request.getParameter("num2");
	int nnum1=0; int nnum2=0;
	int ret = 0;
	if(num1!=null) {
		nnum1 = Integer.parseInt(num1);
	}else{
		System.out.println("숫자가 입력되지않았습니다");
	}
	if(num2!=null) {
		nnum2 = Integer.parseInt(num2);
	}else{
		System.out.println("숫자가 입력되지않았습니다");
	}
	if(math!=null){
		if(math.equals("+")){
			ret=(nnum1)+(nnum2);
		}else if(math.equals("-")){
			ret=(nnum1)-(nnum2);
		}else if(math.equals("*")){
			ret=(nnum1)*(nnum2);
		}else if(math.equals("/")){
			if(nnum1==0||nnum2==0){
				ret=0;
			}else{
				ret=(nnum1)/(nnum2);				
			}
		}
	%><h3><%=math%>연산에 대한 결과값은 <%=ret%>입니다.</h3>
	<%}else{
		math="0";
		ret=0;
	%><h3>숫자, 혹은 연산부호를 입력하지 않았습니다.</h3>
	<%}%>
</body>
</html>










