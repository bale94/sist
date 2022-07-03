package javaexp.a03_calcu;

public class A04_Calcu04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 증감연산자
		1. 증가 또는 감소 처리를 할 때 활용된다.
		2. 반복문에 주로 활용된다.
		3. 형식
			변수명++, 변수명--
			++변수명, --변수명
		ps) 2 이상 증가 감소시엔 +=,-= 활용
		 * */
		int num01 = 1;
		int num02 = 10;
		System.out.println(num01++);//증가는 했지만 다음 프로세스에 적용된다.
		System.out.println(num01++);
		System.out.println(num01++);
		System.out.println(num01);
		System.out.println(++num01);
		
		System.out.println(--num02);
		System.out.println(num02--);
		System.out.println(num02);
		
		//ex) 구매하는 김밥의 갯수를 선언하고, 1씩 증가하여
		//		김밥의 단가(2500)
		//		김밥 1개 구매	2500
		//		김밥 2개 구매	5000
		//		김밥 3개 구매	7500
		//		김밥 4개 구매	10000
		//		김밥 5개 구매	12500
		
		int kimbob = 1;
		int kbPrice = 2500;
		System.out.println("김밥"+(kimbob)+"개 구매\t"+kbPrice*kimbob);
		System.out.println("김밥"+(++kimbob)+"개 구매\t"+kbPrice*kimbob);
		System.out.println("김밥"+(++kimbob)+"개 구매\t"+kbPrice*kimbob);
		System.out.println("김밥"+(++kimbob)+"개 구매\t"+kbPrice*kimbob);
		System.out.println("김밥"+(++kimbob)+"개 구매\t"+kbPrice*kimbob);

	}

}
