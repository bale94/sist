package javaexp.a08_access.a03_grandhome;

import javaexp.a08_access.a02_myhome.Mine;

public class GrandFather {

	void callMyInfo() {
		Mine m = new Mine();
		//같은 패키지에 있는 클래스는 private이외에는 모두 접근이 가능하다.
//		System.out.println(m.myinfo);	//private으로 선언했기때문에 접근불가, 다른 패키지이므로 더더욱 불가
//		System.out.println(m.myinfo1);	패키지가 다르기 때문에 default 접근제어자(X)는 접근이 불가능하다.
		
		// public으로 선언된 필드는 import로 사용이 가능하다.
		System.out.println(m.myinfo2);
	}
	
}
