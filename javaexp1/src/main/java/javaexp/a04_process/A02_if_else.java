package javaexp.a04_process;

public class A02_if_else {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 분기 조건문 처리
		1. 기본 형식
			if(조건식){
				조건식이 true일 때, 
			}else{
				조건식이 false일 때
			}
		2. 여러가지 분기 조건
			if(조건1){
			
			}else if(조건2){
			
			}else if(조건3){
			
			}else if(조건4){
			
			}else{
			
			}
			
			ex)
			if(point>=90){
				A학점 처리
			}else if(point<90 && point>=80){
					//else를 통해서 '상위에 선언된 조건을 제외하고' 라는 것이 포함되어있기에
					// point<90은 필요가 없는 조건이다
					 B학점 처리
					 
			}else if(point>=70){
			
			}
			
			
			
		 * */
		/*
		# java에서 문자열의 비교 처리
		1. 문자열1 == 문자열2 (X) 로 비교하면 예외가 발생한다.
		★2. 문자열1.equals(문자열2)
		 * */
		
		String name01 = "홍길동";
		String name02 = "홍길동";
		String name03 = "신길동";
		System.out.println("문자열 비교: "+name01.equals(name02));
		System.out.println("문자열 비교: "+name01.equals(name03));
		
		String inputId = "himan";
		String inputPwd = "9999";
		if(inputId.equals("himan") && inputPwd.equals("9999")){
			System.out.println(inputId+"님 로그인 성공");
		}else {
			System.out.println("로그인 실패");
		}
		
		// ex) age를 임의의 숫자로 할당하고, 10~20 까지일때는 청소년 요금제입니다.
		//		그외는 청소년 요금제가 아닙니다. 출력하게하세요.
		
		int age = 25;
		if(age>=10 && age<=20) {
			System.out.println("청소년 요금제입니다.");
		}else {
			System.out.println("청소년 요금제가 아닙니다.");
		}
		//구매비용을 기준으로 MVP, VIP, 보통고객
		int buyPrice = 5200;
		int buyCnt = 15;
		int total = buyPrice*buyCnt;
		System.out.println("구매 비용이 "+total+"원 이므로");
		if(total>=100000) {
			System.out.println("MVP고객입니다.");
		}else if(total>=50000){
			System.out.println("VIP고객입니다.");
		}else {
			System.out.println("보통고객입니다.2");
		}
		
		//ex) 타율: 안타수/타석 입력받아서
		//	0.350 이상은 최고타자 0.3~0.35미만 우수타자 0.25~0.3미만 일반타자 0.25미만 2군준비타자
		int hitStand, hit;
		hitStand = 100; hit = 30;
		double hitRate = hit/(double)hitStand;
		if(hitRate >= 0.350) {
			System.out.println("타자의 타율은: "+hitRate+"이므로 최고타자");			
		}else if(hitRate >= 0.3) {
			System.out.println("타자의 타율은: "+hitRate+"이므로 우수타자");	
		}else if(hitRate >= 0.25) {
			System.out.println("타자의 타율은: "+hitRate+"이므로 일반타자");	
		}else {
			System.out.println("타자의 타율은: "+hitRate+"이므로 2군준비타자");	
		}
		
		// # 중첩 조건문: 조건문 안에 조건문이 계층적으로 처리될 때 활용된다.
		boolean isMale = true;
		int ckAge = 18;
		if(isMale) {
			if(ckAge>=20) {
				System.out.println("신사");
			}else {
				System.out.println("소년");
			}
		}else {
			if(ckAge>=20) {
				System.out.println("숙녀");
			}else {
				System.out.println("소녀");
			}
		}
		
		
		
		
		

	}

}
