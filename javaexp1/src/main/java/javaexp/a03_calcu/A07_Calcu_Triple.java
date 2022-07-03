package javaexp.a03_calcu;

public class A07_Calcu_Triple {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 삼항연산자
		1. 세 개의 피연산자를 필요로 하는 연산자
		2. 앞의 조건식 결과에 따라 콜론 앞 뒤의 피연산자 선택
			==> 조건 연산기
		3. 형식
			(비교연산자, 논리연산자) ? true일때return : false일때return
		 * */
		int point = 80;
		String result = (point>=70)?"합격":"불합격";
		System.out.println("점수: "+point);
		System.out.println("결과: "+result);
		
		//ex1) 쇼핑몰에서 구매한 물건의 가격과 갯수를 변수로 설정하여 총 비용이 30000이상이면 할인대상고객,
		//		그렇지않으면 일반고객으로 표시하세요.
		int stfPrice, stfCnt;
		stfPrice = 5000; stfCnt = 3;
		String tot = (stfPrice*stfCnt >= 30000)?"할인대상고객":"일반고객";
		System.out.println(tot);
		//ex2) 위 문제에서 나이를 check하여 나이가 20살 미만이면 20%할인하여 금액을 산정하고,
		//		그렇지 않으면 전체금액을 처리할 때, 최종금액을 출력하세요.
		int age;
		age = 21;
		System.out.println("나이는: "+age+"살");
		double ageDis = (age<20)?(stfPrice*stfCnt*0.8):(stfPrice*stfCnt);
		System.out.println("나이를 반영한 총 가격은: "+(int)ageDis);

	}

}
