package javaexp.z02_util;

import java.util.Scanner;

public class A03_Random {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# Random 데이터란?
			1. 임의의 데이터를 말하는 것으로, 프로그램이나 빅데이터 처리 시 많이 활용된다.
			2. 자바에서는 기본적으로 Math.random()을 통해 0.0~1.0사이의 실수로 임의의 데이터가 지원되고 있다.
			
			3. 0.0 <= Math.random() < 1.0
			4. 0.0*10 <= Math.random()*10 < 1.0*10
			5. 0 <= (int)(Math.random()*10) < 10
			6. 1 <= (int)(Math.random()*10+1) < 11
			#공식 (int)(Math.random()*경우의 수 + 시작 수) <
		 * */
		System.out.println(Math.random());
		
		//주사위를 뽑아내려고 한다.
		// 주사위의 수 : 6, 시작수: 1
		int dice=(int)(Math.random()*6+1);
		System.out.println("주사위"+dice);
		
		// 동전 앞, 뒤 처리
		// 경우의 수: 2 ==> 0, 1
		int coin = (int)(Math.random()*2);
		if(coin==0) {
			System.out.println("앞 면");
		}else {
			System.out.println("뒷 면");
		}
		
		//ex1) 국어점수(0~100)를 임의로 처리하여 출력
		int kor = (int)(Math.random()*101);
		System.out.println("국어점수: "+kor);
		//ex2) 가위/바위/보 게임을 하여 두 명이 게임한 결과를 출력하세요
		int rsp1 = (int)(Math.random()*3);//1=묵 2=찌 3=빠
		int rsp2 = (int)(Math.random()*3);
		
		System.out.print("첫번째 사람 결과: ");
		if(rsp1==0) System.out.println("가위");
		if(rsp1==1) System.out.println("바위");
		if(rsp1==2) System.out.println("보");
		
		System.out.print("두번째 사람 결과: ");
		if(rsp2==0) System.out.println("가위");
		if(rsp2==1) System.out.println("바위");
		if(rsp2==2) System.out.println("보");
		
		//ex3) 홀짝게임을 하여 홀/짝을 출력하세요
		int numGame = (int)(Math.random()*20+1);
		if(numGame%2==0) {
			System.out.println("짝");
		}else {
			System.out.println("홀");
		}
		
		int gameIdx = (int)(Math.random()*2);
		
		String result = "짝";
		if(gameIdx==1) result = "홀";
		Scanner sc = new Scanner(System.in);
		System.out.println("홀/짝 선택하세요: ");
		String inputCh = sc.nextLine();
		System.out.println("# 결과 #");
		System.out.println("컴퓨터가 쥔 내용: "+result);
		System.out.println("내가 제시한 내용: "+inputCh);
		if(result.equals(inputCh)) {
			System.out.println("게임 승!");
		}else {
			System.out.println("플레이어 승!");
		}
		
		
//		System.out.println("결과: "+result);
		
		
		//Random r = new Random();
				//외부 패키지를 통해서 임의의 값에 대한 처리 -> import해서쓰는것

	}

}
