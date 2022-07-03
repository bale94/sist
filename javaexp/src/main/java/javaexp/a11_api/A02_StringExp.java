package javaexp.a11_api;

public class A02_StringExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# StringBuffer, StringBuilder 클래스
		1. 문자열의 데이터 누적처리 문제점
			1) 문자열은 데이터를 누적처리할 때 새로운 heap영역의 메모리를 따로 만들어
				사용하는 메모리 낭비를 초래한다.
		2. 하나의 heap영역의 메모리에 하나의 주소값에 문자열 데이터를 누적해서 처리하려면
			StringBuffer, StringBuilder를 필요로 한다.
		3. 차이점
			StringBuilder: 단일 스레드 환경에서 사용가능하다
			StringBuffer: 멀티 스레드 환경에서 사용가능하다.
				
		 * 
		 * */
		String data = "";
		for(int cnt=1; cnt<=10; cnt++) {
			data+=cnt+"";	//메모리가 10개(heap영역) 따로 만들어져서 처리가 된다.
		}
		System.out.println(data);
		StringBuffer sb = new StringBuffer();
		for(int cnt=1;cnt<=10;cnt++) {
			sb.append(cnt+"");	// sb참조로하는 단일 메모리에 누적되어 처리된다.
		}
		System.out.println(sb.toString());
		//ex) StringBuffer를 이용해서 사과+갯수를 추가하여 화면에서 1~20까지 사과15형식으로 누적되어 출력되게하세요
		StringBuffer data1 = new StringBuffer();
		for(int cnt=1;cnt<=20;cnt++) {
			data1.append("사과"+cnt);
			System.out.println(data1.toString());
		}
		/*
		StringBuffer fsb = new StringBuffer();
		for(int cnt=1;cnt<=20;cnt++){
			fsb.append("사과"+cnt+"\t	");
		}
		System.out.println(fsb.toString());
		 * */
		
		
	}

}
