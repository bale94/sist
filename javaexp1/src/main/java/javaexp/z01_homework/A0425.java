package javaexp.z01_homework;

public class A0425 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
# 아래 과제 결과를 카톡 text복사해서 메세지로 전달: 양현수
1. 코드처리(카톡)
	1) 자바의 컴파일과 실행과정을 A0425.java를 통해서 설명하세요
	2) 변수명을 아래와 같이 선언하고 출력하세요
		문자열 선언 방법: (찾아보기)
		정수형/실수형 선언과 할당
		이름, 나이, 키 변수를 선언하여 출력하세요.
		
2. ppt자료작성 (파일전송)
	1) 자바 기본 환경 설정 ppt자료로 작성하여 전달해 주세요.
		경로: c:\a02_javaexp
			jdk설치
			workspace
			eclipse
 * */
//		1) 코드처리
		//변수를 선언하고 할당한다.
		String name = "Sangjun";
		int age = 28;
		double height = 184.5;
		//할당된 변수들을 sysout을 통해 출력한다.
		System.out.println("이름: "+name);
		System.out.println("나이: "+age);
		System.out.println("키: "+height+"cm");
//		main메소드가 있는 곳에서 소스파일을 실행을 하게 되면 
//		소스파일을 자바컴파일러가 컴파일하여 컴파일된 코드가 JVM의 클래스 로더에게 전송된다.
//		필요한파일들이 jvm의 메모리에 로드되고 문제가없는지 검사된다.
//		각각의 클래스들이 필요로하는 메모리를 할당하고 변수들을 적절하게 초기화한다.
//		실행엔진이 jvm의 메모리에 올라온 코드들을 가져와서 실행한다.
		
//		1) 저장시, javac A0425.java가 실행되고, A0425.class 생성
//		main()가 포함되어 있으면, java A0425통해서 main()안에 있는 {}내용을 수행해준다.
	}

}
