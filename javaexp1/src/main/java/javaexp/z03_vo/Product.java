package javaexp.z03_vo;

public class Product {
	// 필드선언: 직접적으로 쓰기와 읽기를 한꺼번에 할 수 없음.
	private String name;	//물건명
	private int price;		//가격
	private int cnt;		//갯수
	
	// 생성자 선언
	// 매개변수가 없는 생성자 선언 : source에서 constructors from Superclass
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	// 필드값을 초기화하는 생성자 : source에서 using Fields
	public Product(String name, int price, int cnt) {
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	public int show() {
		System.out.print(name+"\t");
		System.out.print(price+"\t");
		System.out.println(cnt+"\t");
		return price*cnt;
	}
	
	
	// Product p = new Product();
	// System.out.println(p);	//패키지명.클래스명@주소
	// System.out.println(p);	//toString()선언을 아래와 같이 하면, toString()에서 선언한 내용을 출력한다.
	// 저장된 필드값을 아래 형식으로 리턴 : source에서 generate toString()
	@Override
	public String toString() {
		return "Product [name=" + name + ", price=" + price + ", cnt=" + cnt + "]";
	}
	
	// 기능메서드선언 : 할당 및 호출메서드
	// 각 필드값을 쓰기 메서드와 읽기 메서드를 구분하여 처리 : source에서 getter and setter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	

}
