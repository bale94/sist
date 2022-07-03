package javaexp.a04_process;

import java.util.Scanner;

public class A09_while {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# while문을 통한 반복 처리
		1. while문은 반복여부를 처리하는 boolean값을 기준으로 반복수행을 처리한다.
		2. 기본 형식
			1) 기본
			while(반복조건){
				반복수행할 내용
			}
			2) 입력값에 따라 반복 처리
			while(true){	//무한반복
				ck = sc.nextLine();
				if(ck.equals("Q")){	//Q를 입력했을 때, 반복 수행을 중단 처리
					break;
				}
			}
			
		 * 
		 * */
//		int cnt=1;
//		while(cnt<=10) {
//			System.out.println("카운트 :"+(cnt++));
//		}
//		
//		//ex) while문을 활용하여 100부터 70까지 2씩 감소시켜 출력
//		cnt=100;
//		while(cnt>=70) {
//			System.out.println("카운트: "+cnt);
//			cnt-=2;
//		}
//		Scanner sc = new Scanner(System.in);
//		//주문할 것이 있으면 입력받게하고, 종료시 Q 입력처리
//		System.out.println("어서오세요");
//		int cnt1=1;
//		while(true) {	//무한루프처리
//			System.out.println("주문할 메뉴를 입력하고, 종료시 Q를 입력하세요: ");
//			String menu = sc.nextLine();
//			if(menu.equals("Q")) {
//				break;	//반복문 중단(Q를 입력시 처리)
//			}
//			System.out.println(cnt1+++"번째 주문 메뉴: "+menu);
//		}
		
		/*
		ex1) 구매할 동전의 가격을 입력받고, 종료시 -1을 입력받아 가격을 출력하게 하세요
		
		ex2) 등록할 회원명을 입력받아 아래의 형식으로 출력 종료시Q
			회원번호	회원명
			1		홍길동
			2		김길동
		 * */
		Scanner sc = new Scanner(System.in);
//		int coin;
//		while(true) {
//			System.out.print("구매할 동전의 가격은?: ");
//			coin = sc.nextInt();
//			if(coin!=-1) {
//				System.out.println(coin);
//			}else {
//				break;
//			}
//		}
		
		String name; int num=1;
		System.out.println("회원번호\t회원명");
		while(true) {
			name = sc.nextLine();
			if(name.equals("Q")) break;
			System.out.println(num+++"\t"+name);
		}
		
		while(true)
		
		
		
	}

}
