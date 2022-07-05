package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.Mart;
import a01_diexp.z01_vo.Note;
import a01_diexp.z01_vo.Park;

public class A0704 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\A0704_ref.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		/*
		[1단계:확인] 1. 컨테이너에 1:1관계에 있는 펜과 노트를 객체를 선언하여 처리하고, 내용을 출력하세요
		[1단계:개념] 2. autowire 무엇인지 기술하고, 종류를 기술하세요
				- 요구사항과 매칭되는 빈과 빈간의 의존성을 자동으로 채워주는 방법이다. 
				1.byType: 컨테이너에 해당 타입이 선언되어있으면 할당된다
				2.byName: 컨테이너에 해당타입이 선언되어있고 할당할 객체의id와 property가 일치할 때 할당된다.
				
		[1단계:확인] 3. 놀이공원에 간 사람으로 1:1관계로 class를 설정하고 autowiring 옵션을 설정하여 처리하세요.
		[1단계:개념] 4. autowire의 옵션 중, byType과 byName의 차이점을 기본예제를 통해서 설명하세요.
		byType은 컨테이너에 꼭 해당타입이 선언되어 있어야하지만, byName은 거기에 추가로 할당할 객체의 id가 property와 일치해야만
		할당이 된다.
		
		[1단계:확인] 5. 마트와 마트에서 구매한 객체 Product 3개를 선언하고, 이 중 하나의 객체를 byName으로 설정해서 할당하게 처리
			1) Product클래스: 물건명, 가격, 갯수 생성자: 필드값 초기화
			2) Mart 클래스: 마트명, Product생성자: 마트명 초기화
				public void setProduct01(Product product)
				autowire="byName"으로 되어있을때 생성된 id값 product01일때 할당처리되는
				set property선언
		 * */
		Note note = ctx.getBean("note", Note.class);// ""안에 들어가는값은 xml에 설정된 id값
		Park park = ctx.getBean("park",Park.class);
		Mart mart = ctx.getBean("mart", Mart.class);
		System.out.println(note);
		note.writing();
		park.visiting();
		mart.showBuyProduct();
		ctx.close();
		/*
		<bean id="pen" class="a01_diexp.z01_vo.Pen">
      	<constructor-arg value="미키마우스볼펜"/>
      	<constructor-arg value="디즈니"/>
      </bean>
      <bean id="note" class="a01_diexp.z01_vo.Note" autowire="byType">
      	<constructor-arg value="중국"/>
      </bean>
      
      <bean id="visitor" class="a01_diexp.z01_vo.Visitor">
      	<constructor-arg value="홍길동"/>
      	<constructor-arg value="남성"/>
      </bean>
      <bean id="park" class="a01_diexp.z01_vo.Park" autowire="byType">
      	<constructor-arg value="에버랜드"/>
      </bean>
      <bean id="product" class="a01_diexp.z01_vo.Product">
      	<constructor-arg value="사과"/>
      	<constructor-arg value="1200"/>
      </bean>
      <bean id="product01" class="a01_diexp.z01_vo.Product">
      	<constructor-arg value="바나나"/>
      	<constructor-arg value="2000"/>
      </bean>
      <bean id="product02" class="a01_diexp.z01_vo.Product">
      	<constructor-arg value="수박"/>
      	<constructor-arg value="25000"/>
      </bean>
      <bean id="mart" class="a01_diexp.z01_vo.Mart" autowire="byName">
      	<constructor-arg value="행복"/>
      </bean>
		 * */
	}

}
