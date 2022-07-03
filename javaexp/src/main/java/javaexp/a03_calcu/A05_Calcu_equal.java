package javaexp.a03_calcu;

public class A05_Calcu_equal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 비교연산자
		1. 두 개의 피연산자의 값을 비교하여 동일한지(==), 다른지(!=), 큰지(>), 작은지(<)를 boolean값 true/false으로 결과를
		처리하는 연산자를 말한다.
		2. 종류
			== ,!= ,> ,< ,>= ,<=
		3. 활용
			boolean에 할당하거나, 조건식if(비교연산자), while(비교연산자)를 통하여 활용한다.
		 * */
		int num01 = 25;
		int num02 = 5;
		System.out.println("#비교연산결과#");
		System.out.println(num01+" == "+num02+" ==> "+(num01==num02));
		System.out.println(num01+" != "+num02+" ==> "+(num01!=num02));
		System.out.println(num01+" > "+num02+" ==> "+(num01>num02));
		System.out.println(num01+" < "+num02+" ==> "+(num01<num02));
		System.out.println(num01+" >= "+num02+" ==> "+(num01>=num02));
		System.out.println(num01+" <= "+num02+" ==> "+(num01<=num02));
		
		boolean isEqual = num01 == num02;
		System.out.println("같은지 여부: "+isEqual);
		if(isEqual) {
			System.out.println("동일합니다.");
		}else {
			System.out.println("동일하지 않습니다.");
		}
		while(num01!=num02) {
			System.out.println(num01+":"+num02);
			num02++;
		}
		// ex1) 획득 점수를 변수로 선언하고, 합격기준 점수도 변수를 선언하여
		//		합격여부를 boolean값으로 아래형식대로 출력하시오
		//		획득점수: @@@, 합격 기준점수: @@@, 합격여부: true/false
		// ex2) 4지선다에서 check한 번호 선언, 정답번호 선언, 정답여부를 출력
		int passScore, score;
		passScore = 75; score = 60;
		boolean isPass = score >= passScore;
		System.out.println("합격여부: "+isPass);
		
		int numChoose, numAns;
		numChoose = 1; numAns = 3;
		boolean isCorrect = numChoose == numAns;
		System.out.println("정답여부: "+isCorrect+"\n");

	}

}
