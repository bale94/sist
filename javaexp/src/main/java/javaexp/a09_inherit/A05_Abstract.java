package javaexp.a09_inherit;

public class A05_Abstract {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 추상클래스(abstract class)
		1. 추상클래스 개념
			1) 추상(abstract)
				- 실체들 간의 공통되는 특성을 추출하는 것
				ex) 새, 곤충, 물고기 ==> 생물(추상)
					삼성, 현대, LG ==> 회사(추상)
			2) 추상 클래스(abstract class)
				- 실제 클래스들의 공통되는 필드와 메소드 정의한 클래스
				- 추상 클래스는 실제 클래스의 부모클래스 역할(단독 객체X)
				cf) 추상클래스법칙*********************************************************
				1. 추상메소드(abstract)가 하나라도 있으면,
					추상클래스(abstract class 클래스명)로 선언되어야하며
					ex) 추상메서드는 재정의가 목적이기에 body({})가 없다.
				2. 추상클래스가 가지고있는 추상메서드는 상속받는 하위 클래스에서 반드시
					재정의 하여야한다.
				3. 추상클래스는 혼자 생성을 하지못하고, 다형성에 의해서 생성할 수 있다.
					추상클래스 참조 = new 추상클래스(); 	(X)
					추상클래스 참조 = new 하위실체클래스(); (O)
				
		2. 추상 클래스의 용도
			1) 실체 클래스의 공통된 필드와 메소드의 이름 통일 목적
				- 실체 클래스의 설계자가 여러 사람일 경우
				- 실체 클래스마다 필드와 메소드가 제각기 다른 이름을 가질 수 있다.
			2) 실체 클래스를 작성할 때 시간 절약
				- 실체 클래스는 추가적인 필드와 메소드만 선언
			3) 실체 클래스 설계 규격을 만들고자 할 때
				- 실체 클래스가 가져야 할 필드와 메소드를 추상 클래스에 미리 정의
				- 실체 클래스는 추상 클래스를 무조건 상속 받아 작성
		3. 기본 코드
			1) 추상 클래스 선언
				public abstract class 클래스명{
					public abstract 리턴값 메소드명();
					// 메소드명(); {}body가 없음, 궁극적으로 재정의가 목적이기때문
				}
			2) 추상 클래스를 상속받은 하위 클래스(실체클래스)
				class 클래스 extends 클래스명{
					// 추상메소드는 반드시 재정의 하여야한다: (강제) - 컴파일 에러 발생
					public 리턴값 상위에선언된추상메소드(){
					
					}
				}
		 * */
		
//		Larva01 lv01 = new Larva01();	// 추상클래스는 혼자 객체생성을 하지못한다.
		Larva01 lv02 = new Mutal();	//추상클래스 = 실체클래스 형태로 객체생성이 가능하다.
		lv02.move();	// 공통메소드
		lv02.attack();	// 재정의메소드
		// ex) 삼성, 현대, LG ==> 회사(추상)
		// Company 추상클래스선언, 공통메소드: 돈을벌다(earnMoney) 추상메소드: working()
		KCompany kc01 = new Samsung();
		KCompany kc02 = new Hyundai();
		KCompany kc03 = new LG();
		kc01.earnMoney();
		kc01.working();
		kc02.earnMoney();
		kc02.working();
		kc03.earnMoney();
		kc03.working();
		KCompany [] coms = {new Samsung(), new Hyundai(), new LG()};
		for(KCompany com: coms) {
			com.earnMoney();com.working();
		}
		
		
	}

}
abstract class KCompany{
	private String name;
	public KCompany(String name) {
		this.name = name;
	}
	public void earnMoney() {
		System.out.println(name+"이 돈을 벌었는가?");
	}
	
	public String getName() {
		return name;
	}
	public abstract void working();
}
class Samsung extends KCompany{
	public Samsung() {
		super("삼성");
	}
	@Override
	public void working() {
		System.out.println(getName()+"이 돈을 벌었다");
	}
}
class Hyundai extends KCompany{
	public Hyundai() {
		super("현대");
	}

	@Override
	public void working() {
		System.out.println(getName()+"가 돈을 벌었다");
	}
}
class LG extends KCompany{
	public LG() {
		super("LG");
		// TODO Auto-generated constructor stub
	}

	@Override
	public void working() {
		System.out.println(getName()+"가 돈을 벌었다.");
	}
	
}

abstract class Larva01{
	void move() {	// 공통메소드
		System.out.println("이동하다");
	}
	abstract void attack();	// body가 없는 추상 메서드: 재정의할 메서드
}
class Mutal extends Larva01{
	// 추상클래스를 상속한 하위클래스는 추상메서드를 '반드시' 재정의 하여야한다.(메소드 통일을 유지가능) 
	@Override
	void attack() {
		System.out.println("공중원거리공격");
	}
}
class Ultra extends Larva01{
	@Override
	void attack() {
		System.out.println("근접공격");
	}
	
}


