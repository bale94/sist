package javaexp.a04_process;

public class A07_break_continue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 반복문에서 조건과 함께하는 break와 continue문
		1. 반복문 안에서 특정 조건일때, break를 처리하면 반복문의 범위와 상관없이 중단이된다.(for문, while문, do while문 전부)
		 * */
		for(int cnt=1;cnt<100;cnt++) {
			if(cnt==20) break;
			System.out.println(cnt);//20도 못찍고 19찍고 break되는 모습
		}
		
		/*
		2. 반복문 안에서 특정 조건일 때, continue를 쓰면 해당 반복 step을 passby(넘어가는)처리되고 그 다음 반복을 수행하게된다.
		 * */
		for(int cnt=2;cnt<=9;cnt++) {
			if(cnt==5) continue;
			System.out.println(cnt+"단"); //5는 지나치게된다.
		}
		
		// ex1) 구구단의 단수를 전역변수로 선언하여 해당 단수의 1~9까지 곱한 값을 처리하되
		//		7을 곱하는경우엔 프로세스가 중단되게 처리하세요
		int dan01=4;
		for(int num=1;num<=9;num++) {
			if(num!=7) {
				System.out.println(dan01+" x "+num+" = "+dan01*num);				
			}else {
				break;
			}
		}
		// ex2) 매월 인터넷 요금이 32000원 정도 나온다. 1~12월까지 요금 내용을 출력하되, 5월은 출장으로 정지시켰다.
		System.out.println("월\t요금\t누적요금\t");
		int bill = 32000; int tot=0;
		for(int month=1;month<=12;month++) {
			if(month!=5) {
				tot+=bill;
				System.out.println(month+"월\t"+bill+"\t"+tot);				
			}else {
				continue;
			}
		}

	}

}
