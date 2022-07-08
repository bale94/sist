package springweb.a01_start;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.z01_vo.Member;
import springweb.z01_vo.Product;
// springweb.a01_start.A01_StartController
// a01_StartController         /url, 클래스명은 전부 다르게 설정해야 한다.
@Controller("controller01")// --> id값을 설정하여 사용
public class A01_StartController {
	// http://localhost:7080/springweb/start.do
	@RequestMapping("/start.do")
	public String start(){
		// 처리할 controller 내용
	
		return "WEB-INF\\views\\a01_startView.jsp";
	}
	//ex) A02_SecondController.java
	//		WEB-INF\\views\\a02_view.jsp
	// http://localhost:7080/springweb/second.do
	// http://localhost:7080/springweb/call01.do?name=홍길동&age=25
	// 요청값 처리
	@RequestMapping("call01.do")
	public String call01(@RequestParam("name") String name,
						@RequestParam("age") int age
			) {
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		return "";
	}
	// ex) /call02.do?pname=사과&price=12000&cnt=2
	// http://localhost:7080/springweb/call02.do
	// http://localhost:7080/springweb/call02.do?pname=사과&price=12000&cnt=2
	//		console에 물건명 가격 갯수를 출력
	@RequestMapping("call02.do")
	public String call02(@RequestParam(value="pname", defaultValue = "") String pname,
						@RequestParam(value="price", defaultValue = "0") int price,
						@RequestParam(value="cnt", defaultValue = "0") int cnt,
						Model d
			) {
		System.out.println("물건명:"+pname);
		System.out.println("가격:"+price);
		System.out.println("개수:"+cnt);
		//모델 설정
		d.addAttribute("buyInfo",new Product(pname, price, cnt));
		//			Product buyInfo = new Product(pname, price, cnt)
		// view단 - ${buyInfo.pname} ${buyInfo.price} ${buyInfo.cnt}
		
		return "WEB-INF\\views\\a01_basic\\a01_product.jsp";
	}
	//
	// http://localhost:7080/springweb/call03.do
	// 화면은 좋아하는운동선수:[], 성적:[] [데이터입력]
	// 입력버튼 클릭시 하단에 입력된 정보 출력
	// a02_player.jsp
	@RequestMapping("call03.do")
	public String call03(@RequestParam(value="pname", defaultValue="") String pname,
						@RequestParam(value="record", defaultValue="") String record,
						Model d
						) {
		System.out.println("선수명:"+pname);
		System.out.println("성적:"+record);
		
		d.addAttribute("playerInfo", "이름은 "+pname+", 성적은 "+record);
		
		return "WEB-INF\\\\views\\\\a01_basic\\\\a02_player.jsp";
	}
	// 객체로 요청값 처리: useBean의 property개념으로 처리가 가능
	// http://localhost:7080/springweb/empList.do
	// http://localhost:7080/springweb/empList.do?ename=홍길동&job=사원
	/*@RequestMapping("/empList.do")
	public String empList01(Emp sch, Model d) {
		System.out.println("사원명:"+sch.getEname());
		System.out.println("직책명:"+sch.getJob());
		d.addAttribute("emplist",new A04_PreDAO().getEmpList2(sch));
		
		return "WEB-INF\\views\\a01_basic\\a06_empList.jsp";
	}*/
	
	// http://localhost:7080/springweb/reg01.do
	@RequestMapping("/reg01.do")
	public String reg01(@RequestParam(value="name", defaultValue="") String name,
						@RequestParam(value="age", defaultValue="") String age,
						Model d
			) {
		System.out.println("이름:"+name);
		System.out.println("나이:"+age);
		
		d.addAttribute("memberInfo", new Member(name, age));
		
		return "WEB-INF\\views\\a01_basic\\a07_memList.jsp";
	}
	
	
	
	
	
	
	
	
}
