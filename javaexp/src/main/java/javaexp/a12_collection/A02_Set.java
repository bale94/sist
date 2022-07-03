package javaexp.a12_collection;

import java.util.HashSet;
import java.util.Set;

public class A02_Set {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# Set
		1. 컬렉션의 특징과 주요 메소드
			1) 수학의 집합에 비유
			2) 저장 순서가 유지되지 않음
			3) 객체를 중복 저장 불가
			4) 하나의 null만 저장가능
		2. 구현 클래스
			HashSet, LinkedHashSet, TreeeSet
		3. 주요 메소드
			add()
			contains()
			isEmpty
			Iterator<E> iterator()
			size()
			clear()
			remove(Object)
		
		
		 * 
		 * */
		// 상위 인터페이스 = 하위 실제 객체
		Set<String> set = new HashSet<String>();
		set.add("사과");
		set.add("바나나");
		set.add("바나나");
		set.add("딸기");
		set.add("오렌지");
		set.add("수박");
		for(String fruit:set) {
			System.out.println(fruit);
		}// 중복을 제거하지만 순서를 확보하지 못한다.
		// ex) 주머니 속에 구슬 빨강2개, 파랑3개, 노랑2개를 Set으로
		//		할당하고 for문을 통해서 출력하세요
		Set<String> set1 = new HashSet<String>();
		set1.add("빨강");
		set1.add("빨강");
		set1.add("파랑");
		set1.add("파랑");
		set1.add("파랑");
		set1.add("노랑");
		set1.add("노랑");
		for(String bids:set1) {
			System.out.println(bids);
		}
		
		
	}

}
