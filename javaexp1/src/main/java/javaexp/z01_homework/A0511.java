package javaexp.z01_homework;

import javaexp.z03_vo.BPlayer;
import javaexp.z03_vo.BTeam;
import javaexp.z03_vo.Bus01;
import javaexp.z03_vo.Passenger;
import javaexp.z03_vo.Professor;
import javaexp.z03_vo.Seat;
import javaexp.z03_vo.Student;
import javaexp.z03_vo.Train;

public class A0511 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 1:1관계 클래스와 1:다관계 클래스를 구현할 때, 구조상/코드상 차이점을 기술하세요.
		// 1:1관계에선 리스트를 선언 후, 그 리스트에 하나씩 추가하지만,
		// 1:다관계에서는 리스트를 선언후 그 리스트에 리스트 째로 원소를 추가한다.
		//1:1에선 list.add()를 사용하는 반면, 1:다에서는 this.list = list로 통째로 추가한다.
		
//		[1단계:개념] 2. 1:다관계 클래스 구현할 때, 간단한 예제와 함께 구현 순서를 기술하세요.
		//다중객체를 포함하는 클래스 선언, 필드,생성자,메서드 선언, 그리고 리턴할 객체를 선언하는 순서이다.
		BTeam bt = new BTeam("두산");
		bt.addPlayer(new BPlayer(14,"강백호","940293-1929392"));
		bt.addPlayer(new BPlayer(15,"구자욱","932293-8273626"));
		bt.addPlayer(new BPlayer(16,"김광현","923230-3143923"));
		bt.showTeamList();
//		[1단계:확인] 3. 아래의 여러가지 1:다 관계 클래스를 선언하고 출력하세요.
//		         1) 버스, 버스에 탄 승객
		Passenger ps = new Passenger("김씨");
		ps.addPass(new Bus01("324","광주"));
		ps.addPass(new Bus01("234","부산"));
		ps.addPass(new Bus01("657","경기"));
		ps.showPass();
		
//		         2) 담당교수, 수강 학생
		Student stu = new Student("준");
		stu.addProf(new Professor("한국사",3));
		stu.addProf(new Professor("영국사",6));
		stu.showProf();
		
		
//		         3) 기차, 기차 좌석정보
		Train t = new Train(22);
		t.addInfo(new Seat(23,"창측"));
		t.addInfo(new Seat(26,"내측"));
		t.show();
//		[1단계:개념] 4. 상속의 한계에 대하여 예제와 함께 기술하세요
		// 부모클래스에서 private접근자의 필드와 메소드를 접근할 수 없다.
		Bus02 b04 = new Bus02("24","부산");
		Bus02 b03 = new Bus02(23);
		b03.showNum(); //은 가능하지만
		Passenger01 p2 = new Passenger01(34);
//		p2.showNumb();//하고싶어도 class부분에서 자식이 부모의 private생성자를 가져올수없어서
						//에러가 발생한다.
//		[1단계:확인] 5. 상위로 탈것(속도)을 선언하고, 이것을 상속받은 하위로 자동차(승객수), 
//		      트럭(중량)를 선언하고 출력하는 메서드를 통해서 출력처리하세요.
		Ride r = new Ride();
		r.showSpeed();
		Car01 c01 = new Car01(40);
		c01.show1();
		Truck tt = new Truck(120);
		tt.show2();
		
//		[1단계:개념] 6. 상속 관계에서 super()는 생성자관계에서 사용하는 규칙을 기본 예제를 통해서
//		      기술하세요.
		Bus02 b02 = new Bus02("123", "서울");
		b02.showInfo();
		Passenger01 p1 = new Passenger01("345", "경기");
		p1.showInfo();
		
//		[1단계:확인] 7. 상위로 Robot을 생성자로 로봇의 종류를 할당하게 하고, Dagan, Gandam을
//		      상속하여 해당 생성자를 통해서 호출하여 처리하고 출력되게 하세요.
//		Robot rr = new Robot("장난감");
//		rr.showType();
//		Dagan dg = new Dagan("김밥");
//		dg.showType();
//		Gundam gd = new Gundam("케잌");
//		gd.showType();
		
//		[1단계:개념] 8. 메서드 재정의 규칙을 기본예제를 통해서 설명하세요.
		// 부모에게서 상속받은 메소드를 자식클래스에서 재정의 하는것
		Robot rr = new Robot("장난감");
		rr.showType();
		Dagan dg = new Dagan();
		dg.showType();
		Gundam gd = new Gundam();
		gd.showType();
//		[1단계:확인] 9. 상위클래스 Vehicle를 선언하고 필드로 탈것의 종류 선언, 재정의 
//		      메서드로 driving()을 선언하여 하위로 Airplane,
//		      Bus, Ship에서 재정의하여 처리하게 하세요.
		Vehicle v = new Vehicle("Tank");
		v.driving();
		Airplane a = new Airplane();
		a.driving();
		Bus11 b  = new Bus11();
		b.driving();
		Ship s =  new Ship();
		s.driving();

	}

}
class Vehicle{
	String type;
	Vehicle(String type){
		this.type = type;
	}
	void driving() {
		System.out.println(type+"을 탑니다");
	}
}
class Airplane extends Vehicle{
	Airplane(){
		super("Airplane");
	}
}
class Bus11 extends Vehicle{
	Bus11(){
		super("Bus");
	}
}
class Ship extends Vehicle{
	Ship(){
		super("Ship");
	}
}

class Robot{
	String type;
	Robot(String type){
		this.type = type;
	}
	
	void showType() {
		System.out.println("타입은: "+type);
	}
}
class Dagan extends Robot{
	Dagan(){
		super("케잌");
	}
}
class Gundam extends Robot{
	Gundam(){
		super("김밥");
	}
}

class Ride{
	int speed=100;
	
	void showSpeed() {
		System.out.println("속도는: "+speed);
	}
}
class Car01 extends Ride{
	int people;
	Car01(int people){
		this.people = people;
	}
	void show1() {
		System.out.println("속도?: "+speed);
		System.out.println("인원은?: "+people);
	}
}
class Truck extends Ride{
	int heavy;
	Truck(int heavy){
		this.heavy = heavy;
	}
	void show2() {
		System.out.println("속도는?: "+speed);
		System.out.println("중량은: "+heavy);
	}
}

class Bus02{
	String number;
	String loc;
	private int num;
	Bus02(String number, String loc){
		this.number = number;
		this.loc = loc;
	}
	Bus02(int num){
		this.num = num;
	}
	void showInfo() {
		System.out.println("버스번호: "+number);
		System.out.println("목적지: "+loc);
		
	}
	void showNum() {
		System.out.println(num);
	}
}
class Passenger01 extends Bus02{

	Passenger01(String number, String loc) {
		// TODO Auto-generated constructor stub
		super(number, loc);
	}
	Passenger01(int num){
		super(num);
	}
//	void showNumb() {
//		System.out.println(num);
//	}
	
}