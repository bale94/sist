package a01_diexp.z01_vo;

public class CarRacer {
	private String name;
	private Car car;
	public CarRacer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarRacer(String name) {
		this.name = name;
	}
	public void driving() {
		System.out.println(name+"이(가) 자동차를 운행하다");
		if(car!=null) {
			System.out.println("자동차 정보");
			System.out.println("자동차명: "+car.getName());
			System.out.println("최고속도: "+car.getMaxSpeed()+"km/h");
		}else {
			System.out.println("자동차 없음");
		}
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Car getCar() {
		return car;
	}
	public void setCar02(Car car) {
		this.car = car;
	}
	
}
