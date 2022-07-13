SELECT * FROM emp;	-- ctrl+enter
/*
# 데이터 sql처리파일
1. 변경된 파일 바로 반영
	window ==> preferences ==> general ==> workspace ==> refresh.... : check ==> apply
2. 저장시, 확장명을 .sql
3. 위에 DB서버와 계정을 선택한 뒤 적어놓은 sql문을 실행할 수 있다.
 * */


/*
# 데이터 조회하기
데이터는 select구문을 이용하여 저장된 데이터를 호출(query)할 수 있다
1. 기본 형식
	select *
			컬럼1, 컬럼2
	from 테이블명
	where 조건

 * */
SELECT * 
FROM emp;
-- emp테이블에 있는 전체 컬럼(*)을 검색
SELECT ename, job, deptno
FROM emp;
-- ctrl+/ -> 한줄주석
-- ex1) dept 테이블의 전체 내용을 검색
-- ex2) emp테이블의 empno, mgr, hiredate, deptno를 출력
SELECT *
FROM dept;
SELECT empno, mgr, hiredate, deptno
FROM emp;
/*
2. 테이블명과 컬럼명에 별칭(alias)처리하기
	테이블명과 컬럼명에 as라는 키워드를 쓰거나 공백을 통해서 별칭을 선언하여 컬럼명이나
	테이블명으로 활용할 수 있다
 * */
SELECT empno,
	EMPNO AS NO, -- AS 키워드를 이용해서 별칭사용
	ename AS name,
	hiredate hire, -- " " 공백을 삽입하여 별칭을 지정
	deptno dno
FROM emp;
-- ex) 다음과 같이 별칭으로 as, 공백을 이용하여 컬럼을 출력해보기
--		emono==>eno, ename==>name, mgr==>management, sal==>salary
SELECT EMPNO eno, ename name, mgr AS management, sal AS salary
FROM emp;
-- 기본적인 ㅔ이블 처리 문접은 아래와 같이 테이블명.컬럼명으로 적는데
-- 테이블이 하나밖에 없을 때는 테이블을 생략한다.
SELECT emp.EMPNO
FROM emp;
SELECT e.empno, e.ename
FROM emp e; -- 테이블명은 한칸 띄워 alias를 사용하여 처리한다
-- 전체 컬럼을 출력하고, 추가적으로 처리할 떄는 아래와 같이 처리한다
SELECT empno NO, e.*
FROM emp e;
-- 컬럼의 alias에 공백이나 허용되지 않는 특수문자를 사용할 때는 컬럼명 "alias명" 으로 사용하여 처리한다.
SELECT empno "번 호", -- 내용중간에 공백은 원래 안되는데 쌍따옴표를 활용하면 공백이 사용 가능해진다.
sal "#급여"
FROM emp;
-- ex) 해당 컬럼을 alias로 처리하여 출력하세요 empno("사 원 번 호"), ename("@사원명@"), sal("급여")
SELECT empno "사 원 번 호", ename "@사원명@", sal "급여"
FROM emp;
/*
# 데이터의 산출 연산처리와 문자열 연결
1. 숫자형 데이터가 있는 컬럼은 연산처리가 가능하다
	사칙연산자(+,-,*,/), %(지원하지 않음 - mod(데이터1, 데이터2)-함수파트에서 진행)
 * */
SELECT empno, empno + 10 "10더함", sal, sal*0.5 "급여의 50%", deptno, sal*(deptno/100) "급여와 부서의 연산",
mod(sal,DEPTNO) "나머지"
FROM emp;
SELECT * FROM emp;
-- ex) 사원번호를 만단위체계로 바꾸려고 10000을 더햐여 처리하고, sal와 comm을 합산하여 총급여로 표현하세요
SELECT empno+10000 "10000단위empno", sal+comm totsal -- sal+nvl(comm,0) 로 null표현
FROM emp;
-- cf) null값의 데이터는 연산을 하면 null처리된다
--		nvl(컬럼) 컬럼이 null(데이터가 없을 때, 초기데이터)이면, 초기데이터로 처리
/*
2. 컬럼과 문자열 연결 처리 ||
	1) 기본형식
		select 컬럼명 || '연결할문자열', 컬럼명1 || 컬럼명2
 * */
SELECT empno || '번' 사원번호,
ename || empno "이름과 사원번호",
deptno || '/' || empno || '/' || ename "부서번호/사번/이름"
FROM emp;
SELECT * FROM emp;
-- empno(사원번호), ename(사원명), job(직책), mgr(관리자번호), hiredate(입사일), sal(급여), comm(보너스), deptno(부서번호)
-- ex1) 사원명 @@@의 사원번호는 @@@입니다. ename, deptno를 활용하여 출력
-- ex2) 사원명의 월급여(sal의 1/12)를 아래 형식으로 출력 ename, sal
--		@@@의 월급여는 @@ 입니다
SELECT ename "사원명", empno "사원번호"
-- select '사원명 ' || ename || '의 사원번호는 ' || empno || '입니다' show (show로 이 칼럼의 이름을 지정햇을뿐이다.)
FROM emp;
SELECT ename 사원명, sal/12 || '원' 월급여
-- select '사원명 ' || ename || '의 월급여는 ' || round(sal/12) || '입니다' show
FROM emp; -- round(): 반올림, ceil(): 올림, floor(): 내림 ==> 내장함수
/*
private String email;
	private String pass;
	private String name;
	private String birth;
	private int phone;
	private String address;
	private String auth
 * */
CREATE TABLE snmember(
	email varchar2(50),
	pass varchar2(50),
	name varchar2(50),
	birth varchar2(50),
	phone NUMBER,
	address varchar2(100),
	auth varchar2(50)
	
);
SELECT * FROM snmember;
INSERT INTO snmember VALUES('admin@admin', '1234', 'admin', '1994-23-23', 1234, 'admin', 'admin');

SELECT * FROM emp;
SELECT * FROM emp01;

--
SELECT *
FROM emp01;
-- public List<Emp> getEmpJob(String job);
SELECT *
FROM EMP01 e 
WHERE job = '관리자';
-- public void deleteHiredate(int Q);
DELETE
FROM EMP01 e 
WHERE to_char(hiredate, 'Q') = '2';
SELECT *
FROM EMP01 e2 
WHERE to_char(hiredate, 'Q') = '2';
-- public Emp getMaxSal(int deptno);
SELECT deptno, max(sal)
FROM EMP01 e 
WHERE deptno=20
GROUP BY deptno;

SELECT * FROM EMP01 e 
WHERE ename = 'WARD'
AND job = 'SALESMAN'
AND sal = 1250;
-- new Emp("WARD", "SALESMAN", 1250)
DELETE FROM EMP01 e 
WHERE empno=9000;
SELECT * FROM emp01;

SELECT * FROM dept01;

SELECT * FROM dept;

--2) 급여의 범위(시작/마지막)을 지정하여 사원 정보를 가져오기
SELECT *
FROM EMP e 
WHERE sal BETWEEN 1000 AND 2000;

SELECT * FROM emp;

select deptno, max(sal) sal from emp GROUP BY deptno;

SELECT * FROM emp01;
SELECT round(avg(sal)) asal
		FROM EMP01 e 
		WHERE job = 'SALESMAN';



