package javaexp.z01_homework;

import java.util.ArrayList;
import java.util.List;

public class A0517 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 특정 DB서버에 접속에 필요한 정보는 무엇이 있는가를 기술해 보세요.
		// ip, port, db명, id, pw(계정)
		
//		[1단계:개념] 2. select 구문의 컴럼 선택과 별칭사용에 대하여 예제를 통하여 설명하세요.
		// select 컬럼 from 테이블;로 사용하며 별칭은 자바처럼 sal Salary, 혹은 as를 사용하여 sal as Salary로 사용한다.
		
//		[1단계:확인] 3. emp 테이블의 컬럼명을 한글로 표현해보세요.
//					ex) 사원번호, 사원명, 직책, 관리자, 입사일, 급여, 보너스, 부서번호
		//select empno 사원번호, ename 사원명, job 직책, mgr 관리자, hiredate 입사일, sal 급여, bonus 보너스, deptno 부서번호
		//from emp;
		
//		[1단계:확인] 4. sal를 부서번호로 부너번호%로 보너스처리하여 급여를 정하기로 했다.
//					sal==> 기본급여, deptno ==> 보너스, 총급여(기본급여+보너스) 로 처리하여 출력하되
//					alias명도 함께 처리하세요.
		//select sal 기본급여, deptno 보너스, sal*(1+(deptno/100)) 총급여
		//from emp;
		
//		[1단계:확인] 5. 아래의 형식으로 컬럼간의 연산과 연결처리를 하여 alias로 출력하세요.
//		            1) @@님의 사원번호는 @@이고, 올해 연말보너스는 연봉의 20%인 @@원입니다.  @@님(ename)
//		            2) @@님의 입사일은 @@이고, 현재 연봉의 1/13인 월급여는 @@만원.   입사일 @@(hiredate)
//		            3) @@님의 이번달 보너스는 연봉(sal)의 deptno%기준으로  @@@만원 지급합니다. 
		// select ename || '님의 사원번호는 ' || empno || '이고, 올해 연말보너스는 연봉의 20%인 ' || sal(1+sal*0.2) ||'원 입니다' 총보너스
		// from emp;
		// select ename||'님의 입사실은 '||hiredate||'이고, 현재 연봉의 1/13인 월급여는 '||sal/13||'만원' 월급
		// from emp;
		// select ename||'님의 이번달 보너스는 연봉(sal)의 deptno%기준으로 '||sal*(deptno/100)||'만원 지급합니다' 보너스
		// from emp;
		
//		[1단계:개념] 6. distinct로 데이터를 처리해야 하는 경우를 기본예제를 통해서 설명하세요.
		// distinct는 테이블에서 중복되는 데이터를 모두 제거한 뒤 중복되지않은 데이터만 보여주는 기능이다
		// select distinct deptno from emp; 일때 중복되는 deptno는 모두 제거되고 데이터를 보여준다.
		
//		[1단계:개념] 7. 기본 유형을 Wrapper 클래스로 만드는 이유를 설명하세요.
		// 기본타입 값은 외부에서 변경할 수 없기때문에, 외부에서 손쉽게 변경할 수 있도록 Wrapper클래스로 포장해서 처리하는 것이다.
		
//		[1단계:확인] 8. 아래의 기본유형의 문자열을 Wrapper클래스의 valueOf 메서드를 이용해서 Wrapper클래스로 만들어 보세요.
//		                (Integer,Character,Boolean)
		Integer i01 = Integer.valueOf(1000);
		System.out.println(i01);
		Character c01 = Character.valueOf('이');
		System.out.println(c01);
		Boolean b01 = Boolean.valueOf(false);
		System.out.println(b01);
		
//		[1단계:개념] 9. boxing, unboxing, auto boxing/auto unboxing 개념에 대하여 기본예제로 기술하세요.
		//boxing은 8번처럼 valueOf() 메소드나, 생성자를 사용해서 할 수 있다.
		//unboxing은 그것을 되돌리는 역할이다.
		int i02 = i01.intValue();
		char c02 = c01.charValue();
		boolean b02 = b01.booleanValue();
		// auto boxing은 포장 클래스타입에 기본값이 대입되면 발생한다.
		Integer i03 = 100;
		// auto unboxing은 기본타입에 포장객체가 대입되면 발생한다.
		int i04 = i01 + 100;
		
//		[1단계:개념] 10. 컬렉션 프레임 웍의 최상위 인터페이스 3가지와 그 특징을 기술하세요.
		// 최상위 인터페이스: List, Set, Map
		//List: 순서를 유지하고 저장하고, 중복저장이 가능하다
		//Set: 순서를 유지하지않고 저장하고, 중복저장이 불가능하다
		//Map: 키와 값의 쌍으로 저장하고, 키는 중복저장이 불가능하다
		
//		[1단계:확인] 11. List기능 메서드를 예제를 통하여 설명하세요
		List<String> list = new ArrayList<String>();
		list.add("야채김밥");
		list.add("참치김밥");
		list.add("돈가스김밥");	//총 3가지의 김밥
		list.set(2, "치즈김밥");	// 그 중 3번째 김밥을 수정
		list.remove(1);			// 그리고 2번째 김밥을 목록에서 삭제
		for(int idx=0; idx<list.size(); idx++) {
			System.out.println(list.get(idx));	//list에서 idx위치에 있는 요소를 리턴
		}


	}

}
