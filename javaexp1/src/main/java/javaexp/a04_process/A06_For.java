package javaexp.a04_process;

public class A06_For {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 반복문에 조건문 사용
		1. 여러가지 조건 사용 형식
			1) 비교연산(==, !=, >=, <=, >, <), 논리식(!, &&, ||), equals()
			2) 연산자 +, -, *, /, %
				ex) 짝수인 경우 if(cnt%2==0)
					n	1	2	3	4	5...
					n%3 1	2	0	1	2...
		2. 조건문 사용시 처리하는 중단 형식
			1) break;
			2) continue;
		
		 * */
		//반복문과 연산식의 사용
		// ex) 1~100까지 숫자 중에 10~20까지만 출력을 제외하고 출력처리하세요.
		for(int cnt=1;cnt<=100;cnt++) {
			if(!(cnt>=10 && cnt<=20)) {
				System.out.print(cnt+",");
			}
		}
		System.out.println();
		//ex) 1~20의 숫자 중에 짝수만 출력하세요
		int tot = 0;
		for(int cnt=1;cnt<=20;cnt++) {
			tot+=cnt;
			if(cnt%2==0) {
				System.out.print(cnt+" ");				
			}else {
				continue;
			}
		}System.out.println("\n1~20의합: "+tot);
		// 100~90까지 합산을 아래의 형식으로 하고, 최종적으로 결과를 처리하세요
		// 100+99+98+...+90 = @@(합산결과)
		tot=0;
		for(int cnt=100;cnt>=90;cnt--) {
			System.out.print(cnt);
			if(cnt!=90) {
				System.out.print(" + ");
			}else {
				System.out.print(" = ");
			}
			tot+=cnt;
		}System.out.println(tot);
		
		// ex1) 100에서 90까지 아래의 형식으로 처리하여 뺀 최종 결과값을 출력하세요
		//		100-99-98-...-90 = @@@
		tot=200;
		for(int num=100; num>=90; num--) {
			if(num!=90) {
				System.out.print(num+" - ");
			}else {
				System.out.print(num+" = ");
			}tot-=num;
		}System.out.println(tot);
		
		// ex2) 1~100까지 출력하되 조건문을 이용하여 5단위로 줄바꿈 출력하세요
		for(int num=1;num<=100;num++) {
			if(num%5!=0) {
				System.out.print(num+"\t");				
			}else {
				System.out.print(num+"\n");
			}
		}
		//삼항연산자로도 가능하다 System.out.print(cnt+(cnt%5==0?"\n":"\t")); 이거면 한줄로끝낼수있다. 항상기억할것.
		
		// ex3) 1~10까지 해당 수가 홀인지 짝인지 표시하세요
		//		1(홀), 2(짝), ... , 10(짝)
		for(int num=1;num<=10;num++) {
			if(num%2!=0) {
				System.out.print(num+"(홀) ");
			}else {
				System.out.print(num+"(짝) ");
			}
		}//여기또한 삼항연산자 사용가능 num%2==0?"짝":"홀"
		
		
	}

}
