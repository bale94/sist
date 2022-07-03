package javaexp.a03_calcu;

public class A03_Calcu03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 대입연산자
		1. = : 데이터를 오른쪽에서 왼쪽으로 대입하여 할당이 된다.
		 * */
		int num01 = 25;
		int num02; int num03; int num04; // 선언
		num02 = num03 = num04 = 5; // 동일한 데이터를 한번에 할당
		System.out.println(num01);
		System.out.println(num02);
		System.out.println(num03);
		System.out.println(num04);
		/*
		2. +=, -=, /=, *=, %=
		기존 변수에서 누적하여 다시 데이터를 할당할 때 활용된다.
		 * */
		num01 = num01 + 5;
		System.out.println("기존의 데이터를 합산한 값: "+num01);
		num01 += 5;
		System.out.println("누적 합산값: "+num01);
		num01 -= 5;
		System.out.println("누적 감산값: "+num01);
		
		/*
		 ex) 변수 cnt01 ~ cnt05에 데이터 5를 한번에 선언과 할당하고 누적증감연산자에 의해
		 cnt01~cnt05, 2,3,4,5,6 증가처리하여 출력
		 * 
		 * */
		int cnt01, cnt02, cnt03, cnt04, cnt05;
		cnt01 = cnt02 = cnt03 = cnt04 = cnt05 = 5;
		cnt01 += 2;
		System.out.println("2를 누적합산값: "+cnt01);
		cnt02 += 3;
		System.out.println("3을 누적합산값: "+cnt02);
		cnt03 += 4;
		System.out.println("4를 누적합산값: "+cnt03);
		cnt04 += 5;
		System.out.println("5를 누적합산값: "+cnt04);
		cnt05 += 6;
		System.out.println("6을 누적합산값: "+cnt05);
		
	}

}
