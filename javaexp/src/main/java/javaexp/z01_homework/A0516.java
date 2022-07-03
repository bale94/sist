package javaexp.z01_homework;

public class A0516 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. api 클래스의 주요기능과 java.lang.* 패키지의 특징을 기술하세요
		// api클래스는 사용자의 편리를 위한 클래스이다. 개발에 많이 쓰이는 클래스 및 인터페이스들을 모아둔
		// 자바에서 기본적으로 제공하는 패키지이다. java.lang.* 패키지의 특징으로는
		// 기본 제공된 것들이기때문에 따로 import하지않아도 사용이 가능하다.
		
//		[1단계:활용] 2. charAt() 활용 - 알파벳A~Z까지 있는 문자열 배열에서 임의의 문자 4개를 추출하여 출력하세요.
		String alpha = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		System.out.print(alpha.charAt(15)+" ");
		System.out.print(alpha.charAt(0)+" ");
		System.out.print(alpha.charAt(17)+" ");
		System.out.println(alpha.charAt(10));

		System.out.print(alpha.charAt((int)(Math.random()*25))+" ");
		System.out.print(alpha.charAt((int)(Math.random()*25))+" ");
		System.out.print(alpha.charAt((int)(Math.random()*25))+" ");
		System.out.println(alpha.charAt((int)(Math.random()*25)));
		
		char c[] = new char[26];
		int idx1=0;
		for(int code=65;code<=90;code++) {
			c[idx1++]=(char)code;
		}
		
		//char[] 배열을 String 생성자에 할당하면 문자열이 만들어진다.
		String str = new String(c);
		System.out.println(str);
		for(int cnt=1;cnt<=4;cnt++) {
			int rIdx = (int)(Math.random()*26);
			System.out.println(str.charAt(rIdx));
		}System.out.println();
		
//		[1단계:활용] 3. 과일명 5개가 나열된 문자열에서 해당 특정 과일명의 index위치를 추출하여 출력하세요.
		String fruits = "사과 바나나 수박 참외 키위";
		System.out.print(fruits.indexOf("사과")+" ");
		System.out.print(fruits.indexOf("바나나")+" ");
		System.out.print(fruits.indexOf("수박")+" ");
		System.out.print(fruits.indexOf("참외")+" ");
		System.out.println(fruits.indexOf("키위"));
		
//		[1단계:활용] 4. 좋아하는 운동선수 3명이 나열된 문자열에서 length()와 charAt() 반복문을 활용하여,
//						한글자씩을 탭간격으로 출력하세요.
		String ath = "Ryu Kim Yang";
		for(int idx=0;idx<ath.length();idx++) {
			System.out.print(ath.charAt(idx)+"\t");
		}System.out.println();
		
//		[1단계:활용] 5. 회원명단을 ^로 구분하여 나열한 문자열을 선언하고, 이것을 배열로 처리한 후,
//		      		특정회원이 있는지 여부를 확인하는 처리를 해보자.
		String datas = "박찬호@류지혁@황대인@최형우@나성범";
		String mb[] = datas.split("@");
		for(String member:mb) {
			if(member.equals("류지혁")) {
				System.out.println(member+" 회원이 일치합니다");
			}else {
				System.out.println(member+" 일치하지 않는 회원입니다.");
			}
		}System.out.println();
		
		String people = "홍길동^김길동^신길동";
		String [] memArry = people.split("\\^");
		boolean hasMember = false;
		for(String mem:memArry) {
			if(mem.indexOf("오길동")!=-1) {
				hasMember = true;
			}
			System.out.println(mem);
		}
//		[3단계:설치] 6. 오늘 진행한 DB설치 내용을 ppt로 작성하여 캡쳐한 내용을 과제와 함께 전달하세요.

	}

}
