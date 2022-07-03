package javaexp.a04_process;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 코드 실행 흐름 제어
		1. 정상적인 코드 실행 흐름
			main()메소드의 시작인 중괄호({})는 위에서 아래로, 왼쪽에서 오른쪽으로 실행을 한다.
			단, 대입은 오른쪽에서 왼쪽으로 실행흐름을 처리한다.
		2. 제어문의 역할
			코드의 실행흐름을 개발자가 원하는 방향으로 변경할 수 있도록 도와준다.
		# 제어문의 종류
		1. 조건문
			if문, switch문
			
			if(비교연산식/논리연산식)
			
			switch(데이터){
				case 데이터1:
					break;
				...
			}
			
		2. 반복문
			for문, while문, do-while문
		3. break문, continue문
		
		# 제어문의 중첩
		1. 제어문의 중괄호 내부에 다른 제어문 작성이 가능하다.
			1) 다양한 흐름 발생 기능
		2. 유형: 아래와 같이 여러가지 중첩적으로 제어문을 만들어서 처리할 수 있다.
			조건문
				조건문
			반복문
				반복문
			반복문
				조건문
			조건문
				반복문
		 * */
		/*
		# if문
		1. 조건문 결과에 따라 중괄호{}블록을 실행할지 여부 결정할 때 사용한다.
		2. 조건식
			true/false값을 산출할 수 있는 연산식
			boolean변수
			조건식이 true이면 블록 실행하고, false이면 블록 실행하지 않는다.
			
		 * */
		int cnt=2;
		System.out.println("flow의 진행: "+cnt++);
		System.out.println("flow의 진행: "+cnt++);
		if(cnt==3) {
			System.out.println("# cnt가 3일 때 처리할 flow #");
			System.out.println("#flow의 진행: "+cnt++);
			System.out.println("# 종료 #");
		}
		if(cnt==4) System.out.println("flow의 진행(옆에 조건): "+cnt++);
		//옆에 조건을 처리할 때, 처리(중괄호 필요x)
		System.out.println("flow의 진행: "+cnt++);
		if(cnt==6) //하단에 한 라인만 조건으로 처리 프로세스를 나눌 때
			System.out.println("flow의 진행(중괄호 블럭 없이): "+cnt++);
		System.out.println("flow의 진행: "+cnt++);
		System.out.println("flow의 진행: "+cnt++);
		System.out.println("flow의 진행: "+cnt++);
		
		//ex) 과일의 갯수를 2개씩 증가시켜서 출력하게 변수를 선언하고 출력하고,
		//		4일때, 처리할 조건 블럭 설정
		//		10일때, 처리할 바로 옆에 프로세스를 처리
		//		14일때, 바로 밑에 처리할 조건 프로세스를 처리하세요.
		
		int fruCnt = 0;
		for(fruCnt=0;fruCnt<15;fruCnt+=2) {
			if(fruCnt==4) {
				System.out.println("과일의 갯수: "+fruCnt);
			}
			if(fruCnt==10) System.out.println("과일의 갯수: "+fruCnt);
			if(fruCnt==14)
				System.out.println("과일의 갯수: "+fruCnt);
		}
//		fruCnt = fruCnt - 16;
//		System.out.println(fruCnt);
//		fruCnt += 2;
//		if(fruCnt==4) {
//			System.out.println("과일의 갯수는: "+fruCnt);
//		}
//		if(fruCnt==10) System.out.println("과일의 갯수는: "+fruCnt);
//		if(fruCnt==14)
//			System.out.println("과일의 갯수는: "+fruCnt);
		int fruCnt1 = 0;
		System.out.println("과일의 갯수: "+(fruCnt1+=2));
		System.out.println("과일의 갯수: "+(fruCnt1+=2));
		if(fruCnt1 == 4) {
			System.out.println("# 4일때 처리할 조건 블럭 #");
			System.out.println("과일의 갯수: "+(fruCnt1+=2));
			System.out.println("과일의 갯수: "+(fruCnt1+=2));
			System.out.println("### 조건 종료 ###");
		}
		System.out.println("과일의 갯수: "+(fruCnt1+=2));
		if(fruCnt1 == 10) System.out.println("과일의 갯수(바로 옆): "+(fruCnt1+=2));
		System.out.println("과일의 갯수: "+(fruCnt1+=2));
		if(fruCnt1 == 14)
			System.out.println("과일의 갯수(바로 밑): "+(fruCnt1+=2));
		System.out.println((fruCnt1+=2));
		
		
	}

}
