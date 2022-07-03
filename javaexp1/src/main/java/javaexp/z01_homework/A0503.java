package javaexp.z01_homework;

public class A0503 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//		[1단계:개념] 1. 클래스와 객체의 관계를 메모리를 활용하여 설명하고, 주소값을 출력하세요..
		//클래스 변수가 객체의 주소를 저장하고, heap영역의 메모리를 객체에 사용하기위해 사용된다.
//		Person p01 = new Person();
//		System.out.println(p01);
		
//		[1단계:개념] 2. 클래스를 통해 만들어진 객체와 일반 primitive 데이터와 어떠한 차이점이 있는지 기술하세요.
		//일반 데이터는 main()안에서 정의된 방식에 의해 선언되고 할당되는데, 클래스를 통해 만들어진 객체의 데이터는
		// 클래스에 어떻게 선언되고 할당되느냐에 따라서 main()안에서 다르게 호출될 수 있다.
		
//		[1단계:개념] 3. 클래스의 구성요소 3가지를 예제를 통해서 특징을 기술하세요.
		// 필드, 생성자, 메소드가 있다.
		Person p1 = new Person("홍길동", 25);
		System.out.println(p1.name);	
		
//		[1단계:개념] 4. 매개변수의 통하여 생성자나 메서드에 데이터를 할당 처리할 수 있다. 그 기준이 되는 유형, 갯수 선언
//		              규칙(오버로딩)을 예제를 통하여 설명하세요.
		// int, String 과같은 유형으로 선언할 수 있고, 갯수의 제한은없다.매개변수의 갯수가 동일하더라도 타입의 순서가 다를때
		// 다른 생성자나 메서드로 인식하므로 선언이 가능하다.
		Game g1 = new Game("홍길동전");
		Game g2 = new Game(2500);
		Game g3 = new Game("감", 25);
		
//		[1단계:확인] 5. Car 객체의 생성자를 매개변수를 제조사, 최고속도, 배기량을 기준으로 1~3개까지 선언하고 해당 데이터를
//		            출력하세요.
		Car c1 = new Car("벤츠", 200);
		Car c2 = new Car("벤츠");
		Car c3 = new Car(200,500,"벤츠");
//		[1단계:확인] 6. 아래와 같이 여러가지 생성자를 초기화하고 출력하세요.
//		    1) Singer 클래스를 선언하고 매개변수로 이름, 소속사, 메인곡을 선언하고, 생성자를 통해서 초기화 하고 출력하세요.
//		    2) Game 클래스를 선언하고 출시회사, 비용, 인기순
		Singer sg01 = new Singer("바바", "SM", "달");
		
		Game g4 = new Game("Sony", 25000, 5);
		

	}

}
class Singer{
	String name;
	String comp;
	String song;
	
	Singer(String name, String comp, String song){
		System.out.println("이름:"+name);
		System.out.println("소속사:"+comp);
		System.out.println("메인곡:"+song);
	}
}

class Car{
	String comp;
	int maxSpeed;
	int cc;
	Car(){
		System.out.println("매개변수가 없는 생성자");
	}
	Car(String comp, int maxSpeed){
		this.comp = comp;
		this.maxSpeed = maxSpeed;
	}
	Car(int maxSpeed, int cc, String comp){
		this.maxSpeed = maxSpeed;
		this.cc = cc;
		this.comp = comp;
	}
	Car(String comp){
		this.comp = comp;
	}
}

class Person{	//필드
	String name;
	int age;
	Person(String name, int age){	//생성자
		this.name = name;
		this.age = age;
	}
	String getName() {	//메소드 (return값을 가진다)
		return name;
	}
}

class Game{
	Game(String price){
		System.out.println("게임명: "+price);
	}
	Game(int price){
		System.out.println("게임가격: "+price);
	}
	Game(String comp, int many){
		System.out.println("제조사: "+comp);
		System.out.println("생산 갯수: "+many);
	}
	
	Game(String comp, int price, int chart){
		System.out.println("회사명: "+comp);
		System.out.println("가격: "+price);
		System.out.println("인기순: "+chart);
	}
}