package javaexp.z01_homework;

import java.util.Scanner;

public class A0429 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

//		2022-04-29
//[1단계:개념] 1. Math.radom() 기능의 기본 임의 데이터 처리 공식을 예제를 통해 기술하세요.
		int num = (int)(Math.random()*10+1);
		System.out.println(num);
		// 0.0~1.0 범위를 랜덤으로 산출하는 함수이기에 int값으로 뽑아내려면 10을 곱해주어서 자연수범위로 올려주어야한다.
		
//[1단계:응용] 2. 학생 30명의 반에 영어점수(1~100)가 반복문으로 통해 임의로 처리되게 하세요.
//      예) 번호 점수, 최하단에 반전체 평균을 출력하세요.
		int stuScore=0;
		System.out.println("번호\t점수");
		for(int stu=1;stu<=30;stu++) {
			int engScore = (int)(Math.random()*100+1);
			stuScore += engScore;
			System.out.println(stu+"번\t"+engScore+"점");
		}System.out.println("반 전체 평균: "+stuScore/30);
		
//[2단계:응용] 3. 두명(컴퓨터vs컴퓨터)의 구슬 홀짝게임 : 한명이 구슬 10개를 가지고 임의의로 쥐게 하여, 
//       다른 한명이 이것을 맞추었는지 여부에 따라 승/패로 출력하게 하세요.
//		int ball = ((int)(Math.random()*10+1))%2;
//		String ballPick;
		Scanner sc = new Scanner(System.in);
//		if(ball==0) {
//			ballPick = "짝";
//		}else {
//			ballPick = "홀";
//		}
//		System.out.println("컴퓨터가 뽑은 구슬의 갯수는(홀/짝)?: ");
//		String comBall = sc.nextLine();
//		if(comBall.equals(ballPick)) {
//			System.out.println("승리!");
//		}else {
//			System.out.println("패배!");
//		}
		
		
//[1단계:응용] 4. 두 팀(홍/청-컴퓨터vs컴퓨터)이 주사위를 던져 홍팀의 결과를 출력하세요(승/무/패)
		int dice1 = (int)(Math.random()*6+1);
		int dice2 = (int)(Math.random()*6+1); //양쪽 주사위 뭐나왓는지 프린트해서 보여주는것도 추가햇어야했다
		if(dice1>dice2) {
			System.out.println("홍팀 승!");
		}else if(dice1==dice2) {
			System.out.println("무승부");
		}else {
			System.out.println("홍팀 패!");
		}
		
//[1단계:개념] 5. while문의 기본 형식을 예제를 통해 설명하세요.
		//while문은 조건문을 만족하는 동안 계속해서 반복식이 무한루프를 도는 반복문이다.
		int number=0;
		while(true) {
			System.out.println(number);
			number++;
			if(number==9) {
				break;	//하지만 이렇게 중간에break문을 걸어준다면 해당조건을 만족할때 while문은 종료된다.
			}
		}
		
//[1단계:응용] 6. while문을 이용해서 학생의 국어,영어,수학점수를 등록하고 총점과 평균을 
//   출력하되, 등록을 종료시 -1를 입력해서 처리하세요.
//		int krScore=0, enScore=0, maScore=0, krTot=0, enTot=0, maTot=0, stack1=0, stack2=0, stack3=0;
//		System.out.println("점수를 각각 입력하세요, -1을 입력하면 종료됩니다.");
//		while(true) {
//			System.out.println("국어점수는?: ");
//			krScore = sc.nextInt();
//			if(krScore==-1) {
//				System.out.println("국어 총점: "+krTot+" 평균: "+krTot/stack1);
//				System.out.println("영어 총점: "+enTot+" 평균: "+enTot/stack2);
//				System.out.println("수학 총점: "+maTot+" 평균: "+maTot/stack3);
//				break;
//			}
//			krTot += krScore;
//			stack1++;
//			System.out.println("영어점수는?: ");
//			enScore = sc.nextInt();
//			if(enScore==-1) {
//				System.out.println("국어 총점: "+krTot+" 평균: "+krTot/stack1);
//				System.out.println("영어 총점: "+enTot+" 평균: "+enTot/stack2);
//				System.out.println("수학 총점: "+maTot+" 평균: "+maTot/stack3);
//				break;
//			}
//			enTot += enScore;
//			stack2++;
//			System.out.println("수학점수는?: ");
//			maScore = sc.nextInt();
//			if(maScore==-1) {
//				System.out.println("국어 총점: "+krTot+" 평균: "+krTot/stack1);
//				System.out.println("영어 총점: "+enTot+" 평균: "+enTot/stack2);
//				System.out.println("수학 총점: "+maTot+" 평균: "+maTot/stack3);
//				break;
//			}
//			maTot += maScore;
//			stack3++;
//		}
		
		
//[2단계:응용] 6. while문 숫자 맞추기 게임, 컴퓨터가 임의로 1~100범위의 숫자를 저장하면,
//   while문을 통해서 해당 숫자를 입력한다. 비교해서 동일하면 종료,
//   보다크다/보다 작다라는 hint로 맞추기를 진행할 수 있도록 한다. 최종적으로 몇번만에 맞추었는지 표기
		int num01, pick, stack=0;
		num01 = (int)(Math.random()*100+1);
		System.out.println("숫자를 맞춰보세요(1~100)");
		pick = sc.nextInt();
//		while(pick!=num01) {
//			if(pick>num01) {
//				System.out.println("고르신 숫자보다 작습니다!");
//				stack++;
//				pick = sc.nextInt();
//			}else {
//				System.out.println("고르신 숫자보다 큽니다!");
//				stack++;
//				pick = sc.nextInt();
//			}
//		}
//		System.out.println("정답입니다! 걸린 횟수는 총: "+(++stack));
		
		//강사님이 보여준 답안
		boolean isOK = false;
		do {
			stack++;
			System.out.println(stack+"번째 도전! \n 맞힐숫자를 입력하세요: ");
			pick = sc.nextInt();
			if(num01>pick) {
				System.out.println("숫자가 크다!");
			}
			if(num01<pick) {
				System.out.println("숫자가 작다!");
			}
			isOK = num01==pick;
		}while(!isOK);
		System.out.println(stack+"번째만에 맞추었습니다 \n축하합니다");
		
//[1단계:개념] 7. 참조변수가 무엇인지? 메모리 영역을 기본 데이터유형과 비교하여
//      기본 예제를 통해서 설명하세요.
		//기본유형외의 타입들이 stack영역말고 heap영역에 할당되는데, 이떄 heap영역의 주소값을
		//stack영역에 할당하게된다.이때 객체유형은 heap영역을 참조한다고 해서 참조변수라고 부른다.
		Number num1 = new Number();
		Number num2 = new Number();
		//이 때의 두 변수 num1과 num2는 서로 다른 영역을 할당하기떄문에 주소값이 다르고
		Number num3 = num1;
		//num1을 참조한 num3은 같은 주소값을 갖게된다.
		
		
//[1단계:확인] 8. Music 클래스를 선언하고, 해당 m01, m02 참조변수를 선언하고, 비교하세요.
		Music m01 = new Music();
		Music m02 = new Music();
		System.out.println("주소값의 비교: "+(m01.equals(m02))); //false, 즉 다르다.
//[1단계:개념] 9. String 객체의 주소 활용방식을 ==, .equals()를 통하여 기본예제로 기술하세요. 
		String s01 = new String();
		String s02 = new String();
		String s03 = s01;
		System.out.println("주소값은 같은가: "+(s01==s03));
		System.out.println("주소값은 같은가: "+(s01.equals(s03)));
		System.out.println("주소값은 같은가: "+(s01==s02));
		System.out.println("주소값은 같은가: "+(s01.equals(s02)));
		System.out.println("s01의주소: "+s01);
		System.out.println(s02);
		System.out.println(s03);
		//new String("ghdf")처럼 지정해서 만들경우 == 메서드는 true라고 나오지만
		//s01과 s02는 다른 주소에 저장된 것이므로 .equals 메서드로 하게되면 false값을 얻을수 있다.
	}

}

class Number{}

class Music{}
