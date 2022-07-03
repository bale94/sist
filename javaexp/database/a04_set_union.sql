/*
# 집합 연산자
1. 테이블을 구성하는 행집합에 대해 테이블의 부분 집합을 결과로 변환하는 연산자

2. 집합 연산의 대상이 되는 두 테이블의 컬럼 수가 같고, 대응되는 컬럼끼리 데이터 타입이 동일할 때
	활용된다.
	ex) 
	select empno
	from emp;
	
	
	select empno
	from emp2;
	
	위와같이 emp에있는 empno와 emp2에있는 empno를 두 개의 집합개념으로 union, union all, intersect, minus로 집합연산자에 의해
	처리하는 것을 말한다.
	
	
3. 기본 형식
	select 명령문1
	union, union all, intersect, minus
	select 명령문2
	
4. 집합 연산자 종류
	1) union : 두 집합에 대해 중복되는 행을 제외한 합집합
		crossing check 하기에 부하가 일어난다
			테이블4 테이블4 16 중복체크 동일한 데이터는 제외
	2) union all ## : 두 집합에 대해 중복되는 행을 포함한 합집합
		crossing check하지않음
			테이블5 테이블6 그대로 순서대로 출력
	3) minus : 두 집합간의 차집합
	4) intersect : 두 집합간의 교집합
 * */
/*
cf) 복사테이블 만들기
	create table 만들테이블명
	as 기존 테이블의 sql
 * */
CREATE TABLE emp_cp100
AS SELECT * FROM EMP e 
WHERE DEPTNO =10;
SELECT * FROM emp_cp100;
INSERT INTO emp_cp100 VALUES(7999,'홍길동','사원',7839,sysdate,3000,NULL,40);
--중복데이터를 제거한 데이터 : union
SELECT empno, ename
FROM EMP e 
UNION
SELECT empno, ENAME 
FROM emp_cp100;
--중복데이터를 포함한 데이터 : union all
SELECT empno, ename
FROM EMP e 
UNION ALL
SELECT empno, ENAME 
FROM EMP_CP100;
-- 차집합처리 : minus
SELECT empno, ename, deptno
FROM EMP e 
MINUS
SELECT empno, ENAME , DEPTNO 
FROM EMP_CP100 ;
-- 교집합처리 : intersect
SELECT empno, ename, DEPTNO 
FROM EMP e INTERSECT
SELECT empno, ENAME, DEPTNO  FROM EMP_CP100 ;





