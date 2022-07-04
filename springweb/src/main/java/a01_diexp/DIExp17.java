package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.CarRacer;
import a01_diexp.z01_vo.HPerson;

public class DIExp17 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di17.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		// HPerson hperson
		HPerson hperson = ctx.getBean("hperson", HPerson.class);
		System.out.println(hperson);
		hperson.myHandPhone();
		
		CarRacer cr = ctx.getBean("carracer", CarRacer.class);
		cr.driving();
		
		ctx.close();
	}

}
