package javaexp.z01_homework;

import java.util.Scanner;

public class A0428 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2022-04-28
//[1단계:개념]1. 반복문 for, while, do while의 차이점을 기술하세요.
//				for문은 조건이 충족될때까지 루프가 돌아가는 조건문 ( 총 횟수를 알고있을때 )
//				while문은 조건이 충족되어있는 동안 루프가 돌아가는 조건문
//				do while문은 일단 최초한번 실행하고, 그 후 조건이 맞으면 while문을 돌리는것
		
//[1단계:개념]2. for문의 기본 구성요소를 기본 예제를 통하여 특징을 기술하세요.
		for(int num=0;num<=10;num++) {
			System.out.println(num);
		}//int num=0 -> 연산자 초기화 num>=10 -> 조건식 num++ -> 증감식 sysout: 반복문이 실행되는동안 실행되는 코드
		
//[1단계:개념]3. for(기본) - 200에서 3씩 차감하여 100까지 차감된 데이터를 출력하세요
		for(int num=200; num>=100; num-=3) {
			System.out.print(num+"\t");
		}System.out.println();
//[1단계:개념]4. for(지역/전역) - 곰돌이가 하루 빵을 2개씩 증가해서 먹어(첫째날 2개, 둘째날 4개, 셋째날 6개 ...) 총 10일 동안 먹은 빵의 갯수를 누적하여 아래와 같이 출력하세요
//            # 출력 형식
//            1일차 2개 2개
//            2일차 4개 6개
//            3일차 6개 10개
		int bread=2; int total=0;
		for(int day=1;day<=10;day++) {
			total+=bread;
			bread+=2;
			System.out.println(day+"일차\t"+day*2+"개\t"+total+"개");
		}
//[1단계:코드]5. 3/6/9게임 2단계 1~20까지 해당 게임과 같이 출력처리하세요(모두 출력해주세요)
//            1) 1단계 : 3의 배수에 짝이라 표기
//            2) 2단계 : 1 2 짝 4 ... 10 11 12 짝 14 15 16 짝... num%3==0 ? "짝 " : num+"\t";
		for(int num=1;num<=20;num++) {
			System.out.print(num%3==0 ? "짝 " : num+" ");
		}System.out.println();
		
		for(int num=1;num<=20;num++) {
			if(num<=10) {
				System.out.print(num%3==0 ? "짝 " : num+" ");
			}else {
				System.out.print(num%3==1 ? "짝 ": num+" ");
			}
		}System.out.println();
//[1단계:코드]6. 100에서 1/4로  4회 누적해서 나눈 값을 아래의 형식으로 출력 하세요
//           초기데이터 100
//           1회  25 
//           2회  6.2..
//           3회  1.54...
//           4회  0.38..
		double hun = 100;
		for(int num=1; num<=4; num++) {
			hun /= 4;
			if(num!=1) {
				System.out.println(num+"회\t"+hun);
			}else {
				System.out.println(num+"회\t"+(int)hun);
			}
		}
//[1단계:개념]7. 반복문에서 break와 continue의 차이점을 기본 예제를 통하여 기술하세요
//		break는 어떠한상황에서도 루프를 중단시키고 그 시점에서 바로 루프를 탈출한다.
//		continue는 루프 중 그 부분을 passby, 즉 넘어가고 조건을 만족하는 다음부분으로 넘어간다.
		for(int num=1;num<=10;num++) {
			if(num==9) {
				break; // 9가되면 for문 밖으로 나간다.
			}else if(num == 5) {
				continue; // 1234까지하고 5 스킵 후 6으로넘어간다.
			}else {
				System.out.print(num);
			}System.out.println();
		}
//[2단계:코드]8. [continue 활용]1~12월까지 마지막일수*10으로 월급여 산정하되, 31일만 있는 월만 산정해서 출력하고
//						나머지 월(30일, 28일까지 있는 달)은 산정 처리하지 않고 총 급여을 아래와 같이 출력하세요
//                월  일수   월급여 누적연봉      
//                1월 31일  310만 310만원
//                3월 31일  310만 620만원
//                5월 31일  310만 930만원
//                ..
//                12 31일  .. 
		System.out.println("월\t일수\t월급여\t누적연봉");
		int date1=28,date2=30,date3=31;
		int totpay=0, pay=10;
		for(int month=1;month<=12;month++) { // 1,3,5,7,8,10,12
			if(month<8) {
				if(month%2!=0) {
					totpay+=pay*date3;
					System.out.println(month+"월\t"+date3+"일\t"+pay*date3+"만원\t"+totpay+"만원");
				}else {
					continue;
				}
			}else {
				if(month%2==0) {
					totpay+=pay*date3;
					System.out.println(month+"월\t"+date3+"일\t"+pay*date3+"만원\t"+totpay+"만원");
				}else {
					continue;
				}
			}
		}
//[1단계:개념]9. Scanner 객체 선언과 사용법을 기술하세요.
		Scanner sc = new Scanner(System.in);
//		이때 util이 없을경우 따로 import하여 사용한다. 스캐너를 선언한 뒤
//		System.out.println("이름이 뭔가요?");
//		String name = sc.nextLine();
		//nextLine함수를 통해 string을 입력받을수있고, nextInt를 통해 숫자를 입력받을수있다.
		
//[1단계:확인]10. Scanner 객체를 통해서 국어, 영어, 수학 점수를 숫자로 입력받아 합산과 평균을 출력하세요.
		System.out.println("국어점수: ");
		int kor = sc.nextInt();
		System.out.println("영어점수: ");
		int eng = sc.nextInt();
		System.out.println("수학점수: ");
		int mat = sc.nextInt();
		int sum = kor+eng+mat;
		double avg = sum/3;
		System.out.println("총 점수의 합은: "+sum+"점이고, 평균은: "+avg+"점이다.");
		
		
		
	}

}
