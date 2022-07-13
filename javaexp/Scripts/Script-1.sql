CREATE TABLE dept01
AS SELECT * FROM dept;

SELECT * FROM dept01;

UPDATE dept01
	SET dname='NOTHING',
		loc = 'SEOUL'
WHERE deptno=10;

DELETE FROM dept01
WHERE deptno=10;

SELECT * FROM dept01;

SELECT * FROM MEMBER03;
CREATE TABLE member03(
	id varchar2(50),
	pass varchar2(50),
	uname varchar2(50),
	point NUMBER,
	auth varchar2(50)
);
--   1) 가장 최근에 입사한 사람의 입사일
SELECT to_char(hiredate, 'YYYY-MM-DD')
FROM emp
WHERE hiredate = (SELECT max(hiredate) FROM emp);
--      2) 30번 부서 최고 급여자 사원정보
SELECT *
FROM EMP e 
WHERE sal=(SELECT max(sal) FROM emp WHERE deptno=30);
--      3) 급여가 1000~3000사이의 사원명
SELECT ename
FROM EMP e 
WHERE sal BETWEEN 1000 AND 3000;
--      4) 1/4분기에 입사한 사람의 사원번호, 사원명, 분기명, 입사일
SELECT empno, ename, to_char(hiredate, 'Q')||'분기' 분기명, to_char(hiredate, 'YYYY-MM-DD') 입사일
FROM EMP e
WHERE to_char(hiredate, 'Q') = 1;
--      5) 직책별 평균 급여 정보(직책, 급여)
SELECT job, CEIL(avg(sal))
FROM EMP e
GROUP BY job;







