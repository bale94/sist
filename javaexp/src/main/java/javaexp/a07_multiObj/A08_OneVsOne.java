package javaexp.a07_multiObj;

public class A08_OneVsOne {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 1:1 관계 클래스 선언과 활용
		1. 1:1 관계에 있는 경우는 현실에서도 많이 있을 뿐만아니라, 실제 프로그래밍에서도 많이 발생한다.
			ex) 사람이 가지고 있는 핸드폰, 연필 지우개, 학생과 성적표, tv와 리모콘
		2. 선언 방식
			1) 종속된 클래스를 선언(필드, 메소드)
			2) 포함하는 클래스를 선언
		 * 
		 * */
		HPerson p01 = new HPerson("홍길동");
		p01.usingPhone();
		
		p01.buyPhone(new HandPhone("01043432221", "삼성", 11000000));
		p01.usingPhone();
		
		/*
		ex) Hobby(취미명, 비용, 생활기간): 생성자를 통해서 할당, play() 취미내용 출력
		 	PlayMan(이름, Hobby) - 생성자를 통해서 이름 할당.
			choiceHobby(Hobby) 할당 처리 playMyHobby()
		1) 2개클래스 선언
		2) 필드값 선언
		3) 생성자 선언: 데이터를 초기화처리
		4) 기능메서드 선언: 출력 메서드, Hobby를 할당할 메서드, 
		5) 기능메서드 내용 처리 및 출력
		6) main()에서 호출처리
		 * */
		PlayMan pm = new PlayMan("홍자성");
		pm.playMyHobby();
		pm.choiceHobby(new Hobby("축구",10000,4));
		pm.playMyHobby();

	}

}
class Hobby{
	private String name;
	private int price;
	private int time;
	public Hobby(String name, int price, int time) {
		super();
		this.name = name;
		this.price = price;
		this.time = time;
	}
	public void play() {
		System.out.println("취미내용: "+name);
		System.out.println("취미가격: "+price);
		System.out.println("취미기간: "+time);
	}
}
class PlayMan{
	private String name;
	private Hobby hb;
	
	public PlayMan(String name) {
		super();
		this.name = name;
	}
	public void choiceHobby(Hobby hb) {
		this.hb = hb;
	}
	public void playMyHobby() {
		if(hb==null) {
			System.out.println(name+"가 취미생활이 없다.");
		}else {
			hb.play();
		}
	}
}


class HPerson{
	private String name;
	private HandPhone phone;
	
	//생성자를 통해서 이름을 할당
	public HPerson(String name) {
		super();
		this.name = name;
	}
	public void buyPhone(HandPhone phone) {
		this.phone = phone;
	}
	public void usingPhone() {
		System.out.println(name+"님 휴대폰을 사용합니다.");
		if(phone==null) {
			//phone객체가 메모리로 들어오지않는 상황
			System.out.println("휴대폰을 소유하지 않았습니다.");
		}else {//HandPhone이 할당이 된 경우
			phone.showInfo();
		}
	}
	
}

class HandPhone{
	private String number;
	private String comp;
	private int price;
	public HandPhone(String number, String comp, int price) {
		super();
		this.number = number;
		this.comp = comp;
		this.price = price;
	}
	void showInfo() {
		System.out.println("# 핸드폰의 정보 #");
		System.out.println("번호: "+number);
		System.out.println("제조자: "+comp);
		System.out.println("구매가격: "+price);
	}
}