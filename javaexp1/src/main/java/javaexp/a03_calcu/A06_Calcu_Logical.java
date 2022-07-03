package javaexp.a03_calcu;

public class A06_Calcu_Logical {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 논리연산자
		1. 비교연산자나 boolean(true/false)값이 나오면 그것에의해 and(논리합), or(논리곱)에 의해 결과를 혼합해서
		처리할 때 필요한 연산자를 말한다.
		2. 형식
			비교연산자1 && 비교연산자2
				두 개의 비교연산식이 모두 다 true일 때, true로 처리되는 것을 말한다.
				ex) 국어점수와 영어점수 모두 80점 이상일때, 합격인 경우를 처리할 때 활용된다.
				kor>=80 && eng>=80
			비교연산자1 || 비교연산자2
				두 개의 비교연산식 중 하나만 true일 때 true이고, 모두 다 false일때는 false일 경우에 필요한
				논리 연산자이다.
				ex) 국어, 영어, 수학 점수가 하나라도 80점 이상이면 합격인 경우를 처리할 때 활용된다.
				kor>=80 || eng>=80 || mat>=80
			cf) &, &&
				|, ||
				차이는, 두개가 있을경우 -> 논리식이 합당치 않으면 두번째 비교연산식에 처리를 방지해준다.
				&&의 경우, 앞의 비교연산식이 false면 뒤의 비교연산식까지 도달하지도 못하고 false가 return된다.
				하지만 ||의 경우 앞의 비교연산식이 true면 마찬가지로 뒤의 연산식까지 가지않고 true를 return한다.
		 * */
		int kor = 80;
		int eng = 70;
		int mat = 90;
		System.out.print("모두가 80이상일 때 합격: ");
		System.out.println(kor>=80 && eng>=80 && mat>=80);
		System.out.print("하나라도 80이상이면 합격: ");
		System.out.println(kor>=80 || eng>=80 || mat>=80);
		
		//ex1) 구매한 물건(사과, 바나나, 딸기) 모두가 2000원 이상이면 vip고객여부를 true
		//ex2) 위 구매물건에서 갯수를 각각 처리하여 총비용이 5000원이상인 것이 있으면 할인대상 고객여부 true
		
		int strb = 2000;
		int bana = 2500;
		int appl = 2400;
		boolean isVip = strb>=2000 && bana>=2000 && appl>=2000;
		System.out.println("모두가 2000원 이상이면 vip: "+isVip);
		int strbNum = 4;
		int banaNum = 2;
		int applNum = 5;
		boolean isSale = strb*strbNum>=5000 || bana*banaNum>=5000 || appl*applNum>=5000;
		System.out.println("총 비용이 5000원 이상인 것이 있으면 할인대상고객: "+isSale);
		
		/*
				논리 부정 연산자 : !
					논리결과값이 true ==> false, false ==> true로 처리하는 논리 연산자이다.
		 * */
		System.out.println("할인대상 고객이 아닌지 여부: "+!isSale);
		
		
	}

}
