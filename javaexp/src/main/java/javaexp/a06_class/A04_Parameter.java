package javaexp.a06_class;

public class A04_Parameter {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 생성자 및 메서드의 매개변수 처리
		1. 함수형 기능 처리는 매개변수를 효율적으로 처리하여야 한다.
		2. 주로 외부에서 데이터를 입력할 때, 주로 사용된다.
		3. 선언
			1) 생성자
				Person(int age){
				
				}
				매개변수가 정수형 age로 선언되면
			2) 호출
				new Person(25);
				선언된 형식대로 1개의 매개변수에 정수형 데이터를 할당하여야 한다.
				
			3) 
		 * 
		 * 
		 * */
		ParamObj pa01 = new ParamObj("홍길동");
		ParamObj pa02 = new ParamObj(25);
		ParamObj pa03 = new ParamObj(true);
		ParamObj pa04 = new ParamObj('A');
		
		//ex) 생성자 매개변수값 처리
		//House 클래스를 선언하고, 생성자에 문자열, byte, char, int, double 데이터를 매개변수로 선언하고
		//객체 생성시 처리하게 하세요
		House h1 = new House("경기도 양평");
		House h2 = new House((byte)50);
		// 자동형변환이 되기에 명시화하면 구별이 가능하다.
		House h3 = new House('A');
		House h4 = new House(3);
		House h5 = new House(4.8);
		
		
		
	}

}


class ParamObj{
	ParamObj(String name){
		System.out.println("문자열 입력: "+name);
	}
	ParamObj(int age){
		System.out.println("숫자 입력: "+age);
	}
	ParamObj(boolean b){
		System.out.println("boolean값 입력: "+b);
	}
	ParamObj(char c){
		System.out.println("char값 입력: "+c);
	}
}

class House{
	String loc;
	byte dis;
	//한번에 두가지 생성자를 호출하는 방법
	House(String loc, byte dis){
		this(loc);
		//최상위 라인에 this(매개변수)를 통해서 선언된 다른 생성자를 호출하여 사용할 수 있다.
		// ** 단, 무조건 "최상위 라인"에 있어야 한다.
		this.dis = dis;
	}
	
	House(String loc){
		System.out.println("집의 위치:"+loc);
	}
	House(byte dis){
		System.out.println("거리:"+dis);
	}
	House(char c){
		System.out.println("집의 안정성:"+c);
	}
	House(int story){
		System.out.println("증수:"+story);
	}
	House(double d){
		System.out.println("만족도:"+d);
	}
}


