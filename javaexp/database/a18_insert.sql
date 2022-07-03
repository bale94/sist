/*
# 다중 행 입력
1. 기본 형식
	insert 명령문에서 서브쿼리 절을 이용
	insert 명령문에 의해 한번에 여러 행을 동시에 입력
	9i버전 이후
		insert all
		first insert
2. 단일 테이블에 다중 행 입력 방법
	1) insert 명령문에서 서브쿼리 절을 이용하여 자신이나 다른 테이블에 데이터를 복사하여
		여러행을 동시에 입력
	2) insert 명령문의 values절 대신 서브쿼리에서 검색된 결과 집합을 한꺼번에 입력
	3) 서브쿼리의 결과 집합은 insert명령문에 지정된 컬럼 갯수와 데이터 타입이 일치해야함
	4) 서브쿼리를 이용한 다중 행 입력시 테이블에 기본키, 고유키, 제약 조건이 중복되지 않도록
		주의해야한다.
	5) 제약조건을 위반할 경우 입력되지 않고 오류 발생
3. 활용 방법
	INSERT INTO 테이블 (컬럼1, 컬럼2, ..)
	subquery
	
 * 
 * */
CREATE TABLE emp_cp103
AS SELECT * FROM emp WHERE 1=0;
SELECT * FROM emp_cp103;
INSERT INTO emp_cp103
SELECT * FROM emp WHERE deptno=30;
INSERT INTO emp_cp103(empno, ename)
SELECT empno, ename FROM emp WHERE deptno=10;
SELECT * FROM emp_cp103;
-- ex) emp_cp104로 데이터가 없는 복사테이블을 만들고
--		사원정보중에 연봉이 1000~3000 사이의 데이터를 젠체데이터 입력
--		사원정보중에 직책이 SALESMAN인 데이터를 사원번호, 사원명, 직책, 급여만 입력
CREATE TABLE emp_cp104
AS SELECT * FROM emp WHERE 1=0;
INSERT INTO emp_cp104
SELECT * FROM emp WHERE sal BETWEEN 1000 AND 3000;
SELECT * FROM emp_cp104;
INSERT INTO emp_cp104(empno, ename, job, sal)
SELECT empno, ename, job, sal FROM emp WHERE job='SALESMAN';
SELECT * FROM emp WHERE sal BETWEEN 1000 AND 3000;

/*
# 다중행 입력 insert all
1. 조회된 내용을 한번에 여러테이블에 입력 처리
2. 내용
	서브 쿼리의 결과 집합을 조건없이 여러 테이블에 동시에 입력
	서브 쿼리의 컬럼 이름과 데이터가 입력되는 테이블의 컬럼이 반드시 동일하여야 함
		- 갯수, 유형과 크기가 입력이 가능하여야 함
3. 기본 형식
	insert all || first
	into 테이블1 values(컬럼1, 컬럼2, ..)
	into 테이블2 values(컬럼1, 컬럼2, ..)
	into 테이블3 values(컬럼1, 컬럼2, ..)
	into 테이블. values(컬럼1, 컬럼2, ..)
	subquery
	1) all : 서브쿼리의 결과 집합에 해당하는 insert절에 모두 입력
	2) first : 서브쿼리의 결과 집합에 해당하는 첫번째 insert절에 입력
	3) subquery : 입력 데이터 집합을 정의하기 위한 서브쿼리
 * 
 * */
SELECT * FROM emp;
CREATE TABLE emp_cpy201
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy202
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy203
AS SELECT * FROM emp WHERE 1=0;
SELECT * FROM emp_cpy201;
SELECT * FROM emp_cpy202;
SELECT * FROM emp_cpy203;
INSERT ALL
INTO emp_cpy201(empno, ename, job) VALUES(empno, ename, job)
INTO emp_cpy202(empno, ename, job) VALUES(empno, ename, job)
INTO emp_cpy203(empno, ename, job) VALUES(empno, ename, job)
SELECT empno, ename, job
FROM EMP e 
WHERE deptno = 10;

-- ex) emp_cpy301, emp_cpy302, emp_cpy303 데이터가없는 복사테이블을 만들고,
--		해당 테이블에 부서번호가 20인 사원정보 전체컬럼을 입력처리하세요
SELECT empno, ename, job
FROM EMP e 
WHERE deptno = 20;

CREATE TABLE emp_cpy301
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy302
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy303
AS SELECT * FROM emp WHERE 1=0;

INSERT ALL
INTO emp_cpy301 VALUES(empno, ename, job, mgr, hiredate, sal, comm, deptno)
INTO emp_cpy302 VALUES(empno, ename, job, mgr, hiredate, sal, comm, deptno)
INTO emp_cpy303 VALUES(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT *
FROM EMP e 
WHERE deptno = 20;
SELECT * FROM emp_cpy301;

/*
INSERT FIRST
조건절1
INTO 테이블 values(데이터 ...)
조건절2
INTO 테이블 values(데이터 ...)
조건절3
INTO 테이블 values(데이터 ...)
..
subquery 처리

ex) 사원정보중에 급여가 4000이상 데이터는 테이블1에 입력,
	급여가 2000~4000미만 테이블2에 입력
	그외는 테이블3에입력
 * */
CREATE TABLE emp_cpy401 AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy402 AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy403 AS SELECT * FROM emp WHERE 1=0;
SELECT * FROM emp_cpy401;
SELECT * FROM emp_cpy402;
SELECT * FROM emp_cpy403;
INSERT FIRST
	WHEN sal>=4000 THEN
		INTO emp_cpy401(empno, ename, sal) values(empno, ename, sal)
	WHEN sal>=2000 THEN
		INTO emp_cpy402(empno, ename, sal) values(empno, ename, sal)
	ELSE
		INTO emp_cpy403(empno, ename, sal) values(empno, ename, sal)
SELECT empno, ename, sal
FROM emp;
--ex) emp_cpy501, emp_cpy502, emp_cpy503, emp_cpy504 만들기
--		사원 입사분기별로 사원데이터를 각각 입력처리하세요
CREATE TABLE emp_cpy501 AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy502 AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy503 AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE emp_cpy504 AS SELECT * FROM emp WHERE 1=0;

INSERT FIRST
	WHEN to_char(hiredate, 'Q')=1 THEN
		INTO emp_cpy501 values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN to_char(hiredate, 'Q')=2 THEN
		INTO emp_cpy502 values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN to_char(hiredate, 'Q')=3 THEN
		INTO emp_cpy503 values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	ELSE
		INTO emp_cpy504 values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT *
FROM emp;
SELECT * FROM emp_cpy501;
SELECT * FROM emp_cpy502;
SELECT * FROM emp_cpy503;
SELECT * FROM emp_cpy504;










