package javaexp.a02_start2;

public class A06_CharCodeExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 ex) int와 char형으로 (int), (char)형식으로
		 형변환하여 code값과 코드값에 해당하는 문자를 확인할 수 있다.
		 1) a, A, z, Z의 코드값을 확인하여 출력하세요.
		 2) 코드값 69, 80의 문자를 확인하여 출력하세요.
		 * */
		char char01 = 'a';
		char char02 = 'A';
		char char03 = 'z';
		char char04 = 'Z';
		System.out.println("a의 코드값은: "+(int)char01);
		System.out.println(char01+"의 코드값은: "+(int)char01);
		System.out.println("A의 코드값은: "+(int)char02);
		System.out.println(char02+"의 코드값은: "+(int)char02);
		System.out.println("z의 코드값은: "+(int)char03);
		System.out.println(char03+"의 코드값은: "+(int)char03);
		System.out.println("Z의 코드값은: "+(int)char04);
		System.out.println(char04+"의 코드값은: "+(int)char04);
		
		int num01 = 69;
		int num02 = 80;
		System.out.println("69의 문자는: "+(char)num01);
		System.out.println(num01+"의 문자는: "+(char)num01);
		System.out.println("80의 문자는: "+(char)num02);
		System.out.println(num02+"의 문자는: "+(char)num02);
		
		/*
		 # 정수형 데이터의 기본 데이터 유형
		 ex1) 300이 할당할 수 있는 최소 데이터 유형을 확인하여 출력하세요.
		 ex2) 15억, 20억의 정수형 데이터유형을 선언하고, 이를 합산하여 할당할 데이터 유형을 선언하여 출력하세요.
		 * */
		short num03 = 300;
		int num04 = 300;
		System.out.println(num03);
		int num05 = 1500000000;
		long num06 = 2000000000L;
		System.out.println(num05+"의 데이터유형은 int");
		System.out.println(num06+"의 데이터유형은 long");
		System.out.println((num05+num06)+"의 데이터유형은 long");

		
		/*
		Math.random()과 함꼐 임시 비밀번호 발급
		 * */
		for(int code=65;code<=90;code++) {
			System.out.println(code+":"+(char)code);
		}
		for(int cnt=1;cnt<=8;cnt++) {
			int ranCode = (int)(Math.random()*26+65);
			System.out.println(ranCode+":"+(char)ranCode);
		}
	}

}
