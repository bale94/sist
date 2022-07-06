package a01_diexp.z02_vo;

public class Mart {
	private String name;
	private Product product;
	public Mart() {
		// TODO Auto-generated constructor stub
	}
	public Mart(String name) {
		this.name = name;
	}
	public void showBuyProduct() {
		if(product!=null) {
			System.out.println(name+"마트에서 "+product.getName()+"을 사고 "+product.getPrice()+"원을 지불했다");
		}else {
			System.out.println("정보 없음");
		}
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Product getProduct() {
		return product;
	}
	// <bean id="product01" autowire="byName"
	// 할당할 수 있게 property선언
	public void setProduct01(Product product) {
		this.product = product;
	}
	
	
}
