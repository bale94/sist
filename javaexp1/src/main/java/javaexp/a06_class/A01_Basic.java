package javaexp.a06_class;

public class A01_Basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 객체 지향 프로그래밍
		1. OOP : Object Oriented Programming
		2. 부품 객체를 먼저 만들고 이것들을 하나씩 조립해 완성된 프로그램을 만드는 기법
		
		# 객체란?
		1. 물리적으로 존재하는 것(자동차, 책, 사람, etc)
		2. 추상적인 것(회사, 날짜) 중에서 자식의 속성과 동작을 가지는 모든 것
		3. 객체는 필드(속성)와 메소드(동작)로 구성된 자바 객체로 모델링 가능 
			ex) 사람 - 속성(이름, 나이), 동작(웃다, 먹다, 걷다)
				자동차 - 속성(종류, 배기량, 최고속도), 동작(운행, 정지, 좌/우회전)
		
		# 클래스의 선언
		1. 클래스의 이름
			1) 자바의 식별자 작성 규칙
				- 하나 이상의 문자
				- 첫번째 글자는 숫자가 올 수 없다.
				- $,_ 외의 특수문자는 사용할 수 없다.
				- 자바 키워드는 사용할 수 없다.
			2) 한글 이름도 가능하나, 영어 이름으로 작성
			3) 알파벳 대소문자는 서로 다른 문자로 인식
			4) 첫 글자와 연결된 다른 단어의 첫 글자는 대문자로 작성하는것이 관례
				- 네이밍 규칙 문서에 보통 가독성을 위해서 활용한다.
		# 객체 생성과 클래스변수
		1. new 연산자
			1) 객체 생성 역할 : new 클래스();
				main()영역 안에서 new 클래스명()으로 선언하는 순간 heap영역에 객체가 메모리를 잡아서 사용할 수 있게된다.
				
			2) 참조변수에는 이 heap영역의 주소값이 할당된다.
				Person p01 = new Person();
				p01 : heap영역의 참조 주소
				
		2. 클래스 변수
			1) new 연산자에 의해 리턴된 객체의 번지 저장(참조 타입 변수)
			2) heap영역의 객체를 사용하기위해 사용
				클래스 변수;
				변수 = new 클래스();
				클래스 변수 = new 클래스();
				
				스택영역			힙영역
				변수(객체의 주소)===> 객체(실제 객체가 저장된 곳)
		
		 * */
		Person p01 = new Person();
		System.out.println("객체의 참조 주소: "+p01);
		Person p02 = new Person();
		System.out.println("객체의 참조 주소: "+p02);
		// ex) Food 클래스를 선언하고, 객체 3개를 생성하고 해당 객체의 주소를 출력하세요
		Food f01 = new Food();
		Food f02 = new Food();
		Food f03 = new Food();
		System.out.println(f01);
		System.out.println(f02);
		System.out.println(f03);
	}

}
// 저장하는 순간 Person.java ==> Person.class가 만들어진다.
class Person{
	Person(){}
	//Person(){}컴파일시 자동으로 생성자가 선언되지 않으면 만들어진다.	//사용자정의 생성자를 선언하는 순간, default생성자는 사라진다.
	Person(String name){}
	Person(int age){}
	Person(byte age){}
	Person(String name, int age){}
	Person(int age, String name){}
	
	/*
	# 오버로딩
	1. 생성자나 메서드에 동일한 이름으로도 선언하여 사용할 수 있는 선언 규칙을 말한다.
		1) 궁극적인 핵심원리는 이 내용을 호출하는 곳에서 매개변수로 식별할 수 있을 때, 선언이 가능하다.
		2) 매개변수의 갯수가 다를 때
		3) 매개변수의 갯수가 같더라도 데이터 유형이 다를때
		4) 매개변수의 갯수가 같고 데이터유형이 같더라도 다른유형의 순서로 선언된 경우
	 * */
}

class Food{
	//필드 -> 객체의 데이터가 저장되는 곳 int fieldName();
	//생성자 -> 객체 생성시 초기화 역할 담당 ClassName() ...
	//메서드 -> 객체의 동작에 해당하는 실행 블록 void methodName()...
	
}



