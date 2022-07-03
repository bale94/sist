/*
# NULL 데이터
1. database에서는 테이블내에 특정 컬럼에 데이터가 없는것을 NULL이라고 한다
2. 미확인 값이나 아직 값이 적용되지 않은 것을 의미
3. 0이나 ''(공백)과 구분되어 정의되지 않는 값을 의미한다
	''도 null로 인식하는 경우가 있다.
	cf) 프로그램의 primitive 데이터의 초기값 설정과 차이가 있다.
	
	select * from emp_cp100;
	insert into emp_cp100(ename) values(null);
	insert into emp_cp100(ename) values(''); -- DB에서는 NULL로 처리된다.
	insert into emp_cp100(ename) values(' ');
	
4. NULL값은 다른 데이터와 연산 결과값은 NULL로 된다.
	select sal+NULL ==> NULL
5. 위와같이 특정한 숫자형 데이터와 연산시, NULL이 되므로 NULL값이 나올떄는 default값을 0으로 설정하여야 정상적인 연산을 할 수 있다.
	cf) 이 때, null 처리 관련 함수들이 필요로 한다. nvl, nullif
	대표적인 nvl(데이터, null일때 처리할 default값) ==> 함수에서 다시 진행
6. [주의!!!] 조건절에 null 검색하려면 컬럼명 = null은 처리가 불가능하다.
	반드시 컬럼명 is null 형태로 처리해야한다.
	cf) null 아닌 경우를 검색할 때는 컬럼명 is not null
 * */

-- null값의 연산 결과는 null이 된다.
SELECT sal, comm, sal+comm 합산, sal+nvl(comm,0) nvl처리합산
FROM EMP e ;

--comm이 null인 데이터를 검색
SELECT empno, comm FROM EMP e  WHERE comm IS NULL;
-- comm = NULL; 안됨
SELECT empno, COMM FROM emp WHERE comm IS NOT NULL; -- NULL아닌 데이터 검색

-- ex1) 관리자 번호가 null인 사원과 같은 부서에 있는 사원을 출력
-- ex2) 보너스가 있는 사원의 사원명과 보너스의 합산을 출력
SELECT * FROM emp WHERE deptno IN (SELECT deptno FROM emp WHERE mgr IS NULL);
SELECT ename, sal+comm 보너스합산 FROM emp WHERE comm IS NOT NULL;
SELECT ename, sal+comm 보너스합산 FROM emp WHERE nvl(comm,0)>0; -- null과 0을 함께 제외
-- 데이터가 0인 경우와 null인 경우를 둘다 제외시켜야되는 경우가 많다.
-- 이런 경우 함수(nvl)를 활용하여 처리한다.
SELECT * FROM emp;




