package javaexp.a06_class;

public class A11_ParamField {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 메서드 매개변수와 필드값의 처리
		1. 객체의 메서드의 매개변수를 통해서 필드값을 할당/수정/누적 연산처리 가능하다.
		2. 필드값이 변경되면 다른 메서드를 통해서 해당 필드값에 대한 여러가지 연산이나 기능 처리를 할 수 있다.
		 * */
		ParamField pf = new ParamField();
		System.out.println(pf.getNum01());
		pf.setNum01(25);
		System.out.println("기능메서드 처리 후 num01: "+pf.getNum01());
		// ex1) num02를 할당하는 메서드 선언, num02의 값을 가져오는 메서드 선언 호출
		pf.setNum02(10);
		System.out.println(pf.getNum02());
		// ex2) 필드값으로 String name을 선언하고, name을 저장/호출 메서드 선언처리
		pf.setName("홍길동");
		System.out.println(pf.getName());
		// ex3) class Fruit 선언, 필드 과일종류, 메서드로 과일종류를 저장, 과일종류를 호출 선언하세요.
		Fruit fr = new Fruit();
		fr.setFrName("사과");
		System.out.println(fr.getFrName());
		
		
	}

}
class Fruit{
	String frName;
	void setFrName(String frName) {
		this.frName = frName;
	}
	String getFrName() {
		return frName;
	}
}

class ParamField{
	int num01;
	int num02;
	String name;
	void setName(String name) {
		this.name = name;
	}
	String getName() {
		return name;
	}
	
	void setNum01(int num01) {
		this.num01 = num01;
		System.out.println("매개변수를 통해 필드값 할당.");
	}
	int getNum01() {
		System.out.println("현재필드 num01 리턴");
		return num01;
	}
	void setNum02(int num02) {
		this.num02 = num02;
		System.out.println("매개변수를 통한 할당");
	}
	int getNum02() {
		System.out.println("현재필드 num02 리턴");
		return num02;
	}
	
}