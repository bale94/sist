package javaexp.a04_process;

public class A05_For {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		3) 출력할 내용에 대한 연습
//			System.out.print() : 줄 바꿈 없이 한줄에 출력
//			System.out.println() : 줄 바꿔서 한줄에 출력
//			System.out.print("\t") : 탭 간격 처리
//			System.out.print("\n") : 줄 바꿈 처리

		for(int cnt = 1; cnt <= 10; cnt++) {
			System.out.println("hi"+cnt);
		}
		for(int cnt = 1; cnt <= 10; cnt++) {
			System.out.print(cnt+",");
		}
		System.out.println();
		for(int cnt=1;cnt<=10;cnt++) {
			System.out.print(cnt+"\t");
		}
		System.out.println();
		// # 아래와 같이 여러가지 형식으로 화면에 출력하세요
		// ex1) 1+2+...+10+ 를 출력
		for(int num=1;num<=10;num++) {
			System.out.print(num+" + ");
		}
		System.out.println();
		
		// ex2) ^^ 100 ^^ 99 ^^ ... 90 출력
		for(int num=100;num>=90;num--) {
			System.out.print(" ^^ "+num);
		}
		System.out.println();
		
		// ex3) 구구단에서 숫자 5를 활용하여 다음과같이 출력
		//		5*1=5
		for(int num=1;num<=9;num++) {
			int dan=5;
			System.out.println(dan+" * "+num+" = "+dan*num);
		}
		
		// ex4) 1) I love you ! ♥ ♥ 2) I love you !  ♥ ♥  3) I love you !  ♥ ♥ 4) I love you !  ♥ ♥
		for(int num=1;num<=4;num++) {
			System.out.print(num+") I love you ! ♥ ♥ ");
		}
		System.out.println();
		
		// ex5) 100 - 90 - 80 - 70 - 60 - 50
		for(int num=100; num>=50; num-=10) {
			if(num!=50) {
				System.out.print(num+" - ");
			}else {
				System.out.print(num);				
			}
		}System.out.println();
		/*
		2. 반복문 밖에 외부 변수를 통한 처리
			1) 지정된 변수를 설정하고 반복문의 변수와 혼합하여 출력
				ex) 구구단의 단수, 1~10까지 반복변수, 혼합하여 구구단 출력
			2) 누적 데이터 처리
				합산할 변수 선언
				변수를 통해 누적 처리 데이터 출력
		 * 
		 * */
		int sum = 0; //반복문 밖의 전역변수 설정
		for(int cnt=1;cnt<=10;cnt++) {
			int sum01 = 0;// 반복될 때마다 변수가 초기화되는 지역변수기때문에 누적이되지않는다.
			sum01 += cnt;
			sum += cnt;
			System.out.print("합산: "+sum01+"\t");
			System.out.println("합산: "+sum);
		}
		int grade = 8;
		for(int cnt = 1; cnt<=9; cnt++) {
			System.out.println(grade+" X "+cnt+" = "+(grade*cnt));
		}
		//김밥 한개당 2500으로 첫번째 날에는 1개를 판매, 두번째 날에는 2개를 판매.. 10일동안 판매된 김밥을 출력하고
		// 총 판매액을 프로그램적으로 구현하세요.
		int kimbob = 2500; int sum01=0;
		for(int date=1;date<=10;date++) {
			System.out.println(date+"일차 판매금액: "+date*kimbob);
			sum01+=date*kimbob;
		}
		System.out.println("총 판매액은: "+sum01);
		// 지역 변수: 반복문 안에 선언, 초기화되는 변수 = date
		// 전역 변수: 반복문 밖에서 반복문 안에 데이터를 처리할 수 있는 변수 - kimbob, sum01
		// # 아래 내용을 지역변수와 전역변수를 활용하여 처리하세요
		// ex1) 1~20 까지 합을 출력하세요
		int sum02=0;
		for(int num=1;num<=20;num++) {
			sum02+=num;
		}System.out.println(sum02);
		
		// ex2) 2 + 4 + 6 + 8 + 10 + 의 합을 출력(출력형식도 처리)하세요
		sum02 = 0;
		for(int num=2;num<=10;num+=2) {
			sum02 += num;
			if(num!=10) {
				System.out.print(num+" + ");								
			}else {
				System.out.print(num);
			}
		}System.out.println(" = "+sum02);
		
		//ex3) 짜장면의 가격이 5000일때, 1~10 그릇까지 가격을 출력하세요
		int zzaz=5000; sum02=0;
		for(int num=1;num<=10;num++) {
			System.out.println(num+"그릇 "+zzaz*num+"원");
			sum02+=zzaz*num;
		}System.out.println("총 금액은: "+sum02+"원");
		
		
		
		
		
		
	}

}
