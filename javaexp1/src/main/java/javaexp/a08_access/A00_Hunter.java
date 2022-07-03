package javaexp.a08_access;

import javaexp.a08_access.a01_friendship.WoodCutter;
// public이라도 외부 패키지에 있는 클래스는 import 또는 패키지명.클래스명으로 사용가능하다.

public class A00_Hunter {
	void callWoodCutterInfo() {
		// WoodCutter wc : public class WoodCutter
		// wc = new WoodCutter() : public WoodCutter(){}
		// wc.hiddenDeer : default 접근제어자로 상단에 선언된 패키지가 같을때만 접근이 가능하다.
		// package javaexp.a08_access.a01_friendship;
		// A00_Hunter는 package javaexp.a08_access; 때문에 default 
		// 접근제어자가 붙은 hiddenDeer 필드를 접근 할 수 없다.
		WoodCutter wc = null;
		wc = new WoodCutter(); //public이 안되면 접근이안되서 선언불가
//		System.out.println(wc.hiddenDeer);
		
	}
	void callDeerInfo() {
		// 사슴의 클래스에대한 접근도 default이기에 접근이 불가능
		//Deer d = new Deer();
	}

}
