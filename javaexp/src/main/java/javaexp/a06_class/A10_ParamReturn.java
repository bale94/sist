package javaexp.a06_class;

public class A10_ParamReturn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 매서드의 매개변수와 리턴값 처리 연습
		1. 객체의 기능메서드는 매개변수를 통해 입력되고, 리턴값을 통해서 데이터의 최종결과를 받을 수 있다.
		2. 두 개의 구성요소에 대한 입/출력 처리를 해보자.
		 * */
		Calcu c1 = new Calcu();
		System.out.println(c1.plus(25,35));
		int tot = c1.plus(40, 30);
		System.out.println("변수할당: "+tot);
		// ex) Product06 클래스를 선언하고, buy()메서드를 통해서 물건가격과 물건 갯수를 입력받아서 내용을 출력하고
		//		총계를 리턴하여 출력하세요. 매서드는 2번호출하여 결과값을 출력
		Product06 pd01 = new Product06();
		System.out.println("총계: "+pd01.buy(1500, 4));
		
		String buyInfo = pd01.buy("사과", 2000, 3);
		System.out.println(buyInfo);
		
		Calcu c2 = new Calcu();
		int tot1 = c2.plus(100, "+", 20);
		System.out.println(tot1);
		int tot2 = c2.plus(100, "-", 20);
		System.out.println(tot2);
		int tot3 = c2.plus(100, "*", 20);
		System.out.println(tot3);
		int tot4 = c2.plus(100, "/", 20);
		System.out.println(tot4);
		int tot5 = c2.plus(100, "%", 20);
		System.out.println(tot5);
	}

}
// 같은 패키지 안에 동일한 클래스 있을 시 에러나니, 클래스명 변경필수
class Product06{
	int buy(int price, int cnt) {
		System.out.println("가격: "+price);
		System.out.println("갯수: "+cnt);
		return price*cnt;
	}
	String buy(String name, int price, int cnt) {
		// 입력받은 내용을 선언된 메서드 통해서 전달하고, 그 결과를 받아서 처리
		int tot = buy(price, cnt);
		
		return "구매정보: "+name+", 총액: "+tot;
	}
	
}

class Calcu{
	int plus(int num01, int num02) {
//		System.out.println("입력값 num01: "+num01);
//		System.out.println("입력값 num02: "+num02);
		return num01+num02;
	}
	//ex) plus의 매개변수 연산자(+,-,..), 첫번째 숫자, 두번째 숫자
		// 리턴 유형으로 문자열로 처리하여 변수에 할당하여 출력하세요
//	int plus(int num01, String how, int num02) {
//		int tot;
//		if(how=="+") {
//			tot = num01+num02;
//		}else if(how=="-") {
//			tot = num01-num02;
//		}else if(how=="*") {
//			tot = num01*num02;
//		}else if(how=="/") {
//			tot = num01/num02;
//		}else {
//			tot = num01%num02;
//		}
//		return tot;
//	}
	//강사님 답안
//	String calculate(String cal, int num01, int num02) {
//		String ret = "";
//		ret = num01+cal+num02;
//		if(cal.equals("+")) {
//			ret+="="+plus(num01,num02); ...
//		}
//	}
	
	
}