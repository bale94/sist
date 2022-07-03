package javaexp.a06_class;

public class A12_ObjectCalcu {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member m = new Member();
		System.out.println("현재로그인: "+m.curLoginId());
		m.login("himan", "7777");
		System.out.println("현재로그인: "+m.curLoginId());
		System.out.println(m.loginResult());
		// ex) 필드로 point 변수지정 setPoint() point값 할당
		//		String isSuperUser() point 10000이상이면 MVP입니다 리턴, 일반고객입니다
		m.setPoint(7500);
		System.out.println(m.isSuperUser());
	}

}
class Member{
	String id;
	String pass;
	int point;
	void setPoint(int point) {
		this.point = point;
	}
	String isSuperUser() {
		String state;
		if(point>=10000) {
			state =  "MVP입니다.";
		}else {
			state = "일반고객입니다.";
		}
		return state;
	}
	void login(String id, String pass) {
		this.id = id;
		this.pass = pass;
	}
	String loginResult() {
		String result = "로그인 실패";
		if(id.equals("himan") && pass.equals("7777")) {
			result = "로그인 성공";
		}
		return result;
	}
	String curLoginId() {
		return id;
	}
}