package javaexp.a04_process;

import java.util.Scanner;

public class A10_do_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# do while문
		1. while문 형식에서 반복 조건 상관없이 반드시, 한번은 수행되어야 할 경우에 사용된다.
		2. 기본 형식
			do{
				1번 이상 반복할 구문
			}while(반복 조건);
		 * */
		int cnt=1;
		do {
			System.out.println("카운트: "+cnt);
			cnt++;
		}while(cnt<=10);
		System.out.println("반복문 종료");
		
		
		Scanner sc = new Scanner(System.in);
		System.out.println("온라인 쇼핑몰에 오신것을 환영합니다");
		String pname = "";
		String chProd = "#선택한물건#";
		do {
			chProd += pname+"\n";	//일단 한번은 실행
			System.out.println("물건을 확인하시고 선택하세요, 완료시 Q를 입력하세요");
			pname = sc.nextLine();
		}while(!pname.equals("Q"));	//Q가아닐시 무한반복
		System.out.println(chProd);
		
		

	}

}
