package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z05_vo.Car;
import a01_diexp.z05_vo.CarRacer;

public class DIExp23 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di23.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		/*Car car = ctx.getBean("car01", Car.class);
		System.out.println(car);
		car.setName("포르쉐");
		car.setMaxSpeed(250);
		System.out.println(car);*/
		
		CarRacer carracer = ctx.getBean("carracer01", CarRacer.class);
		System.out.println(carracer);
		carracer.setName("홍길동");
		// carracer.setCar(car)를 하지않아도 Autowiring에 의해 자동으로 할당된다 
		carracer.driving();
		ctx.close();
	}

}
