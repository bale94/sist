package javaexp.a05_reference;

public class A03_String {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*
		# String 타입과 메모리 할당
		1. 문자열 바로 할당하면 같은 문자열인 경우에는 같은 heap영역의 메모리를 사용하여 ==(비교연산자)를 활용하면 동일하게 처리된다.
			cf) 대부분 외부에서 입력을 받거나 전달받는 데이터는 이렇게 처리되지 않는다.
		 * */
		String name01 = "홍길동";
		String name02 = "홍길동"; // 같은 heap메모리를 바라본다.
		System.out.println(name01 == name02);
		//문자열은 변경되거나 기능적인 처리가 많이 필요하기때문에 객체로 만들어 여러가지 기능메서드를 제공하여 처리할 수 있게 한다.
		// name01.메서드()
		/*
		2. 문자열의 일반적인 데이터 생성 형태는 내부적으로 new String()로 사용된다.
			ps) 데이터베이스에서 데이터를 가지고오거나, Scanner나 네트워크를 통해서 문자열데이터를 갖고올때, 아래 형식으로 가져오게된다.
			새로운 heap영역의 메모리를 만들어 문자열 객체를 사용한다.
		 * */
		
		String name03 = new String("홍길동");
		String name04 = new String("홍길동");
		System.out.println("주소값 비교: "+(name03 == name04));
		System.out.println("데이터의 자체 내용을 비교하는 매서드 equals를 활용하여야 된다.");
		System.out.println("문자열 비교: "+(name03.equals(name04)));
		
		System.out.println("name01과 name03의 주소값 비교: "+(name01==name03));
		System.out.println("name01과 name03의 주소값 비교: "+(name01.equals(name03)));
		/*
		# 정리
		1. 문자열의 데이터 비교는 기능 메서드 equals()를 활용하여야 한다.******************
		 * */
		

		
		
		
	}

}
