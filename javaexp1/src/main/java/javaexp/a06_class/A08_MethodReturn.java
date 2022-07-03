package javaexp.a06_class;

public class A08_MethodReturn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 메서드의 리턴값 처리
		1. 메서드의 기본 구성
			리턴유형 메서드명(매개변수){
				return 리턴값;
			}
		2. 리턴유형을 실제 리턴값의 데이터유형을 선언하고, 해당 메서드가 호출되었을 때 다른 변수에 할당할 수 있는 데이터 유형을 말한다.
		
		3. 리턴값이 없는 기능메서드의 경우, void라고 리턴유형을 선언한다.
			ex) void setNumber(){
				
				}
				void printInfo(){
					System.out.println("출력처리(리턴값 필요없음)");
				}
		 * */
		MethodReturn mr = new MethodReturn();
		System.out.println("리턴한 값: "+mr.callStr());
		String name = mr.callStr();//문자열을 return했기때문에 다른 데이터에 할당할 수 있다.
		
		System.out.println("리턴한 값2: "+mr.callInt());
		System.out.println("리턴한 값3: "+(mr.callInt()+30));
		int num01 = mr.callInt();
		System.out.println("리턴한 값4: "+num01);
		//ex) BuyProduct 클래스를 선언하고, getProdName(), getProdPrice(), getProdCnt()를 통해서
		//		물건명, 가격(정수), 갯수(정수)를 리턴하여 main()에서 출력되고, 변수에 할당되게 하세요
		BuyProduct bp = new BuyProduct();
		String name01 = bp.getProdName();
		int price = bp.getProdPrice();
		int cnt = bp.getProdCnt();
		int tot = price*cnt;
		System.out.println("물건명: "+name01);
		System.out.println("가격: "+price);
		System.out.println("갯수: "+cnt);
		System.out.println("총 비용: "+tot);
		bp.printData();	
		//String str01 = bp.printData(); -> 불가능한 이유: 리턴유형이 없는 void는 다른데이터에 할당을 할 수 없다**************

	}

}

class MethodReturn{
	String callStr() {
		return "홍길동";
	}
	int callInt() {
		return 25;
	}
	int callInt2() {
		int num01 = 30;
		return num01;
	}
}

class BuyProduct{
	String getProdName() {
		return "홍길동";
	}
	int getProdPrice() {
		return 1500;
	}
	int getProdCnt() {
		int cnt = 30;
		return cnt;
	}
	void printData() {
		System.out.println("출력처리시 리턴값이 필요없음(void)");
	}
}