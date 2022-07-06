package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z04_vo.Mart;
import a01_diexp.z04_vo.Product;

public class DIExp22 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di22.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		Product prod = ctx.getBean("prod", Product.class);
		prod.setName("사과");
		prod.setPrice(2000);
		prod.setCnt(2);
		Mart obj = ctx.getBean("mart01", Mart.class);
		obj.setName("행복");
		obj.showBuyProduct();
		System.out.println(obj);
		ctx.close();
	}

}
