package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.Person;
import a01_diexp.z01_vo.Product;

public class DIExp12 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\di12.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		Product pr01 = ctx.getBean("pr01", Product.class);
		Person p01 = ctx.getBean("p01", Person.class);
		System.out.println("### 시작 ###");
		System.out.println("### 객체호출:"+pr01);
		System.out.println("### 객체호출:"+pr01.getName());
		System.out.println("### 객체호출:"+pr01.getPrice());
		System.out.println("### 객체호출:"+pr01.getCnt());
		System.out.println("### 객체호출:"+p01.getName());
		System.out.println("### 객체호출:"+p01.getAge());
		System.out.println("### 객체호출:"+p01.getLoc());
		System.out.println("### 객체호출:"+p01);
		System.out.println("### 객체호출:"+pr01);
		Person p02 = ctx.getBean("p02", Person.class);
		System.out.println("p02:"+p02);
		System.out.println(p02.getName());
		System.out.println(p02.getAge());
		System.out.println(p02.getLoc());
		
		ctx.close();
		//ex) DIExp12.java, d12.xml 생성
		//		Product vo 생성 물건명 가격 갯수 선언 xml에 property로 할당 출력
	}

}
