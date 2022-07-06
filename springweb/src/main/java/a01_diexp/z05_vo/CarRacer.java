package a01_diexp.z05_vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("carracer01")
public class CarRacer {
	private String name;
	// Autowired(required = true): default옵션
	// 자동 wiring처리에 해당 객체가 반드시 있어야 처리되게 옵션 설정(없으면 에러 발생)
	
	// 객체가 컨테이너에 없더라도 에러가 발생하지않게 선언
	@Autowired(required = false)
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
