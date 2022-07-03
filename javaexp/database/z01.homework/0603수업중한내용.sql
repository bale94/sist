SELECT * FROM emp;
-- 조회한 결과와 같은 모양을 ResultSet 객체가 갖고있다
-- rs.next() : 행단위로 커서를 위치시켜주고 해당 행에 데이터가 있으면 true, 없으면 false
-- rs.next() : 한번 호출하면 첫번째 행, 두번 호출하면 두번째행에 커서를 위치(호출횟수대로 이동횟수가 추가되는것)
-- 데이터가 12개 있으면 12번째까지는 true, 13번째 호출하면 false가 나온다.
-- rs.getInt("empno") : sql의 결과로 나온 컬럼명과 데이터유형에 맞게 가져온다
-- rs.get데이터유형("컬럼명")
-- rs.getString("job")
-- ex) 3행의 sal을 가져오려면 rs.next()와 rs.get~()을 어떻게 호출해야하는가?
-- rs.next() 3번, rs.getDouble("sal")
-- ex) 2행의 ename을 가져오려면 rs.next()와 rs.get~()
-- rs.next() 2번, rs.getString("ename")
-- ex) 5행의 deptno를 가져오려면
-- rs.next() 5번, rs.getInt("deptno")
SELECT empno NO , ename name
FROM emp;
-- 주의) sql의 결과로 나온 컬럼명으로 rs.getString("컬럼명")을 지정해야하고, 그냥 테이블의 컬럼명으로 하면 안된다

/*
속성을 담을 VO객체를 위한 클래스 선언


 * */
/*
String sql = "Select count(*)
				from emp
			where deptno = "+deptno;
 * 
 * */
SELECT count(*)
FROM EMP e 
WHERE job = 'CLERK';
/*
Select count(*)
from emp
where job = CLERK;	// 에러발생
 * */
/*
String sql = "Select count(*)
from emp
where job = '"+job+"'";	// job = 'CLERK'; 의 형태를 유지해주면서 sql을 만들어야한다.
 * 
 * */






