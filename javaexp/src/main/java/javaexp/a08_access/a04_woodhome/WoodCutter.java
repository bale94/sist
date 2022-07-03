package javaexp.a08_access.a04_woodhome;

public class WoodCutter {
	//나무꾼(개인비밀, 우리집생활비, 상속재산, 막내딸결혼식)
	private String priveSec = "개인비밀";
	String payOurHome = "우리집 생활비";
	protected String inheritMoney = "상속재산";
	public String announce = "막내딸 5월 결혼식";
	
	public void callWoodCutter() {
		System.out.println("private: "+priveSec);
		System.out.println("default: "+payOurHome);
		System.out.println("protected: "+inheritMoney);
		System.out.println("public: "+announce);
	}
}
