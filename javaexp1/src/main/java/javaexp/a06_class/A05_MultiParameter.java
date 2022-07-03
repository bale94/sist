package javaexp.a06_class;

public class A05_MultiParameter {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 여러개의 매개변수가 있을 때 처리
		1. 생성자나 메서드는 여러개의 매개변수를 처리할 수 있고, 해당 type유형과 매개변수의 갯수에 따라 호출한다.
		Person(String name, String loc){
		}
		==> new Person("홍길동", 25);
		 * */
		Person02 p01 = new Person02("홍길동", "서울 신림동");
		Person02 p02 = new Person02("홍길동", 27);
		//ex) 여러개의 매개변수 처리
		// Bicycle 클래스를 선언하고, 생성자로 매개변수1개, 매개변수2개(데이터유형변경)을 선언하고 호출하세요.
		
		Bicycle b1 = new Bicycle(50);
		Bicycle b2 = new Bicycle("삼천리자전거", "홍길동");
		Bicycle b3 = new Bicycle("삼천리자전거", 200);
		Bicycle b4 = new Bicycle("홍길동");
		//생성자나 매개변수는
		//1) 매개변수의 타입의 유형이 다를 떄,
		//2) 매개변수의 갯수가 다를때
		//3) 매개변수의 갯수가 동일하더라도 타입의 순서가 다른 떄
		//		다른 생성자나 메서드로 인식하여 선언이 가능하다. ==> 오버로딩 규칙이라고 한다.********
		// # 궁극적으로 생성자나 매개변수에 데이터를 넘겨줄 때, 식별이 가능한 한, 선언이 가능하다.

	}

}
class Bicycle{
	Bicycle(String maxSpeed){
		System.out.println("최고속도: "+maxSpeed);
	}
	Bicycle(int maxSpeed){
		System.out.println("최고속도: "+maxSpeed);
	}
	Bicycle(String comp, String own){
		System.out.println("제조사: "+comp);
		System.out.println("소유주: "+own);		
	}
	Bicycle(String comp, int running){
		System.out.println("제조사: "+comp);
		System.out.println("달린 거리: "+running);		
	}
}
class Person02{
	Person02(String name, String loc){
		System.out.println("생성자1");
		System.out.println("이름: "+name);
		System.out.println("사는곳: "+loc);
	}
	Person02(String name, int age){
		System.out.println("생성자2");
		System.out.println("이름: "+name);
		System.out.println("나이: "+age);
	}
}