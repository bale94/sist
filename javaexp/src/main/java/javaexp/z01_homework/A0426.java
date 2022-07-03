package javaexp.z01_homework;

public class A0426 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 [1단계:개념] 1. 변수의 초기화에 대하여, 예제를 통하여 기술하세요
[1단계:개념] 2. 기본데이터유형이 할당되는 jvm 메모리와 해당 유형 종류를 크기에 따라 기술하세요.
[1단계:코드] 3. 21억, 15억 데이터를 int에 할당하고, 합산결과를 변수를 선언하여 할당 출력하세요
[1단계:개념] 4. 150라는 데이터를 기본데이터유형 중에 어디에 할당이 가능한가를 기술하고 그 이유에 대하여 설명하세요
[2단계:코드] 5. 알파벳의 코드값 범위와 문자 0부터 9까지 범위의 코드값 범위를 확인하고 출력하세요.
[1단계:개념] 6. 형변환 두가지 유형을 예제를 통해서 기술하고 설명하세요..
[1단계:코드] 7. 500cc의 오렌지쥬스를 3잔에 나누어 할당할려고 한다. 소숫점 이하가 처리된 경우와
      소숫점 이하가 처리되지 않는 경우를 나누어 코딩하세요
[1단계:개념] 8. 연산자, 피연산자, 연산식의 개념을 기본예제를 통해서 구분하여, 설명하세요.
[1단계:코드] 9. 일일 가계부 입력에 필요한 연산식을 만들고 아래 형식으로 출력하세요
      날짜   지출구분   내용  입금액    출금액  잔액
      4/1   입금     용돈   30000         30000
      4/1   출금     점심    6000         24000
[1단계:코드] 10. 변수 선언하고 이를 이용하여 타율(안타/타석)을 계산하여 출력하세요.
[1단계:코드] 11. 삼각형의 면적을 구하는 공식을 이용하여 밑면과 높이로 출력하세요.
[1단계:코드] 12. 대입연산자와 연산자의 진행방향의 차이점을 기본 예제를 통해 설명하세요.
# 다 하신 후에 어렵거나 자세한 풀이가 필요한 문제는 제출시 표기해주세요
		 * */
		// 1) num01은 처음에 int로 정의만 되어있고 값이 초기화되지 않은상태이다.
		// 이때 num=5라고 선언함으로서 값을 초기화하여 설정해 주는 것이다.
		int num01;
		num01 = 5;
		
		// 2)jvm메모리의 종류는 크기별로 byte, short, int, long, 문자를 담는 char가 있다.
		//	byte=1byte, short=2bytes, int=4bytes, long=8bytes,
		// 문자를 담는 char=2bytes
		
		// 3) 15억과 20억을 int에 할당
		int num02 = 1500000000;
		int num03 = 2000000000;
		long sum = (long)num02 + (long)num03;
		// int에 합이 할당이 안되기에 sum은 long에 할당하고, num02와 num03을 long으로
		// 바꿔준다.
		System.out.println(sum);
		
		// 4) 150을 어디에 할당?
		short num04 = 150;
		//최소단위인 byte부터 올라가면서 정한다고 했을때, byte는 1byte의 크기로 150을 할당할 수
		// 없다. 따라서 그 위 단위인 short(2bytes)에 할당한다.
		
		// 5) 알파벳의 코드값 범위
		char ch01 = 'A';
		char ch02 = 'z';
		System.out.println(ch01+"의 값은: "+(int)ch01);
		System.out.println(ch02+"의 값은: "+(int)ch02);
		System.out.println("알파벳의 코드값 범위는: "+(int)ch01+"~"+(int)ch02+"이다");
		// 문자 0~9의 코드값 범위
		char ch03 = '0';
		char ch04 = '9';
		System.out.println(ch03+"의 값은: "+(int)ch03);
		System.out.println(ch04+"의 값은: "+(int)ch04);
		System.out.println("0~9의 코드값 범위는: "+(int)ch03+"~"+(int)ch04+"이다");
		
//		for(int cnt=0;cnt<=127;cnt++) {
//			System.out.println(cnt+":"+(char)cnt);
//		}
		
		//6) 형변환 예 2가지
		//출석율 = 실제 출석일수 / 총 일수
		int realAttendance, totDay;
		realAttendance = 9;
		totDay = 30;
		double attendance = realAttendance / (double)totDay;
		System.out.println(attendance);
		//출석율은 소숫점 아래로도 표기되는 부분이므로 총 일수를 double로 형변환하여 소숫점아래 표기
		//를 시킨다.
		// 코드값 확인
		char ch05 = 'M';
		System.out.println(ch05+"의 값은: "+(int)ch05);
		//ch05를 int로 형변환 시켜줌으로서 코드값을 알 수 있다.
		
		//7)500cc의 오렌지주스를 3잔으로
		int juice = 500;
		int cups = 3;
		// 소숫점없이
		int tot01 = juice/cups;
		System.out.println("각 컵당 "+tot01+"cc");
		//소숫점있게
		double tot02 = juice/(double)cups;
		System.out.println("각 컵당 "+tot02+"cc");
		
		//8) 연산자, 피연산자, 연산식
		int num05 = 10;
		int num06 = 50;
		num05 += 5; num06 -= 4;
		int total = num05+num06;
		//연산자: =, +=, -=, + / 피연산자: num05, num06, total
		//연산식은 위에 있는 식과 같다.
		//연산자는 연산을 하는 기호, 피연산자는 연산자에 의해 연산되어지는 개체
		//연산식은 연산자와 피연산자로 이루어진 계산식
		
		//9)
		/*
		 * 	날짜   지출구분   내용  입금액    출금액  잔액
      		4/1   입금     용돈   30000         30000
      		4/1   출금     점심    6000         24000
      */
		int amount=0, input, output;
		System.out.println("날짜 "+" 지출구분 "+" 내용 "+" 입금액 "+" 출금액 "+" 잔액 ");
		input = 30000;
		amount += input;
		System.out.println("4/1 "+"  입금  "+" 용돈 "+" "+input+" "+"     "+" "+amount+" ");
		output = 6000;
		amount -= output;
		System.out.println("4/1 "+"  출금  "+" 점심 "+"     "+"  "+output+"  "+amount);
		
		//10) 타율 = (안타/타석)
		int hit, realHit;
		hit = 25; realHit = 10;
		double hittingRate = realHit/(double)hit;
		System.out.println("타율 = "+hittingRate);
		
		//11) 삼각형의 넓이
		int bottom = 15; int height = 20;
		double triangle = (bottom*height)/(double)2; //2로 나누었을때 소수점이 나올수 있으므로
		System.out.println("밑변의 길이가 "+bottom+"이고, "+"높이가 "+height+"인 삼각형의 면적: "+triangle);
		
		//12)대입연산자와 연산자의 진행방향의 차이
		// 대입연산자 : '='
		int num07 = 15;
		int num08 = 18;
		int num09;
		num09 = num07;
		char ch06 = 'a';
		String str01 = "pple";
		System.out.println(ch06+str01+num08+num09+num07);
		System.out.println(str01+ch06+num08+num09+num07);
		System.out.println((int)ch06);
		System.out.println(num08+num09+num07+ch06+str01);
		System.out.println(num08+num09+num07+str01+ch06);
		// 문자열이 먼저 숫자보다 먼저 올 경우, 문자열이 먼저 표기되고 숫자가 표기되는데
		// 이때 숫자도 문자열로 인식되어 각각이 문자처럼 표기된다.
		// 단일문자, 문자열의 순서로 작성되거나 문자열, 단일문자의 순서로 작성되고 숫자가 올때는
		// 표기방식이 같다.
		// 하지만 숫자가 선행되어지고, 그 후에 문자열, 단일문자가 오게되면 앞의 숫자들은 +기호에의해
		// 덧셈이 되어지고 그 후에 문자열이 뒤로 붙는 형태로 표기된다.
		// 또한 숫자, 단일문자, 문자열의 순서로 진행된다면 단일문자가 코드값으로 변형되어
		// 숫자와함께 +에 의해 연산처리되고, 그 후에 문자열이 뒤에 표기되는 방식으로 표기된다.
	}

}
