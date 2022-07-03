package javaexp.a09_inherit;

public class A03_Overriding {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 메소드 재정의(Overriding)
		1. 부모클래스의 상속 메소드 수정해서 자식클래스에서 재정의 하는것
			==> 다형성 처리(효과를 알 수 있음)
		2. 메소드 재정의 조건
			1) 부모 클래스의 메소드와 동일한 메서드명을 가져야 한다.
			2) 접근제한을 더 강하게 오버라이딩하는것은 불가능하다.
				상위 default(X) ==> 하위 default(X), protected, public
				상위 protected ==> 하위 protected, public
				상위 public ==> 하위 public
		3. @Overriding 어노테이션
			컴파일러에게 부모 클래스의 메소드 선언부와 동일한지 검사 지시
			정확한 메소드 재정의 위해 붙혀주면 된다.
			ex) 해당 내용을 선언하고, 오기나 잘못된 메서드표기 시 오버라이딩 할때까지 에러가 표기된다.
		4. 메서드 재정의 효과
			1) 부모 메서드는 숨겨지는 효과 발상
				- 재정의된 자식 메서드 실행
		 * */
		
		Soldier s1 = new Soldier();
		s1.working();
		TaxiDriver td = new TaxiDriver();
		td.working();
		
		/*
		ex) 재정의 상위클래스로 Company 선언하고 회사명, earnMoney() 재정의한 메서드
				SamsungEle, HydaiHM
				
		 * 
		 * */
		SamsungEle se = new SamsungEle();
		se.earnMoney();
		HydaiHM hdm = new HydaiHM();
		hdm.earnMoney();

	}

}
class Company{
	private String name;
	public Company(String name) {
		this.name = name;
	}
	public void earnMoney() {
		System.out.println(name+" 돈을 번다");
	}
}

class SamsungEle extends Company{
	public SamsungEle(String name) {
		super(name);// super() 부모클래스에서 선언된 생성자를 호출
	}
	
	public SamsungEle() {
		this("삼성전자");	//this() 현재 선언된 생성자를 호출
	}
	
	// @Override를 선언하면 재정의 메서드인지를 확인하여 컴파일시, check해준다.
	@Override
	public void earnMoney() {
		super.earnMoney();
		// 재정의 하였기에 부모클래스가 선언한 메서드와 동일한 메서드를 가지고있다.
		// 부모의 메서드 내용을 구분하여 호출할 때, super.를 활용한다.
		System.out.println("전자제품판매");
	}
}
class HydaiHM extends Company{
	public HydaiHM() {
		super("현산개발");
	}

	
	@Override
	public void earnMoney() {
		super.earnMoney();
		System.out.println("배를판매");
	}
	
}

class Worker01{
	private String kind;
	public Worker01(String kind) {
		this.kind = kind;
	}
	public void working() {
		System.out.println(kind+"일을 합니다");
	}
}

class Soldier extends Worker01{
	public Soldier() {
		super("군인");
	}
	public void working() {
		super.working();	//현재 정의된 클래스와 상위 클래스를 구분하게 super.활용
		System.out.println("나라를 지킵니다.");
	}
	
}
class TaxiDriver extends Worker01{

	public TaxiDriver() {
		super("택시운전기사");
	}

	@Override
	public void working() {
		// TODO Auto-generated method stub
		super.working();
	}
	
}


