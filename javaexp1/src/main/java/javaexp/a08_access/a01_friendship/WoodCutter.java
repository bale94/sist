package javaexp.a08_access.a01_friendship;
// package javaexp.a08_access.a01_friendship;

public class WoodCutter {
	// public WoodCutter(){} default 생성자
	// WoodCutter(){} // 접근제어자를 X(default)로 명시화
	// 접근제어자 default
	String hiddenDeer = "뒤쪽 덤불 속 사슴을 숨김";
	private String hiddenClothe = "선녀의 날개옷은 바위밑에 숨김";
	void callDeerInfo() {
		Deer d = new Deer();
		System.out.println(d.whereWhen);
	}

}
