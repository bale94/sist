--[1단계:개념] 1. DML이란 무엇인가 종류를 기술하세요..
-- 테이블에 새로운 데이터를 추가하거나 기존 데이터를 수정, 삭제하는 것
-- insert, delete, update, merge 가 있다.

--[1단계:확인] 2. emp테이블과 dept를 조인한 복사테이블로 emp_cp120만들어 
--      전체 데이터 입력과 특정 컬럼 입력을 처리하세요.
CREATE TABLE emp_cp120
AS SELECT * FROM emp e NATURAL JOIN dept d;
SELECT * FROM emp_cp120;
-- 전체 데이터 입력
INSERT ALL
INTO emp_cp120(empno, ename) values(empno, ename)
SELECT empno, ename
FROM EMP
WHERE job='MANAGER';
SELECT * FROM emp_cp120;
SELECT * FROM emp;
-- 특정컬럼 데이터 입력
INSERT FIRST
	WHEN to_char(hiredate, 'Q') = 1 THEN
		INTO emp_cp120(empno, ename, job, mgr, hiredate, sal, comm, deptno) values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT * FROM emp;
SELECT * FROM emp_cp120;

--[1단계:개념] 3. 명시적 null과 묵시적 null 데이터 입력의 차이점을 예제를 통해서 기술하세요.
--지정한 테이블이나 전체테이블을 입력할때 null로 명시적으로 입력되고, 지정한컬럼만 입력할때 지정된컬럼 외에는 묵시적으로 null로 입력된다.
INSERT INTO EMP_CP120 values(7781, '오길동', NULL, NULL, NULL, 3000, NULL, null);
INSERT INTO EMP_CP120(empno, ename) VALUES(9997, '하길동');

--[1단계:확인] 4. 현재 년도와 월을 기준으로 지정한 날짜와 시간(15일 오전 10:15)을 입력 처리하세요.
--emp_cp120, 사원명 입사일처리를 해보자
SELECT sysdate, to_char(sysdate, 'YYYYMM') d1, to_char(sysdate, 'YYYYMM')||'15 10:15' d2,
to_date(to_char(sysdate, 'YYYYMM')||'15 10:15', 'YYYYMMDD HH:MI') d3
FROM dual;

INSERT INTO emp_cp120(ename, hiredate) VALUES('KEVIN', to_date(to_char(sysdate, 'YYYYMM')||'15 10:15', 'YYYYMMDD HH:MI'));
SELECT * FROM emp_cp120;


--[1단계:개념] 5. 단일 데이터 입력과 다중 데이터 입력의 차이를 예제를 통해 기술하세요.
--다중 데이터입력은 values로 쭉 입력값들만 나열하면되지만 단일 데이터입력은 데이터마다 어떠한 조건에서 입력할 것인지를 같이 표기하여야한다.
--다중
INSERT ALL
INTO emp_cpy201(empno, ename, job) VALUES(empno, ename, job)
INTO emp_cpy202(empno, ename, job) VALUES(empno, ename, job)
INTO emp_cpy203(empno, ename, job) VALUES(empno, ename, job)
SELECT empno, ename, job
FROM EMP e 
WHERE deptno = 10;
--단일
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
SELECT job FROM emp;
--[1단계:확인] 6. 직책별로 테이블을 만들어 사원정보를 한번에 입력 처리하세요.
CREATE TABLE job_M
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE job_C
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE job_S
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE job_P
AS SELECT * FROM emp WHERE 1=0;
CREATE TABLE job_A
AS SELECT * FROM emp WHERE 1=0;
INSERT FIRST
	WHEN job='MANAGER' THEN
		INTO job_M values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN job='CLERK' THEN
		INTO job_C values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN job='SALESMAN' THEN
		INTO job_S values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN job='PRESIDENT' THEN
		INTO job_P values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
	WHEN job='ANALYST' THEN
		INTO job_A values(empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT *
FROM emp;
SELECT * FROM job_M;
SELECT * FROM job_S;
SELECT * FROM job_C;
SELECT * FROM job_A;
SELECT * FROM job_P;

--[1단계:개념] 7. 데이터의 수정기본형식을 기술하세요..
/*	update 테이블
	set 컬럼 = 수정데이터,
		컬럼2 = 수정데이터2,
		..
	where 조건문   의 형식으로 수정할 수 있다.
*/

--[1단계:확인] 8. 1사분기 최고 급여를 ALLEN의 급여로 수정 처리하세요
SELECT * FROM EMP_CP101 ec ;
UPDATE EMP_CP101 
	SET sal = (
		SELECT max(SAL)
		FROM EMP_CP101 ec 
		WHERE to_char(hiredate, 'Q')=1
	)
WHERE ename='ALLEN';

SELECT * FROM emp_cp101 WHERE ename='ALLEN';








