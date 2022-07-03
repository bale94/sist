package javaexp.a07_multiObj;

public class A09_OneVsOne {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 1:1 관계
		1. 객체와 객체의 관계속에서 데이터를 처리하기 위해서 활용이된다.
		2. 하나의 객체가 다른 하나의 객체에 종속되어 처리될 때, 주로 사용된다.
		3. 실례)
			컴퓨터본체 vs CPU
			1) 종속된 클래스를 먼저 ㅅ너언
			2) 종속된 클래스가 가지고있는 속성
			따로따로 메모리를 사용하다가 특정객체에 종속된 객체로 사용을 할때, 1:1관계
			1:다 관계가 필요로한다.
			
		 * */
		Cpu c1 = new Cpu("인텔", "i7 3.4GHz");
		c1.showCpu();
		Cpu c2 = new Cpu("AMD", "3.2GHz 6코어");
		c2.showCpu();
		
		Computer01 com1 = new Computer01("조립컴퓨터");
		com1.comInfo();
		com1.addCpu(c1);//참조변수를 할당
		//ex) String name = "홍길동"; p01.setName(name);
		com1.comInfo();
		com1.addCpu(new Cpu("인텔", "i9 4.3GHz"));//객체를 바로할당
		//ex) p01.setName("홍길동");
		com1.comInfo();

	}

}
class Computer01{
	private String comp;	// 제조사:삼성/조립/LG...
	private Cpu cpu;	// 메인보드에 slot만 있고, 장착은 되지않은상태
	public Computer01(String comp) {	// 생성자를 통해서 제조사를 초기화
		this.comp = comp;
	}
	public void addCpu(Cpu cpu) {
		this.cpu = cpu;	// 기능 메서드를 통해서 외부에 있는 Cpu객체가 들어오면 slot에 할당처리
	}
	public void comInfo() {
		System.out.println("# 컴퓨터 정보 #");
		System.out.println("종류(회사): "+comp);
		if(cpu==null) {//메인보드에 slot에 cpu객체가 장착이 되지않은경우
			System.out.println("CPU가 장착되지않았습니다.");
			// cpu.showcpu(); null 즉 할당되지 않을때, 기능메서드를 호출하면
			// NullPointerException: 객체가 할당되지 않았을 때 객체의 구성요소를 호출하면 나타나는 에러
		}else {
			System.out.println(comp+"안에 있는 cpu정보");
			cpu.showCpu();
		}
	}
}

class Cpu{
	// private 외부에서 직접적인 접근을 못하게하고
	// 내부에서 전역적으로 사용할 변수/상수를 선언할 때 사용
	private String comp;
	private String perform;
	//생성자를 통해서 필드 초기화
	public Cpu(String comp, String perform) {
		this.comp = comp;
		this.perform = perform;
	}
	//해당하는 속성을 출력하는 내용
	public void showCpu() {
		System.out.println("# cpu의 정보 #");
		System.out.println("제조사: "+comp);
		System.out.println("사양: "+perform);
	}
}