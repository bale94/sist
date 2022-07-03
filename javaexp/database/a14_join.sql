/*
# 조인(join)
1. 조인의 개념
	1) 하나의 sql명령문에 의해 여러 테이블에 저장된 데이터를 한번에 조회할 수 있는 기능을 말한다.
	2) 관계형 데이터베이스 분야의 표준 : Entity Relation Diagram(ERD)
	3) 두개 이상의 테이블을 결합한다는 의미
2. 조인의 필요성
	1) 조인을 사용하지 않는 일반적인 예
		학생 주소록을 출력하기 위해 학생들의 학번, 이름, 소속학과 이름을 검색
		학생에 대한 정보 검색하는 단계 필요
		학생 정보에서 소속학과번호 정보를 추출하여 소속학과 이름을 검색하는 단계 필요
		
	ex) 사원번호가 7369인 사원의 이름과 부서이름, 부서위치를 출력하라
		- 사원정보에서 부서번호를 가져온다
		- 부서정보에서 부서이름과 부서위치를 가져온다.
	2) 조인을 하는 경우
		- 연관관계에 있는 deptno를 조회조건을 검색을 하면 한번에 원하는 데이터를 가져올 수 있다.
		
	
 * 
 * */

SELECT ename, deptno
FROM emp;
SELECT * FROM dept;
-- SMITH의 부서이름과 부서위치를 확인하기위해서 join을 하지 않는경우
SELECT ename, deptno
FROM EMP e 
WHERE ename = 'SMITH';
-- 20
SELECT * FROM DEPT d 
WHERE deptno = 20;
SELECT e.*, d.*
FROM emp e, DEPT d 
WHERE e.deptno=d.DEPTNO ;
/*
dept 라는 부서테이블 emp라는 사원정보와 연결관계를 설정하는데
부서라는 정보에 여러개의 사원정보를 연결할 수 있어서 1:다 관계로 설정된 연관관계 테이블이다.
 * */
SELECT *
FROM dept;
SELECT *
FROM emp;


-- 두 개의 테이블은 deptno(부서번호)를 기준으로 연관관계로 설정하기에
-- e.deptno = d.deptno; 사원테이블의 부서번호와 부서테이블의 부서번호를 조인을 하여 확인한다

SELECT *
FROM EMP e 
WHERE empno = 7369;
SELECT * FROM EMP e 
WHERE deptno = 20;
SELECT e.*, d.*
FROM EMP e ,DEPT d 
WHERE e.deptno = d.deptno
AND empno = 7369;

-- ex) ename이 ALLEN인 경우의 부서이름과 부서위치를 가져오되, 조인을 하지않은 경우와 조인을 한 경우 두가지를 처리
--조인x
SELECT deptno
FROM EMP e 
WHERE ename='ALLEN';
SELECT dname, loc FROM DEPT d
WHERE deptno = 30;
--조인
SELECT e.*, DNAME , LOC -- 중첩되는 컬럼은 반드시 어떤 테이블소속인지를 명시해야 하지만, 중복되지않는 컬럼은 굳이 명시하지않아도 괜찮다.
FROM EMP e , DEPT d 
WHERE e.deptno=d.deptno AND ename='ALLEN';

--컬럼명이 다른 각각의 컬럼을 테이블명이 테이블의 alias(별칭 e., d.)을 사용하지 않아도된다.
SELECT e.deptno, dname, loc, empno, ename, job, hiredate, sal
FROM EMP e , DEPT d 
WHERE e.DEPTNO = d.DEPTNO 
AND sal>=3000;


/*
# equi join
1. 개념
	1) 조인 대상 테이블에서 공통 컬럼을 '='(equal) 비교를 통해 같은 값을 가지는 행을 연결하여 결과를 생성하는 조인방법
	2) SQL 명령문에서 가장 많이 사용하는 조인 방법
	3) 조인 애크리뷰트(속성)
2. where절을 이용한 equi join 사용방법
	select 테이블1.컬럼명, 테이블2.컬럼명
	from 테이블1, 테이블2
	where 테이블1.컬럼명 = 테이블2.컬럼명;
	1) from : 조인대상 테이블을 기술한다. 테이블은 콤마(,)로 구분
	2) where : 조인 애트리뷰트와 '='연산자를 사용하여 조인 조건을 기술
3. oracle에서 지원하는 natural join
	1) 자연조인을 이용한 equi join
		오라클 9i버전부터 equi join을 자연조인이라고 명명
		where절을 사용하지않고 natural join 키워드 사용
		오라클에서 자동적으로 테이블의 모든 컬럼을 대상으로 공통컬럼을 조사 후
		내부적으로 조인문 생성
		- 테이블 간에 컬럼명과 type이 같은것을 확인하여,
		| 같은 데이터가 있는 row단위로 연결하여 출력한다.
	2) 기본 형식
		select 테이블1.컬럼명, 테이블2.컬럼명
		from 테이블1 natural join 테이블2
 * 
 * */
SELECT *
FROM emp NATURAL JOIN dept;
-- deptno가 같은 type이고 같은 이름이라서 데이터를 확인하여 동일한 데이터가 있는 row단위로
-- 출력한다.

CREATE TABLE emp200
AS SELECT * FROM emp WHERE deptno=10;
CREATE TABLE dept200
AS SELECT * FROM dept;
-- ex) emp200과 dept200을 자연조인
SELECT dname, ename, job, sal FROM emp200 NATURAL JOIN dept200;
-- 컬럼명이 각 테이블에 고유하게 존재할경우 e.deptno 처럼 쓰지않고 ename, job 과같이 개별적으로 써도된다. 구분이가능하기때문!

/*
# join ~ using절을 이용한 equi join
1. using에 조인 대상 컬럼을 지정
	컬럼 이름은 조인대상 테이블에서 동일한 이름으로 정의되어 있어야함
2. 사용법
	select 테이블.컬럼명, 테이블2.컬럼명
	from 테이블1 join 테이블2
		using(컬럼명)
3. 주의 : 조인 애트리뷰트에 테이블 별명을 사용하면 오류가발생한다!!
 * */
SELECT *
FROM EMP e  JOIN DEPT d 
USING (deptno);
/*
# non-equi join
1. <, between a and b 와 같이 '='조건과 동일하지 않고, 범위를 지정하여 조인하는 경우를 말한다.
2. 사용예
	급여의 등급테이블을 사원정보의 급여테이블과 non-equi join하여 처리한다
 * */
SELECT *
FROM salgrade;
SELECT ename, sal, grade
FROM EMP e , SALGRADE s 
WHERE sal BETWEEN losal AND hisal;

CREATE TABLE salgrade02
AS SELECT * FROM SALGRADE s ;

SELECT * FROM salgrade02;
SELECT * FROM emp;
--ex) emp와 salgrade02를 조인하여 사원명 급여 급여등급 출력
SELECT ename, sal, grade
FROM EMP e , SALGRADE02 s 
WHERE sal BETWEEN losal AND hisal;




