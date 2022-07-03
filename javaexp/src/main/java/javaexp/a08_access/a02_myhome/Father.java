package javaexp.a08_access.a02_myhome;
//같은 패키지 내부기때문에 import할 필요가 없다.
public class Father {
	
	void callMyInfo() {
		// 접근제어자 X(default)이상일때, 호출가능(같은 패키지일때)
		Mine m = new Mine();
		
		// 같은 패키지에있는 클래스는 private 이외에는 모두 접근 가능
//		System.out.println(m.myinfo);////private으로 선언했기때문에 접근불가
		System.out.println(m.myinfo1);
		System.out.println(m.myinfo2);
	}
}
