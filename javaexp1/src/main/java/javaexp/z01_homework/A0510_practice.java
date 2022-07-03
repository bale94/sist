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
