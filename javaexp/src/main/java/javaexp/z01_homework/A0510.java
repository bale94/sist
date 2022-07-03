package javaexp.z01_homework;

public class A0510 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		2022-05-10(과제)
//		[1단계:개념] 1. static 변수와 일반 변수의 차이점을 기본 예제를 통해 설명하세요.
			// static변수는 클래스 종속적으로 사용되는 변수이고, 일반변수는 객체별로 사용된다.
		Tree.Cnt = 150;
		Tree tr1 = new Tree("은행나무");
		Tree tr2 = new Tree("자작나무");
		tr1.CntTree();
		tr1.Cnt += 120;
		tr1.CntTree();
		tr2.CntTree();
		
//		[1단계:확인] 2. 가수의 정보(이름, 소속사, 현재타이틀곡)을 static과 일반변수를 적절하게 설정하고 메서드를 통해 출력하세요.
		Singer1 sg1 = new Singer1("에픽하이", "우산");
		Singer1 sg2 = new Singer1("윤하", "비밀번호");
		sg1.comp = "몰라";
		sg1.singerInfo();
		sg2.singerInfo();
		sg2.comp = "앗";
		sg1.singerInfo();
		sg2.singerInfo();
		
		
//		[1단계:개념] 3. static final 상수와 static 변수의 차이점을 기술하세요.
		//static 변수는 클래스 종속적이기에 변화를 줄수있지만, static final변수는 'final'이 있으므로 클래스에서 선언된
		// 변수에 변화를 줄 수 없다. 한번선언된 값을 계속 갖고간다.
		
//		[1단계:개념] 4. package란 무엇이고 클래스와의 관계를 설명하세요.
		// 패키지란 클래스를 기능별로 묶어서 분류해둔 것을 말한다.
		// 패키지-클래스의 상하관계로 이루어져있다. 클래스에서 다른 패키지의 클래스를 참조해오려면 주소를 import하여 사용해야한다.
		
//		[1단계:개념] 5. 접근제어자의 범위를 기술하세요.
		// public의 범위내면 import가 필요없이 참조가능한데, 이때 접근제어자의 범위는 package내로 한정된다. 그렇기에
		// 다른 패키지의 클래스를 참조해오려면 import가 필요하다.
		
//		[1단계:확인] 6. playroom패키지 선언과 내부적으로 친구1, 친구2 클래스 선언, studyroom패키지선언 학생1, 학생2 클래스
//		            선언호, 친구1, 학생1에서 private, X(default), public에 적절한 필드값을 선언하고, 상호간에 호출하세요.
		
//		[1단계:확인] 8. 클래스의 1:1 내용을 현실에서 3개 이상 선언하고 할당하여 출력하는 내용을 처리하세요
		/*
package javaexp.z01_homework;

public class A0510_practice {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		# 1:1 관련 추가 연습 예제를 통해 종속객체를 할당하고 내용을 출력 처리하는 연습
//		1. 컴퓨터(제조사, CPU)  VS 소유주(이름, 컴퓨터)
		Owner o1 = new Owner("나");
		o1.comInfo();
		o1.addCPU(new Computer02("삼성", "씨퓨"));
		o1.comInfo();
		
//		2. 연필(종류, 제조사) VS 지우개(제조자, 연필)
		Eraser e1 = new Eraser("지우개");
		e1.erInfo();
		e1.addInfo(new Pencil("dk","djdl"));
		e1.erInfo();
		
//		3. 자동차(배기량, 제조사) VS 소유주(이름, 자동차)
		User u1 = new User("나");
		u1.userInfo();
		u1.addUser(new Car1(125, "벤츠"));
		u1.userInfo();
		
		

	}

}
class Car1{
	private int smoke;
	private String comp;
	public Car1(int smoke, String comp) {
		this.smoke = smoke;
		this.comp = comp;
	}
	public void carInfo() {
		System.out.println("제조사: "+comp);
		System.out.println("배기량: "+smoke);
	}
}

class User{
	private String name;
	private Car1 c;
	public User(String name) {
		this.name = name;
	}
	public void addUser(Car1 c) {
		this.c = c;
	}
	public void userInfo() {
		if(c==null) {
			System.out.println("정보없음");
		}else {
			c.carInfo();
		}
	}
}

class Eraser{
	private String name;
	private Pencil pc;
	public Eraser(String name) {
		this.name = name;
	}
	public void addInfo(Pencil pc) {
		this.pc = pc;
	}
	public void erInfo() {
		if(pc==null) {
			System.out.println("정보없음");
		}else {
			pc.showInfo();
		}
	}
}

class Pencil{
	private String type;
	private String comp;
	public Pencil(String type, String comp) {
		this.type = type;
		this.comp = comp;
	}
	public void showInfo() {
		System.out.println("종류: "+type);
		System.out.println("제조사: "+comp);
		
	}
}

class Owner{
	private String name;
	private Computer02 cpu;
	public Owner(String name) {
		this.name = name;
	}
	public void addCPU(Computer02 cpu) {
		this.cpu = cpu;
	}
	public void comInfo() {
		if(cpu==null) {
			System.out.println("CPU가없습니다.");
		}else {
			cpu.showCPU();
		}
	}
}

class Computer02{
	private String comp;
	private String CPU;
	public Computer02(String comp, String CPU) {
		this.comp = comp;
		this.CPU = CPU;
	}
	public void showCPU() {
		System.out.println("제조사: "+comp);
		System.out.println("CPU: "+CPU);
	}
	
}

		 * */
	}

}


class Singer1{
	String name;
	static String comp;
	String title;
	public Singer1(String name, String title) {
		this.name = name;
		this.title = title;
	}
	public void singerInfo() {
		System.out.println("가수이름: "+name);
		System.out.println("소속사명: "+comp);
		System.out.println("타이틀곡: "+title);
	}
}

class Tree{
	String name;
	static int Cnt;
	public Tree(String name) {
		this.name = name;
	}
	public void CntTree() {
		System.out.println(name+"은 총"+Cnt+"그루");
	}
}