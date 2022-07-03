package javaexp.a07_multiObj;

public class A03_Static {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*
		# 정적 멤버와 static
		1. 정적(static) 멤버란?
			1) 클래스에 고정된 필드와 메서드 - 정적 필드, 정적 메소드
			2) 정적 멤버는 클래스에 소속된 멤버
				- 객체 내부에 존재하지 않고, 메소드 영역에 존재
				- 정적 멤버는 객체를 생성하지 않고, 클래스로 바로 접근해 사용
		2. 정적 멤버 선언
			1) 필드 또는 메소드 선언할 때, static 키워드 붙은
				class 클래스{
					static 타입 필드;
					static 리턴타입 메소드명(매개변수){}
				}
		# 클래스를 통해서 만들어지는 객체들은 다른 주소에 실제 메모리를 가지고 사용한다.
		비유컨데, 63빌딩도면으로 서울, 부산, 제주도에 빌딩을 짓는다고 가정하면
				63빌딩도면: class / 각 지역에 실제 지어진 빌딩: 객체
		건축비용: 도면비용 + (자재비용 + 인건비 + 부지비용)
			자재비용, 인건비, 부지비용 각 위치별로 다르게 설정
			==> 객체의 instance변수는 다르게 설정을 할 수 있다.
			도면비용은 건축물의 위치에 상관없이 일정한 비용이 든다.
			==> 객체의 static변수는 공유하기에 객체마다 동일하게 쓸 수 있다.
				공유하는 필드이기에 class변수라고도 한다.
				cf) 참조변수.static변수 ==> 클래스명.static변수
				
		 * 
		 * */
		//static필드는 객체 생성없이 객체 공유메모리(클래스변수)이기에 바로 사용할 수 있다.
		// 클래스명.static변수
		Building63.drawingPrice = 100000;
		Building63 b1 =new Building63("서울");
		Building63 b2 =new Building63("부산");
		b2.drawingPrice += 120000;
		//참조변수로 변경하는 것이 의미가 없기때문에 일반적으로 static변수는 클래스.static변수명을 사용한다.
		Building63 b3 = new Building63("제주도");
		b1.showInfo();
		b2.showInfo();
		b3.showInfo();
		Building63.show();	//기능메서드
	}

}
/*
# instance 변수
1. 클래스 선언수, 객체를 생성해서 각 객체마다 사용되는 변수
	객체는 참조변수를 사용하기에 instance변수라고 하고 이는 객체마다 다른 데이터를 가지고 있다.

# static 변수
1. 객체의 공유메모리 영역으로 클래스 종속적인 변수를 static 변수라고 한다.
 * */

class Building63{
	String loc;	//instance변수
	static int drawingPrice;	//static변수 -> 공유하는 메모리를 쓰는 변수(한곳에서바뀌면 다 바뀐다)
	int siteCost;	//instance변수
	Building63(String loc){
		this.loc = loc;
	}
	// static 메서드: 객체 생성없이 기능 메서드 사용가능
	// cf) Building63.show();
	static void show() {
		System.out.println("건물의 도면비용: "+drawingPrice);
	}
	
	void showInfo() {
		System.out.println(loc+"에 있는 63빌딩");
		System.out.println("도면의 가격: "+drawingPrice);
	}
}