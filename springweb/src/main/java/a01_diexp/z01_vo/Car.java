package a01_diexp.z01_vo;

// 클래스를 만들고 반드시 저장을해야 다른파일에서 객체로 가져다 쓸 수 있으므로 주의할것
public class Car {
	private String name;
	private int maxSpeed;
	public Car() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Car(String name, int maxSpeed) {
		this.name = name;
		this.maxSpeed = maxSpeed;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMaxSpeed() {
		return maxSpeed;
	}
	public void setMaxSpeed(int maxSpeed) {
		this.maxSpeed = maxSpeed;
	}
	
	
}
