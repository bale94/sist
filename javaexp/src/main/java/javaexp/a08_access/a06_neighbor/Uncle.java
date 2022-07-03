package javaexp.a08_access.a06_neighbor;

import javaexp.a08_access.a04_woodhome.WoodCutter;

public class Uncle {
	public void callWoodCutter() {
		WoodCutter wc = new WoodCutter();
		//같은 패키지에 있는 클래스는 private 이외에 모두 접근가능하다.
//		System.out.println("private: "+wc.priveSec);
//		System.out.println("default: "+wc.payOurHome);
//		System.out.println("protected: "+wc.inheritMoney);
		// 상속관계에 없는 외부패키지의 클래스는 public만 접근이 가능하다.
		System.out.println("public: "+wc.announce);
	}
}
