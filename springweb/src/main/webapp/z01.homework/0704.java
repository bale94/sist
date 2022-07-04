package a01_diexp;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import a01_diexp.z01_vo.CarRacer;

public class DIExp19 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String path = "z01.homework\\0704_ref.xml";
		AbstractApplicationContext ctx = new GenericXmlApplicationContext(path);
		// DL(Dependency Lookup)으로 id명으로 객체를 가져온다
		/*
		[1단계:확인] 1. 컨테이너에 1:1관계에 있는 펜과 노트를 객체를 선언하여 처리하고, 내용을 출력하세요
		[1단계:개념] 2. autowire 무엇인지 기술하고, 종류를 기술하세요
		[1단계:확인] 3. 놀이공원에 간 사람으로 1:1관계로 class를 설정하고 autowiring 옵션을 설정하여 처리하세요.
		[1단계:개념] 4. autowire의 옵션 중, byType과 byName의 차이점을 기본예제를 통해서 설명하세요.
		[1단계:확인] 5. 마트와 마트에서 구매한 객체 Product 3개를 선언하고, 이 중 하나의 객체를 byName으로 설정해서 할당하게 처리
		 * */
		Note note = ctx.getBean("note", Note.class);// ""안에 들어가는값은 xml에 설정된 id값
		System.out.println(note);
		note.writing();
		ctx.close();
	}

}
