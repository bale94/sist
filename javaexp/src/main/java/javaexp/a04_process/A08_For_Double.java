package javaexp.a04_process;

public class A08_For_Double {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 이중 반복문
		1. 반복은 안에 반복을 처리하여 효과적인 로직과 화면을 구성할 때 활용된다.
		2. 형식
			for(;;){		// 상위 단계의 반복문
				for(;;){	// 하위 단계의 반복문
				
				}
			}
		 * */
		
		// 구구단의 경우 2~9단 단, 1~9
		for(int dan=2;dan<=9;dan++) {
			System.out.println("------"+dan+"단------");
			for(int num=1;num<=9;num++) {
				System.out.println(dan+" X "+num+" = "+dan*num);
			}
		}System.out.println();
		
		// *갯수 늘여가기
		for(int ocnt=1;ocnt<=5;ocnt++) {
			//icnt<=ocnt : 상위에 있는 for의 갯수만큼 반복 수행
			for(int icnt=1;icnt<=ocnt;icnt++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
