package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z10_vo.Music;
import a01_diexp.z10_vo.Paper;

public class A0706 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "a01_diexp\\A0706_ref.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		/*
		[1단계:개념] 1. 스프링에서 컨테이너에 특정한 패키지의 자동 객체 설정을 처리할 때, 처리할 내용을 기술하세요
		vo에서 값에 value처리를 해주고, xml파일에 <context-property, <context-component 을 설정하고
		main에서 객체를 호출하여 값을 처리한다.
		
		[1단계:확인] 2. 스프링 컨테이너에 z10_vo 패키지에 클래스를 등록하여, 1:1연관관계가 있는 펜과 종이 객체를 선언하고,
      				코드상 자동 설정관계가 있게 처리하고 호출하세요
      	
		[1단계:확인] 3. 공통 설정 파일을 java 폴드 밑에 msg/msg01로 설정하고, 좋아하는 음악, 가수를 설정하고,
      				이를 vo로 만들어 호출되게 처리하여 출력결과를 확인하세요.
		 * */
		Paper paper = ctx.getBean("paper", Paper.class);
		System.out.println(paper);
		paper.checkPaperInfo();
		
		Music music = ctx.getBean("music", Music.class);
		System.out.println(music.getTitle());
		System.out.println(music.getSinger());
		ctx.close();
		/*
		<bean id="pen" class="a01_diexp.z10_vo.Pen">
      	<constructor-arg value="모나미"/>
      	<constructor-arg value="1200"/>
      </bean>
      <bean id="paper" class="a01_diexp.z10_vo.Paper" autowire="byName">
      	<constructor-arg value="doubleA"/>
      </bean>
      <context:property-placeholder
      	location="classpath:/msg/msg01"/>
      <context:component-scan base-package="a01_diexp.z10_vo"/>
		 * */
	}

}
