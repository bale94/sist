package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z07_vo.Product;

public class DIExp25 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di25.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		Product product = ctx.getBean("product", Product.class);
		System.out.println(product);
		System.out.println(product.getName());
		System.out.println(product.getPrice());
		System.out.println(product.getCnt());
		

		ctx.close();
		/*
		java 폴더 하위 info/data파일을 만들어 물건명 가격 갯수 정보를 할당하고
		z07_vo에 Product클래스를 자동 객체 생성되게하고 Product클래스에 코드로 설정 정보가 할당되도록 처리
		 * 
		 * */
	}

}
