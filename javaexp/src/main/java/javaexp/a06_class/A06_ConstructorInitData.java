package javaexp.a06_class;

public class A06_ConstructorInitData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 생성자의 필드값 초기화
		1. 생성자의 가장 핵심 기능으로 필드값을 할당하여 처리할 수 있다.
		2. 기본 예제
			class Person{
				String name;
				int age;
				Person(String name, int age){
					this.name = name;	//입력된 매개변수명과 필드명이 같을때는 this키워드를 통해 구분한다. this.필드명
					this.age = age;
				}
			}
		 * 
		 * */
		Person04 p01 = new Person04("홍길동", 25);
		System.out.println(p01.name);
		System.out.println(p01.age);
		
		//ex) 아래 내용으로 생성자의 필드값을 초기화하고 해당 필드를 출력하세요
		//	1) Product05 : 물건명 가격 개수
		//	2) Calculator : 숫자1, 숫자2, 연산자
		//	3) Book : 도서명, 가격, 저자
		Product05 pr01 = new Product05("사과", 2500, 25);
		System.out.println(pr01.name+"\t"+pr01.price+"\t"+pr01.many);
		
		Calculator cc01 = new Calculator(30, 50, "+");
		System.out.println(cc01.number1+cc01.calcu+cc01.number2+" = "+(cc01.number1+cc01.number2));
		
		Book bk01 = new Book("로빈훗", 5000, "홍길동");
		System.out.println(bk01.name+"\t"+bk01.price+"\t"+bk01.writer);

	}

}
class Person04{
	String name;
	int age;
	Person04(String name, int age){
		this.name = name;
		this.age = age;
		
	}
}

class Product05{
	String name;
	int price;
	int many;
	Product05(String name, int price, int many){
		this.name = name;
		this.price = price;
		this.many = many;
	}
}
class Calculator{
	int number1;
	int number2;
	String calcu;
	Calculator(int number1, int number2, String calcu){
		this.number1 = number1;
		this.number2 = number2;
		this.calcu = calcu;
	}
}
class Book{
	String name;
	int price;
	String writer;
	Book(String name, int price, String writer){
		this.name = name;
		this.price = price;
		this.writer = writer;
	}
}