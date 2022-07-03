package javaexp.a09_inherit;

public class A02_Constructor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 # 부모 생성자 호출: super()
		 1. 상속하는 클래스는 부모의 생성자를 반드시 호출하여야 한다.
		 	1) default생성자는 기본적 default 생성자를 호출하기 때문에, 선언하지 않더라도 에러가 없다.
		 		- java의 모든 클래스는 extends Object로 상속을 받아서 처리한다.
		 			-> default이기때문에 선언하지 않는다.
		 		class Father{}
		 		class Son extends Father{
		 			public Son(){
		 				super();	//기본적으로포함
		 			}
		 		}
		 	2) 상위 클래스에 매개변수가 있는 생성자를 선언했을 때
		 		class Mother{
		 			String name;
		 			Mother(String name){
		 				this.name = name;
		 			}
		 		}
		 		class Daughter extends Mother{
		 			Daughter(String name){
		 				super(name);	// 반드시 상위에 있는 생성자를 호출해야한다.
		 				
		 			}
		 		}
		 	# 부모없는 자식이 없듯이
		 		부모의 생성자가 선언되면 반드시 해당 생성자를 호출하여야 한다.
		 		
		 * */
		Daughter01 d1 = new Daughter01("김희선");
		d1.call();
		//ex) Worker 직종을 할당하는 생성자 선언, Developer로 Worker를 상속받아서
		//		해당 직종을 처리하고 showMyjob() 기능메서드를 통해 출력하게 하세요
		Developer dp = new Developer("프로그래머");
		dp.showMyjob();
		

	}

}
class Worker{
	String name;
	Worker(String name){
		this.name = name;
	}
}
class Developer extends Worker{
	Developer(String name){
		super(name);
	}
	void showMyjob() {
		System.out.println("직업은: "+name);
	}
	
}

class Mother01{
	String name;
	Mother01(String name){
		this.name = name;
	}
	void call() {
		System.out.println("이름: "+name);
	}
	
}
class Daughter01 extends Mother01{
	/*
	Daughter01(){
		super();
	}
	 * */
	Daughter01(){
		super("하위 매개값(이름)");
		// 생성자의 첫 라인에 반드시 상위클래스가 선언한 생성자의 매개변수에 맞는 super()로 상위 클래스의 생성자를
		// 호출하여야 한다.
	}
	Daughter01(String name){
		super(name);	// 이렇게하면 private로 선언된 상위 필드도 접근을 하여 할당할 수 있다.
	}
	
}

