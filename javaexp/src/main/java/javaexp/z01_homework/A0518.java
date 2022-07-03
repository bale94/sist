package javaexp.z01_homework;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class A0518 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. Set컬렉션의 특징을 기본 예제를 통해서 기술하세요.
		// 저장 순서가 유지되지않고, 객체를 중복저장할 수 없으며 하나의 NULL만 저장가능하다.
		Set<String> set = new HashSet<String>();
		set.add("사과");
		set.add("바나나");
		set.add("바나나");
		set.add("딸기");
		set.add("오렌지");
		set.add("수박");
		for(String fruit:set) {
			System.out.println(fruit);
		}	//중복을 제거하지만 순서가 섞인다.
		
//		[1단계:개념] 2. map컬렉션의 특징을 기본 예제를 통해서 기술하세요.
		// 키와 value로 구성된 Map.Entry객체를 저장하는 구조이다. Key와 value는 모두 객체이고
		// 키는 중복될 수 없지만 값은 중복저장이 가능하다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("1000", "홍길동");
		map.put("1001", "김길동");
		map.put("1002", "신길동");
		map.put("1003", "오길동");
		map.put("1002", "마길동");
		map.put("1001", "하길동");
		Set<String> memKey = map.keySet();
		for(String key:memKey) {
			System.out.println(key+"-"+map.get(key));
		}
		
//		[1단계:개념] 3. Map<Integer, Player> 형태로 번호와 선수정보를 mapping하는
//		      Map 객체를 생성하여 선수의 팀명 이름 성적으로 3명 선수번호와 함께 출력하세요.
		//잘모르겠어요..
		Map<Integer, Player> blist = new HashMap<Integer, Player>();
		blist.put(10, new Player("삼성", "피렐라", 0.399));//auto-boxing
		blist.put(11, new Player("롯데", "이대호", 0.359));
		blist.put(12, new Player("롯데", "한동희", 0.356));
		blist.put(12, new Player("기아", "소크라테스", 0.356));
		
		for(int no:blist.keySet()) {//Integer ==> int-> auto unboxing
			Player p = blist.get(no);	// Map객체.get(key값): 연결된 단위 객체를 value값으로 가져온다
			System.out.print(no+"\t");
			System.out.print(p.getTname()+"\t");
			System.out.print(p.getName()+"\t");
			System.out.print(p.getRecord()+"\n");
		}
		
//		[1단계:개념] 4. select 컬럼과 where 조건의 차이점를 예제로 기술하세요.
		// select 컬럼은 테이블안에서 보고싶은 정보를 고르는것이고 where조건은 그 테이블의 정보의 양을 줄이는 방법이다.
		// select * from emp; 는 모든정보를 보여주지만 select ename from emp where job like '%ER';
		//이라고하면 직책이 ER로 끝나는 사원들의 사원명만을 보여주기때문에 요약된 정보를 볼수있다.
		
//		[1단계:활용] 5. 사원정보에서 급여가 2000~5000인 사원번호, 사원명, 급여를 출력하세요.
		// select empno, ename, sal from emp where sal between 2000 and 5000;
		
//		[1단계:활용] 6. 직책이 CLERK와 MANAGER를 검색하여 이에 해당 하는 사원 정보를 출력하세요.
		// select * from emp where job like '%ER%';	--> CLERK와 MANAGER의 공통부분이 ER이기때문
		
//		[1단계:활용] 7. [SUBQUERY in] 사원번호 7566, 7782가 소속된 부서번호에 해당하는 
//		      사원정보를 출력하세요.
		// SELECT * FROM emp WHERE deptno IN (SELECT deptno FROM emp WHERE empno IN (7566,7782));
		
//		[1단계:개념] 8. 키워드 검색의 종류를 예제와 함께 나열해보세요.
//		'데이터%' : 해당 데이터로 시작되는 데이터
//		'%데이터' : 해당 데이터로 끝나는 데이터
//		'%데이터%' : 해당 데이터가 포함되는 데이터
//		'_데이터' : 두번째글자부터 포함된 데이터를 찾는다
//		'데이터_' : 마지막글자를 제외한 앞부분이 포함된 데이터를 찾는다
		
//		[1단계:활용] 9. 1981에 입사한 사원들의 직책을 기준으로 사원정보를 출력하세요..
//		SELECT * FROM emp WHERE TO_CHAR(HIREDATE) LIKE '%81%';		
		
//		[1단계:활용] 10. like 키워드로 1/4분에 입사한 사원들의 부서정보와 동일한 사원들을 출력하세요.
//		// database 2번파일아래에 들어있다
		// to_char(hiredate) in '___01%' '___03%' 쓰는방식
		
//		[1단계:개념] 11. 집합연산자의 종류를 예제를 통해서 기술하세요.
//		1) union : 두 집합에 대해 중복되는 행을 제외한 합집합
//		2) union all : 두 집합에 대해 중복되는 행을 포함한 합집합
//		3) minus : 두 집합간의 차집합
//		4) intersect : 두 집합간의 교집합

	}
}
class Player{
	private String tname;
	private String name;
	private double record;
	public Player(String tname, String name, double record) {
		this.tname = tname;
		this.name = name;
		this.record = record;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getRecord() {
		return record;
	}
	public void setRecord(double record) {
		this.record = record;
	}
	
	
}


