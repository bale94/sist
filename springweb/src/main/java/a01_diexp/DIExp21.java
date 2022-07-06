package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z03_vo.Product;
import a01_diexp.z03_vo.Mart;
import a01_diexp.z03_vo.Note;
import a01_diexp.z03_vo.Pen;

public class DIExp21 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di21.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		Note obj = ctx.getBean("note", Note.class);
		Pen obj1 = ctx.getBean("pen", Pen.class);
		Product product = ctx.getBean("prod", Product.class);
		product.setName("사과");
		product.setPrice(3000);
		product.setCnt(2);
		System.out.println(product);
		
		Mart mart = ctx.getBean("mart01", Mart.class);
		mart.setName("행복");
		// 설정된 내용을 객체들 간에 자동 autowiring이 안되어
		// 있기에 직접적으로 코드를 통해 처리하여야 한다
		mart.setProduct01(product);
		mart.showBuyProduct();
		System.out.println(obj);
		System.out.println(obj1);
		ctx.close();
	}

}
