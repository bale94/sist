package javaexp.a03_calcu;

public class A01_CalcuStart {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 # 연산자와 연산식
		 1. 연산이란?
		 	데이터를 처리하여 결과를 산출하는 것을 말한다.
		 2. 연산자(Operators)
		 	연산에 사용되는 표시나 기호를 말한다.
		 	+, -, *(곱), /, %(나머지), =, ...
		 3. 피연산자(Operands)
		 	연산대상이 되는 데이터(리터럴, 변수)
		 	num01, 25, num02, ...
		 4. 연산식
		 	연산자와 피연산자를 이용하여 연산의 과정을 기술하는 것
		 	sum = num01 + num02
		 	mul = num01 * num02
		 	연산자 = =, *
		 	피연산자 : sum, num01, num02, mul
		 	연산식: 연산자와 피연산자를 혼합하여 식을 만들어 가는 것
		 * */
		int num01 = 25; // 피연산자 num01에 리터럴 데이터 25로 할당
		int num02 = 5;
		System.out.println(num01+"+"+num02+"="+(num01+num02));
		System.out.println(num01+"-"+num02+"="+(num01-num02));
		System.out.println(num01+"*"+num02+"="+(num01*num02));
		System.out.println(num01+"/"+num02+"="+(num01/num02));
		System.out.println(num01+"%"+num02+"="+(num01%num02));
		
		/*
		 ex) 사칙연산자 처리 연습예제
		 1. 사과와 바나나의 가격을 설정해서 총 비용을 연산자, 피연산자를 통한 연산식을 만들어
		 결과를 출력하세요
		 2. 사과의 가격에 구매한 갯수를 처리하여 결과를 출력
		 3. 바나나의 구매갯수를 설정하고, 사과의 총 비용과 바나나의 총 비용의 차이를 구하세요
		 4. 곰돌이 3마리가 빵 20개를 똑같이먹고, 남은 나머지 갯수를 위 연산식에 의해 출력하세요.
		 * */
		int appleCnt = 1500;
		int bananaCnt = 2000;
		int appleMany = 20;
		int bananaMany = 15;
		System.out.println(appleCnt+"*"+appleMany+"="+(appleCnt*appleMany));
		int totApple = appleCnt*appleMany;
		System.out.println(bananaCnt+"*"+bananaMany+"="+(bananaCnt*bananaMany));
		int totBanana = bananaCnt*bananaMany;
		
		System.out.println(appleCnt+bananaCnt);
		System.out.println("사과의 갯수: "+appleMany);
		System.out.println("총 금액 차: "+(totApple-totBanana));
		
		int bear = 3;
		int bread = 20;
		System.out.println("총먹은갯수: "+"("+bread+"/"+bear+"="+")"+(bread/bear)+"개");
		System.out.println("총남은갯수: "+"("+bread+"%"+bear+"="+")"+(bread%bear)+"개");
	}

}
