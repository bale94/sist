package javaexp.z01_homework;

public class A0427 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 증감연산식의 앞에 ++, 뒤에 ++의 차이점을 예제를 통하여 기술하세요.
//			ans) 앞에 ++가 붙게되면 1이 더해진값이 출력되고, 뒤에 ++가 붙으면 다음 출력값에 1이 더해진 값으로 출력된다.
		
//		[1단계:코드] 2. 짜장면(5000), 짬뽕(6000)의 가격으로 되었을 때, 증감 연산자를 활용해서
//      					1~3, 1~5까지의 총비용을 출력하세요.
		int zza = 5000; int zzam = 6000;
		int zzabowl=1; int zzambowl = 1;
		System.out.println(++zzabowl+"개의 짜장면 가격은: "+zza*(zzabowl));
		System.out.println(++zzabowl+"개의 가격은: "+zza*(zzabowl));
		System.out.println(++zzabowl+"개의 가격은: "+zza*(zzabowl)+"\n");
		System.out.println("짬뽕 1개의 가격은: "+zzam*(zzambowl++));
		System.out.println("짬뽕 2개의 가격은: "+zzam*(zzambowl++));
		System.out.println("짬뽕 3개의 가격은: "+zzam*(zzambowl++));
		System.out.println("짬뽕 4개의 가격은: "+zzam*(zzambowl++));
		System.out.println("짬뽕 5개의 가격은: "+zzam*(zzambowl));
		
		
//		[1단계:개념] 3. 비교연산식의 종류를 기술하고, 기본예제를 만들어 해당 내용에 대한 개념을 설명하세요.
//		비교연산식의 종류는 비교연산자1이 비교연산자2와 ==(같다), !=(다르다), <=(작거나같다), >=(크거나같다), >(크다), <(작다)
		int num01 = 7; int num02 = 10;
		if(num01 == num02) {
			System.out.println(num01+"은(는)"+num02+"와(과) 같다");
		}else if(num01 != num02) {
			System.out.println(num01+"은(는)"+num02+"와(과) 다르다");
		}else if(num01 >= num02) {
			System.out.println(num01+"은(는)"+num02+"보다 크거나 같다");
		}else if(num01 <= num02) {
			System.out.println(num01+"은(는)"+num02+"보다 작거나 같다");
		}else if(num01 > num02) {
			System.out.println(num01+"은(는)"+num02+"보다 크다");
		}else if(num01 < num02) {
			System.out.println(num01+"은(는)"+num02+"보다 작다");
		}else {
			System.out.println("잘못된 숫자");
		}
		
		
//		[1단계:코드] 4. 아래와 같이 비교 연산식을 이용하여 boolean(true/false) 처리하세요
//	      			1) 점수를 지정하여 A학점(90이상 경우) 여부를 출력하세요
//	      			2) 설문지(1~4지선택)에서 3번항목을 선택하지 않은 경우를 출력
//	      			3) 점수를 지정하여 60점 미만인 경우 과락이면, 과락여부를 출력
		int score = 89;
		String isA = (score>=90)?"A":"Not A";
		System.out.println(isA);
		
		int test = 3;
		if(test%4 == 1) {
			System.out.println("1번항목을 선택하였습니다.");
		}else if(test%4 == 2) {
			System.out.println("2번항목을 선택하였습니다.");
		}else if(test%4 == 3) {
			System.out.println("3번항목을 선택하지 않았습니다.");
		}else if(test%4 == 0){
			System.out.println("4번항목을 선택하였습니다.");
		}
		
		String isFail = (score<60)?"Fail":"Pass";
		System.out.println("과락여부: "+isFail);
		
		int chNum = 2;
		System.out.println("선택한 번호: "+chNum);
		System.out.println("3번항목을 선택하지 않았는지 여부: "+(chNum!=3));
//		[1단계:개념] 5. 비교연산식와 논리연산식의 차이점을 기술하세요.
//		비교연산식은 말그대로 항목과 항목을 비교하는 연산식이고, 논리연산식은 주어진 논리에 그 항목이 부합하는지를 확인하는 연산식이다.
		
//		[1단계:개념] 6. 단항연산자, 이항연산자, 삼항 연산자의 차이점을 개념과 예제를 통해 기술하세요.
//		단항연산자는 증감, 형변환과 같은 연산자이고 이항연산자는 사칙연산, 삼항연산자는 논리식에 주로쓰인다.
		int num03=5, num04=8;
		System.out.println(num03++); //단항연산자
		System.out.println(num03+num04);//이항연산자
		String isEqual = (num03==num04)?"Yes":"No"; 
		System.out.println(isEqual);//삼항연산자
		
//		[2단계:코드] 7. 삼항연산자를 이용하여 놀이공원에 입장료가 50000원 일 때, 나이가 6미만이거나 65세 이상일 때는 무료,
//               			10~20일 때는 청소년 요금으로 20%할인이 된다. 나이에 따라 무료여부와, 청소년요금제 여부를
//          				처리하고, 총비용을 출력하세요
		int pass = 50000;
		int age = 15;
		String isFree = (age<6 || age>=65)?"무료":"유료";
		String isDis = (age>=10 && age<=20)?"20%":"0%";
//		double disRatio = (age>6||age<=65)?1.0:(age>=10&&age<=20)?0.2:0.0;
//		int lastTot = pass - (int)(pass*disRatio); //강사님답안 - 삼중연산자 두번쓰는건 신기하다
//		조건1?true:false
//		조건1?조건1인경우처리:조건2?조건2인경우처리:그외경우
//		(				)(					)
		if(age>=65 || age<6) {
			System.out.println("나이가 "+age+"세 이므로"+isFree+"입니다.");			
		}else {
			if(age>=10 && age<=20) {
				System.out.println("나이가 "+age+"세 이므로"+isDis+"할인입니다.");
				System.out.println("가격은 총 "+(int)(pass*0.8)+"원 입니다.");
			}else {
				System.out.println("나이가 "+age+"세 이므로 가격은 "+pass+"원 입니다.");
			}
		}
		
//		[1단계:개념] 8. main()에서 데이터의 기본 흐름 방향을 기술하고, 조건문이 처리되는 형식에 따른
//      					플로우를 설명하세요.
//		위에서 아래로, 왼쪽에서 오른쪽으로 진행되는데이때 대입에 한해서는 오른쪽에서 왼쪽이다.
//		조건문은 조건에 해당되면 진행되고 해당되지않으면 다음조건으로 넘어간다.(위에서 아래)
		
//		[1단계:코드] 9. 조건문활용하여 1~10까지 출력하되 3/6/9게임과 같이, 
//      					해당 번호에서는 짝이라고 문자열을 출력하게 하세요.
		int game = 1;
		System.out.println(game++);
		System.out.println(game++);
		if(game == 3) {
			System.out.println("짝");
			game++;
		}
		System.out.println(game++);
		System.out.println(game++);
		if(game == 6) {
			System.out.println("짝");
			game++;
		}
		System.out.println(game++);
		System.out.println(game++);
		if(game == 9) {
			System.out.println("짝");			
		}
//		[1단계:코드] 10. if else문을 이용하여 점수에 따른 등급 A~F를 출력 처리하세요.
		int score01 = 60;
		if(score01>=90) {
			System.out.println("A");
		}else if(score01>=80) {
			System.out.println("B");
		}else if(score01>=70) {
			System.out.println("C");
		}else if(score01>=60) {
			System.out.println("D");
		}else{
			System.out.println("F");
		}
//		[1단계:코드] 11. switch case문을 활용하여 월별 날짜수를 출력하고 월이 아닌 범위는 월이 아니라고 출력하세요.
		int month = 3;
		switch(month) {
			case 1:
				System.out.println("1월은 31일까지");
				break;
			case 2:
				System.out.println("2월은 28일까지");
				break;
			case 3:
				System.out.println("3월은 31일까지");
				break;
			case 4:
				System.out.println("4월은 30일까지");
				break;
			case 5:
				System.out.println("5월은 31일까지");
				break;
			case 6:
				System.out.println("6월은 30일까지");
				break;
			case 7:
				System.out.println("7월은 31일까지");
				break;
			case 8:
				System.out.println("8월은 31일까지");
				break;
			case 9:
				System.out.println("9월은 30일까지");
				break;
			case 10:
				System.out.println("10월은 31일까지");
				break;
			case 11:
				System.out.println("11월은 30일까지");
				break;
			case 12:
				System.out.println("12월은 31일까지");
				break;
			default:
				System.out.println("월이 아닙니다.");

		}
		

	}

}
