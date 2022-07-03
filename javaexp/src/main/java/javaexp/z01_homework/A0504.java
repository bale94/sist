package javaexp.z01_homework;

public class A0504 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 메서드의 기능을 기본 예제를 통해서 설명하세요
		// 객체의 동작을 처리하는 것
		// Shopping sh = new Shopping(); 선언하고
		// System.out.println(sh.name); 과같이 호출할 수 있다.
		
//		[1단계:확인] 2. [리턴유형연습] 쇼핑몰에서 구매한 물건, 가격, 갯수, 배송지를 리턴값으로 선언하는 메서드와, 
//		      리턴값이 없이 위 정보를 출력하는 메서드를 선언하세요
		Shopping sh = new Shopping();
		sh.shopping2("사과", 2500, 10, "서울");
		sh.shopping("사과", 2500, 10, "서울");
//		[1단계:확인] 3. [매개변수연습] driving메서드에 매개변수로 1~3개를 각각 선언하되,
//		      차량명, 목적지, 거리를 선언하여 출력하되 오버로딩 규칙에 따라 처리하세요.
		Driving dv = new Driving();
		dv.driving("gv70");
		dv.driving("gv70","서울");
		dv.driving("gv70","서울",210);
//		[1단계:확인] 4. [매개변수+리턴] Student 클래스
//		      tot() 매개변수:국어,영어,수학점수 리턴값:총점수(정수)
//		      avg() 매개변수:국어,영어,수학점수 리턴값:평균값(실수)
//		      reg() 매개변수:번호,이름  리턴값:@@번 @@@(문자열)
//		      show() 매개변수:이름,국어,영어,수학  리턴값:없음, 출력:매개변수값
		Student st = new Student();
		System.out.println(st.tot(100, 80, 70));
		System.out.println(st.avg(100, 80, 70));
		System.out.println(st.reg(10, "박"));
		st.show("김", 100, 70, 40);
		
//		[1단계:확인] 5. [매개변수+리턴] Member 클래스 선언하고, regdate()메서드로
//		      회원명, 아이디, 패스워드 매개변수로 입력과 String으로 등록 내용을 리턴
//		      usePoint()메서드로 사용한 포인트를 입력받아 10%적립포인트 리턴(실수)
//		      addPoint()메서드로 추가할포인트를 입력받아 지역변수로 있는 point=1000
//		      에 추가하여 리턴처리하세요.
		Member m = new Member();
		m.regData("김", "himan", "7777");
		System.out.println(m.data());
		m.usePoint(700);
		m.addPoint(10000);
		System.out.println(m.point);
//		[1단계:확인] 6. [매개변수+필드] Caffee 클래스 선언, 
//		      필드 : 주문커피종류, 주문 가격, 주문 갯수
//		      메서드 : orderName - 주문커피종류 저장
//		             orderCoffee - 주문커피종류, 가격, 갯수 저장
//		             getPay - 총비용(가격*갯수) 리턴
//		             getName() - 주문커피종류 리턴
//		             showAll() - 저장된 주문커피종류,가격,갯수,총액 문자열리턴
		Caffee cf = new Caffee();
		cf.orderName("아메리카노");
		cf.orderCoffee("아메리카노", 1500, 4);
		cf.getPay();
		cf.getName();
		System.out.println(cf.showAll());
//		[1단계:확인] 7. [필드+로직처리] Gugu 클래스 선언
//		           필드 : 단수, 시작단수, 마지막단수
//		      메서드 : schGrade - 단수지정
//		             showResult - 해당 단수의 1~9까지 연산 출력
//		             setFromTo - 시작단수,마지막단수 지정
//		             showResult2 - 범위가 있는 단수 출력
		Gugu g = new Gugu();
		g.setFromTo(2, 5);
		g.showResult2();
//		[1단계:확인] 8. [필드+로직처리] Bus 클래스 선언
//		      필드 : 버스번호, 구간, 비용
//		      메서드 : basicInfo - 입력 버스번호, 구간, 비용
//		             takeBus - 입력 : 인원수 리턴:비용*인원수
//		                 화면 출력 : 구간 @@ 인  @@번 @@명 탑승
		Bus b = new Bus();
		b.basicInfo(70, "서울-부산", 7500);
		b.takeBus(25);

	}

}
class Bus{
	int busNum;
	String loc;
	int price;
	int people;
	void basicInfo(int busNum, String loc, int price) {
		this.busNum = busNum;
		this.loc = loc;
		this.price = price;
	}
	int takeBus(int people) {
		int totPrice = price*people;
		System.out.println("구간 "+loc+"인 "+busNum+"번 "+people+"명 탑승");
		System.out.println("총 금액은: "+totPrice);
		return totPrice;
	}
}

class Gugu{
	int dan;
	int stDan;
	int fiDan;
	void schGrade(int dan) {
		this.dan = dan;
	}
	void showResult() {
		for(int cnt=1;cnt<=9;cnt++) {
			System.out.println(dan+" x "+cnt+" = "+dan*cnt);
		}
	}
	void setFromTo(int stDan, int fiDan) {
		this.stDan = stDan;
		this.fiDan = fiDan;
	}
	void showResult2() {
		for(int Dan = stDan;Dan<=fiDan;Dan++) {
			for(int cnt=1;cnt<=9;cnt++) {
				System.out.println(Dan+" x "+cnt+" = "+Dan*cnt);
			}
		}
	}
}

class Caffee{
	String name;
	int price;
	int cnt;
	void orderName(String name) {
		this.name = name;
	}
	void orderCoffee(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	int getPay() {
		int tot = price*cnt;
		return tot;
	}
	String getName() {
		return name;
	}
	String showAll() {
		String all = "주문커피메뉴: "+name+" 가격: "+price+" 갯수: "+cnt+" 총비용: "+getPay();
		return all;
	}
	
}

class Member{
	String name;
	String id;
	String pass;
	int point=1000;
	void regData(String name, String id, String pass) {
		this.name = name;
		this.id = id;
		this.pass = pass;
	}
	String data() {
		String data = "이름: "+name+" ID: "+id+" PW: "+pass;
		return data;
	}
	double usePoint(double points) {
		double milg = (0.1)*points;
		return milg;
	}
	double addPoint(double points) {
		point += points;
		return point;
	}
}

class Student{
	int tot(int krScore, int enScore, int maScore) {
		int total;
		total = krScore+enScore+maScore;
		return total;
	}
	double avg(int krScore, int enScore, int maScore) {
		double avgs;
		avgs = (krScore+enScore+maScore)/(double)3;
		return avgs;
	}
	String reg(int num, String name) {
		String regi = num+"번\t"+name;
		return regi;
	}
	void show(String name, int krScore, int enScore, int maScore) {
		System.out.println("이름: "+name);
		System.out.println("국어점수: "+krScore);
		System.out.println("영어점수: "+enScore);
		System.out.println("수학점수: "+maScore);
	}
}

class Driving{
	String name;
	String loc;
	int dis;
	void driving(String name) {
		System.out.println("차량명: "+name);
	}
	void driving(String name, String loc) {
		System.out.println("차량명: "+name);
		System.out.println("목적지: "+loc);
	}
	void driving(String name, String loc, int dis) {
		System.out.println("차량명: "+name);
		System.out.println("목적지: "+loc);
		System.out.println("거리: "+dis);
	}
}

class Shopping{
	String name;
	int price;
	int cnt;
	String loc;
	void shopping(String name, int price, int cnt, String loc) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
		this.loc = loc;
		System.out.println(name+" "+price+" "+cnt+" "+loc);
	}
	String shopping2(String name, int price, int cnt, String loc) {
		String data;
		data = name+" "+price+" "+cnt+" "+loc;
		return data;
	}
}