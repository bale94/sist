package javaexp.a09_inherit;

import java.util.ArrayList;

public class A04_Polymorphism {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 다형성(Polymorphism)
		1. 같은 타입이지만 실행 결과가 다양한 객체 대입(이용)가능한 성질을 말한다.
			- 부모 타입에는 모든 자식 객체가 대입 가능
			- 자식 타입은 부모타입으로 자동타입변환
			ex) 타이어의 공통적인 내용에서 사용시
					한국타이어, 금호타이어, 광폭타이어 등 여러가지 형태로 재정의메서드에 따라서 활용되는 것을 사용할 수 있다.
				컴퓨터의 부품(ComPart)이라는 공통 클래스에서
					Ram, Cpu, Hdd등의 기능에 따라서 여러가지 내용을 사용할 수 있다.
					이때, 상위에 있는 공통필드나 메서드를 선언하고, 하위에 재정의하여 활용하면 프로그램을 효율적으로 처리할 수 있다.
			
		2. 자동 타입 변환(Promotion)
			- 프로그램 실행 도중에 자동타입변환이 일어나는 것
				부모클래스 변수 = 자식클래스타입
				class Animal{}
				class Cat extends Animal{}
				Animal an01 = new Cat();
				
		ex) 상위 Animal, 메서드로 sound() 재정의
			하위 Cat, Dog, Bird 
				다형성 처리로 출력하세요
		 * 
		 * */
		Animal a1 = new Cat();
		a1.sound();
		Animal a2 = new Dog();
		a2.sound();
		Animal a3 = new Bird();
		a3.sound();
		
		
		// 부모객체가 형변환이 일어나서 하위객체로 생성
		Larva l1 = new Dron();
		l1.attack();
		Larva l2 = new Zerggling();
		l2.attack();
		// ex) 상속을 Hydra클래스를 선언하고 attack()메서드 공격력+3 처리하세요
		Larva l3 = new Hydra();
		l3.attack();

		Animal an01 = new Cat();
		an01.eatFood(); an01.sound();
		ArrayList<Animal> anList = new ArrayList<Animal>();
		anList.add(new Cat());
		anList.add(new Dog());
		anList.add(new Bird());
		anList.add(new Bird());
		System.out.println("# 다중의 객체의 기능을 배열로 처리 #");
		for(Animal an:anList) {
			an.eatFood(); an.sound();
		}
		System.out.println("임의의 객체 호출");
		int ranIdx = (int)(Math.random()*3);
		anList.get(ranIdx).sound();
		
	}
}
// StarCraft
// - Zerg
//	Larva ==> Dron
//		  ==> Zerggling
//		  ==> Hydra

class Larva{
	public void attack() {
		System.out.println("공격을 하다");
	}
}
class Dron extends Larva{

	@Override
	public void attack() {
		super.attack();
		System.out.println("공격력 +1");
	}	
}
class Zerggling extends Larva{

	@Override
	public void attack() {
		super.attack();
		System.out.println("공격력 +2 빠른공격");
	}
}
class Hydra extends Larva{

	@Override
	public void attack() {
		super.attack();
		System.out.println("공격력 +3 원거리");
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
