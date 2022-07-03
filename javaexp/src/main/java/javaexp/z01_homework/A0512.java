package javaexp.z01_homework;

public class A0512 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. protected의 접근 범위에 대하여 예제를 통하여 기술하세요
		// 같은 패키지에 있을때 상속관계면 모두 접근이 가능하고, 외부패키지여도 상속관계면 접근이 가능하다.
		// 하지만 단순히 외부패키지에 존재하거나한다면 접근이 불가능하다. 또한 같은패키지라면 상속관계가 아니어도 접근이 가능하다.
		
//		[1단계:개념] 2. 다형성을 오버라이딩과 함께 기본 예제를 통하여 설명하세요.
		Animal a1 = new Cat();	//부모단계에 있는 공통메서드를 자식단계에서 쓸수 있고, 자식 단계에서 다양한 실행결과를
								// 낼 수 있다.(재정의)
		a1.sound();
		
//		[1단계:확인] 3. 상위 컴퓨터 부품(ComPart), 하위 Ram, Hdd, Cpu롤 선언하여 fuction메서드를 통해 
//						해당 기능을 출력하게 선언하고 다양한 기능이 처리되게 하세요..
		ComPart cp1 = new Cpu();
		cp1.function();
		ComPart cp2 = new Hdd();
		cp2.function();
		ComPart cp3 = new Ram();
		cp3.function();
//		[1단계:개념] 4. 추상 클래스의 특징을 기술하세요. 
		// 추상클래스는 실체클래스의 부모클래스 역할을하며, 실체클래스들의 공통되는 클래스와 메소드를 정의한 클래스이다.
		// body({})가 없는 추상메소드가 하나라도 존재하면 추상클래스로 선언되어야 하고 이때 하위의 추상메소드는
		// 반드시 재정의되어야한다. 그리고 추상클래스는 절대 혼자 생성될 수없으며 다형성에 의해 정의된다.
		
//		[1단계:확인] 5. 추상/구상클래스 선언하되, 추상클래스 Robot : 필드로 로봇종류, 추상메서드 attack(), 
//						공통메서드 move() 선언하여 처리되게 하세요.
		Robot01 r01 = new Dagan01();
		r01.attack();
		r01.move();
		Robot01 r02 = new GoldRun();
		r02.attack();
		r02.move();
		
//		[1단계:개념] 6. 인터페이스의 역할을 기술하세요
		// 객체 교체가 될 수 있도록 하여 개발코드가 객체에 종속되지 않게해준다.
		// 개발 코드 변경없이 리턴값 또는 실행내용이 다양해 질 수 있다
		
//		[1단계:확인] 7. 인터페이스로 SoundWay 추상메서드 sound(), 하위상속클래스 NormalSound(꽥꽥꽥), 
//						EleSound(삑삑삑)로 처리하고, 
//		             Duck클래스에 SoundWay를 필드로 선언 setSound(SoundWay sw)를 통해서 할당하고 
//						duckSound()메서드를 통해서 출력처리하게 하세요.
		SoundWay sw = new NormalSound();
		sw.sound();
		Duck d1 = new Duck();
		d1.duckSound();
		d1.setSw(new EleSound());
		d1.duckSound();
		// 소리의 여러가지 다양한 종류가 필요하면 SoundWay를 상속받은(implements)
		// 실제클래스를 통해서 처리할 수 있다.
		
		

	}

}
class Duck{
	public SoundWay sw;

	public void setSw(SoundWay sw) {
		this.sw = sw;
	}
	public void duckSound() {
		if(sw!=null) {
			System.out.println("소리낸다!!");
			sw.sound();
		}else {
			System.out.println("정보가 없습니다.");
		}
	}
}
// SoundWay s = new NormalSound();	// 다형성 + 재정의
interface SoundWay{
	void sound();	// public abstract
}
class NormalSound implements SoundWay{
	@Override
	public void sound() {
		System.out.println("꽥꽥꽥");
	}
}
class EleSound implements SoundWay{
	@Override
	public void sound() {
		System.out.println("삑삑삑");
	}
}


abstract class Robot01{
	private String type;
	public Robot01(String type) {
		this.type = type;
	}
	
	public String getType() {
		return type;
	}

	public void move() {
		System.out.println(type+"이 움직인다");
	}
	
	abstract public void attack();
}
class Dagan01 extends Robot01{
	public Dagan01() {
		super("Dagan01");
	}
	@Override
	public void attack() {
		System.out.println(getType()+"은 공격중이다!");
	}
	
}
class GoldRun extends Robot01{
	public GoldRun() {
		super("GoldRun");
	}
	@Override
	public void attack() {
		System.out.println(getType()+"은 진격중이다!");
	}
}


class ComPart{
	String name;
	public ComPart(String name) {
		this.name = name;
	}
	public void function() {
		System.out.println(name+"의 기능");
	}
}
class Cpu extends ComPart{

	public Cpu() {
		super("CPU");
	}
	@Override
	public void function() {
		super.function();
		System.out.println("중앙처리장치입니다.");
	}
}
class Ram extends ComPart{
	public Ram() {
		super("RAM");
	}
	@Override
	public void function() {
		super.function();
		System.out.println("휘발성 메모리 저장소입니다.");
	}
}
class Hdd extends ComPart{

	public Hdd() {
		super("HDD");
	}
	@Override
	public void function() {
		super.function();
		System.out.println("주 저장소 입니다.");
	}
}


class Animal{
	String kind;
	public Animal(String kind) {
		this.kind = kind;
	}
	public void eatFood() {	//공통기능메서드
		System.out.println(kind+"가 음식을 먹다");
	}
	public void sound() {//하위에서 다양하게 처리할 메서드
		System.out.println(kind+" 울음소리");
	}
}
class Cat extends Animal{
	public Cat() {
		super("고양이");
	}
	@Override
	public void sound() {
		super.sound();
		System.out.println("야옹");
	}
	
}
class Dog extends Animal{
	public Dog() {
		super("강아지");
	}
	@Override
	public void sound() {
		super.sound();
		System.out.println("멍멍");
	}
	
}
class Bird extends Animal{
	public Bird() {
		super("새");
	}
	@Override
	public void sound() {
		super.sound();
		System.out.println("짹짹");
	}
	
}
