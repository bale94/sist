package javaexp.z01_homework;

import java.util.ArrayList;

public class A0509 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 하나의 클래스를 통해 여러개의 객체을 생성하는 기본 예제를 작성하고 설명하세요.
		Student1 stu1 = new Student1("김",3);
		Student1 stu2 = new Student1("최",4);
		//하나의 클래스를 통해 정의된 객체들이지만 모두 서로다른 객체이고, 자신만의 메모리를 가지고 활동한다.
		
//		[1단계:개념] 2. 배열과 반복문 처리의 형식 2개(일반 for문, forEach 문)를 예제를 통하여 기술하세요
		//일반 for
		Student1 []arr2 = new Student1[3];
		arr2[0] = new Student1("김", 3);
		arr2[1] = new Student1("최", 5);
		arr2[2] = new Student1("양", 4);
		for(int idx=0; idx<arr2.length;idx++) {
			arr2[idx].show();
		}
		
//		forEach
		Student1 []arr1 = {new Student1("박", 1),new Student1("이", 2) };
		for(Student1 stu : arr1) {
			stu.show();
		}
		
//		[1단계:확인] 3. 삼각형 3개 배열을 생성하되, 삼각형의 밑면과 높이 색상을 필드로 선언하고, 생성자를 통해를 이를 할당하고
//		      출력메서드를 통해서 해당 정보를 출력하되, 면적을 리턴하는 메서드를 선언하세요.
		Triangle []arr = new Triangle[3];
		arr[0] = new Triangle(10,5,"빨강");
		arr[1] = new Triangle(7,8,"파랑");
		arr[2] = new Triangle(20,4,"노랑");
		for(int idx=0;idx<arr.length;idx++) {
			arr[idx].output();
		}
		
//		[1단계:개념] 4. 일반 배열과 동적배열(ArrayList)의 차이점을 예제를 통해서 기술하세요.
		//모든 배열은 한번 정해진 크기를 바꿀수없는데, 동적배열은 유동적으로 변경이 가능하다.
//		ArrayList<Student1> slist = new ArrayList<Student1>();
//		slist.add(new Student1("김",10));
//		slist.add(new Student1("한",12));
//		slist.add(new Student1("우",16));	//이런식으로 계속 리스트에 추가할수있는것이 동적배열
		
//		Student1 []arr1 = new Student1[3];	//이렇게 정의하고나면 리스트의 길이를 바꿀수없는것이 일반배열이다.
		
//		[1단계:개념] 5. 동적배열 ArrayList의 활용 방법과 주요 기능 메서드를 기본 예제를 통하여 기술하세요.
		ArrayList<Student1> slist = new ArrayList<Student1>();
		slist.add(new Student1("김",10));
		slist.add(new Student1("한",12));
		slist.add(new Student1("우",16));
		for(int idx=0;idx<slist.size();idx++) {
			slist.get(idx).show();
		}
//		.add(new 생성자());	// 객체를 생성함과 동시에 하나의 객체에 할당
//		.get(0);	// index번호를 통해 특정한 위치에 있는 객체를 가지고온다.
//		.size(0);	//동적배열의 크기를 가져온다.
//		.remove(index번호);	// 특정한위치에 있는 객체를 삭제
		
		
//		[2단계:확인] 6. ArrayList<Product>를 활용하여 구매할 물건 정보 3개를 추가하여 출력처리하세요.
//		      int tot()메서드로 내용 출력과 물건가격*물건단가를 리턴하게 하여, 물건 3개의 총비용을 누적 처리되게 하세요.
		ArrayList<Product> pd = new ArrayList<Product>();
		pd.add(new Product("사과", 1500, 3));
		pd.add(new Product("배", 2000, 2));
		pd.add(new Product("파인애플", 3000, 7));
		for(int idx=0; idx<pd.size();idx++) {
			pd.get(idx).tot();
		}
		// import의 단축키: ctrl+shift+o ***********************
		int tot=0;
		for(Product p:pd) {
			tot+=p.tot();// tot()기능 메서드를 통해서 console 출력과 최종값이 리턴된다.
		}
		System.out.println("총비용: "+tot);
		
		
//		[1단계:개념] 7. static 멤버와 instance 멤버의 차이점을 예제를 통해 기술하세요.
		
		// static멤버는 한곳에서 수정이 일어나면 그 멤버를 사용하는 모든곳에서 수정이 일어난다.
		// 하지만 instance멤버는 그 위치에서만 바뀌고 다른곳에는 영향을 끼치지 못한다.
		// 예시는 Product 클래스의 total 을 들 수 있다.  total값이 바뀌면 다른곳에서 선언하는 total도
		// 값이 바뀌게 된다.
	}

}
class Product{
	String name;
	int price;
	int cnt;
	static int total = 0;
	public Product(String name, int price, int cnt){
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	int tot() {
		System.out.println("총 가격은: "+price*cnt);
		total += price*cnt;
		System.out.println("누적비용은: "+total);
		return total;
	}
}

class Triangle{
	int bottom;
	int height;
	String color;
	Triangle(int bottom, int height, String color){
		this.bottom = bottom;
		this.height = height;
		this.color = color;
	}
	double output() {
		double mass = 0.5*bottom*height;
		System.out.println("면적은: "+mass+" 높이는: "+height+" 밑면은: "+bottom+" 색상은: "+color);
		return mass;
	}
}

class Student1{
	String name;
	int number;
	Student1(String name, int number){
		this.name = name;
		this.number = number;
	}
	void show() {
		System.out.println(name+" "+number);
	}
}