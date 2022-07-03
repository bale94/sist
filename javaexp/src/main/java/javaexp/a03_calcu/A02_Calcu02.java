package javaexp.a03_calcu;

public class A02_Calcu02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 연산자의 종류
		1. 산술연산자
		2. 부호연산
			피연산자에 부호 기호(+,-)를 붙혀 양수와 음수를 처리
			
		 * */
		int num01 = 25;
		int num02 = 5;
		int num03 = -num02;
		int num04 = -num03;
		// num02에 -기호를 붙혀 처리
		System.out.println(num01+num02);
		System.out.println(num01+num03);
		System.out.println("num03의 값: "+num03);
		System.out.println("부호기호 -(음수)에 다시 -(음수)를 붙힌경우: "+num04);
		/*
		3. 문자열의 + 연산자
			+는 숫자형 데이터의 경우 합산을 처리하지만, 문자열의 데이터인 경우 문자열과 문자열을
			이어주는 역할을 한다.
			1) 문자열1 + 문자열2 ==> 문자열1문자열2
			2) 숫자1 + 숫자2 + 문자열 ==> 숫자합산문자열
			3) 문자열 + 숫자1 + 숫자2 ==> 문자열숫자1숫자2
		 * */
		String str1 = "안녕하세요";
		String str2 = "반갑습니다";
		System.out.println(str1+str2+" 문자열을 이어줌");
		int num05 = 5;
		int num06 = 7;
		System.out.println(num05+num06+str1+str2);
		// 숫자를 먼저쓰면 연산처리 후 문자열 처리
		System.out.println(str1+str2+num05+num06);
		//문자열을 먼저쓰면 뒤따르는 숫자도 문자열로 취급
		//이 때 정상적으로 문자열을 출력하면서, 숫자형 데이터를 연산하려면
		// 최우선순위 연산식에서 사용하는 ()
		// cf) (): 소괄호, {}: 중괄호, []: 대괄호
		System.out.println(str1+str2+(num05+num06));
		/*
		 ex) 방어율계산 (9이닝동안 피실점율) - 1이닝 당 실점 5
		 방어율 = (투수의 자책점x9)/이닝 수
		 * */
		//투수의 자책점 4점, 경기이닝수 5이닝, 방어율이 얼만지 프로그램상으로 출력하세요
		//(선언할 변수 - 자책점, 이닝, 방어율)
		//경기한 이닝: @@@
		//실점: @@@, 방어율: @@@
		int score=4;
		int innings=5;
		double era = (score*9)/(double)innings;
		System.out.println("경기한 이닝: "+innings);
		System.out.println("실점: "+score);
		System.out.println("방어율: "+era);
		//String을 써서 앞에 경기한이닝, 실점, 방어율 등을 표기해도 좋다.
		//String+innings 이런식으로 시스아웃 속에넣기
		
	}

}
