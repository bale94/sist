package javaexp.a05_reference;

public class A04_Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 배열 타입
		1. 같은 타입의 데이터를 연속된 공간에 저장하는 자료구조
		2. 각 데이터 저장 위치는 인덱스 부여해서 접근한다.
		 * */
		int[] arry = {1000,2000,3000,4000};
		System.out.println(arry[0]);
		System.out.println(arry[1]);
		System.out.println(arry[2]);
		System.out.println(arry[3]);
		
		/*
		# 배열의 장점
		1. 중복된 변수 선언을 줄이기위해 사용합니다.
			int num01;
			int num02;
			int num03;
			int num04;
			==>
			int[] numArry;
		2. 반복문을 통해서 효과적으로 활용할 수 있다.
			for(인덱스의 초기값;인덱스의범위;증감연산자){
			
			}
		 * */
		// 배열명.length : 배열의 길이
		// 배열의 index의 최고값: 배열의 길이 -1 (***배열의 index는 0부터 시작하기때문!!)
		// 배열의 범위를 설정할 때, index값이 길이보다 작기때문에
		// 비교연산자를 <   cf) 주의 <=를 쓰면안됨!! ********
		System.out.println("반복문을 통한 배열의 처리");
		for(int idx=0; idx < arry.length; idx++) {
			System.out.print("index 번호: "+idx+"\t");
			System.out.print(arry[idx]+"\n");
		}
		
		/*
		# 배열의 선언과 할당
		1. 배열을 사용하기 위해서 우선 배열변수를 선언해야한다.      <--- 배열의 선언
			데이터유형[] 배열변수;
			데이터유형 배열변수[];   []가 앞에붙던 뒤에붙던 상관없다.
			
		2. 배열은 초기화를 통해 선언을 완료한다.
			배열변수 = null;
			배열의 초기화 선언만으로는 배열을 사용할 수 없다. <-메모리가 할당되는 것이 아니다. 정말 단순히 초기화
			ex) int num01;  <-선언 
				num01 = 0; <-초기화해야 사용할수 있듯이
		
		3. 배열의 heap영역에 메모리를 할당하여야 사용할 수 있다.
			1) new 데이터유형[배열의 크기]; 초기값(0)으로 모든 배열의 구성요소를 할당.
			2) {데이터1, 데이터2, 데이터3, ...} : 선언과 직접적인 데이터 할당을 한번에 진행
			3) new 데이터유형[]{데이터1, 데이터2, 데이터3, ...}; : 선언/할당을 분리하여 진행할 때
			4) 각 배열의 index값을 할당
			
			
		 * */
		int []arry01; // 배열의 선언
		int arry02[]; // 배열의 선언2
		
		arry01 = null; // 배열의 stack영역 초기화 : heap영역에 할당되지 않음, 사용불가
		float [] arry03 = null;
		System.out.println(arry01);
		System.out.println(arry03);
//		System.out.println(arry02);	//stack영역 초기화하지않아 호출조차 할 수 없다.
//		heap영역에 할당하지않는 상황에서 index로 사용하면 에러발생
//		System.out.println(arry01[0]); //에러발생
		
		//heap 메모리 할당 - 데이터 초기화
		// 객체는 stack/heap영역 같이 사용하고, new 키워드를 통해서 heap영역에 객체를 생성
		int [] arry04 = new int[5];	// int형으로 5개가 포함된 배열 선언
		arry04[2] = 30;
		System.out.println(arry04[0]);
		System.out.println(arry04[1]);
		System.out.println(arry04[2]);
		System.out.println(arry04[3]);
		System.out.println(arry04[4]);
		
		int [] arry05 = {10,20,40,30,50};
		// 배열객체를 생성, 초기 데이터 할당
		System.out.println(arry05[0]);
		System.out.println(arry05[1]);
		System.out.println(arry05[2]);
		System.out.println(arry05[3]);
		System.out.println(arry05[4]);
		
		int [] arry06;
		arry06 = new int[] {10,40,20};
		// 선언 후, 초기데이터 할당시엔 '반드시' new 데이터유형[]{} 선언하여야한다.
		System.out.println(arry06[0]);
		System.out.println(arry06[1]);
		System.out.println(arry06[2]);
		char [] arry07 = {'A', 'C', 'E'};
		double [] arry08 = {30.5, 40.2, 50.7};
		String[] arry09 = {"사과", "바나나", "딸기"};
		for(int idx=0;idx<arry07.length;idx++	) {
			System.out.println(arry07[idx]+":"+arry08[idx]+":"+arry09[idx]);
		}
		
		//ex1) 정수형으로 5개 초기값 0으로 배열을 선언하고, 2번째와 4번째 데이터를 할당하고 전체데이터를 출력하세요
		int [] arry10 = new int[5];
		arry10[1]=4;
		arry10[3]=10;
		for(int idx=0;idx<arry10.length;idx++) {
			System.out.print(arry10[idx]+"\t");
		}System.out.println();
		
		//ex2) 몸무게(실수) 배열 3개를 선언과 동시에 할당하고 출력하세요.
		double [] arry11 = {70.0, 80.0, 72.0};
		for(int idx=0;idx<arry11.length;idx++) {
			System.out.print(arry11[idx]+"\t");
		}System.out.println();

	}

}
