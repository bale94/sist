package javaexp.a08_access.a01_friendship;

public class Deer {
	
	String whereWhen = "매월 그믐날 밤에 뒷동산 계곡에 선녀가 내려옴";
	
	void callWoodCutterInfo() {
		// WoodCutter wc : public class WoodCutter
		// wc = new WoodCutter() : public WoodCutter(){}
		// wc.hiddenDeer : default 접근제어자로 상단에 선언된 패키지가 같을때만 접근이 가능하다.
		// package javaexp.a08_access.a01_friendship;
		WoodCutter wc = new WoodCutter();
		//같은 package에 있는 클래스도 접근이불가능 (private이라면)
		System.out.println(wc.hiddenDeer);
	}

}
