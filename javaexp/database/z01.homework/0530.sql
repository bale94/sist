--[1단계:개념] 1. sequence를 사용하는 이유와 기본형식을 예제를 통해서 기술하세요.
-- 편리하게 키값을 테이블에 넣기위해서 사용한다
CREATE SEQUENCE seq01
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 10
	CYCLE
	cache 2;

--[1단계:확인] 2. 회원테이블은 만들고, 회원번호가 'N'(일반), 'S'(수퍼고객), 'A'(관리자)
--      가 붙어서 N1000, S1001, A1002 형식으로 시퀀스와 조합해서 만들어 진다고 한다.
--      회원번호, 회원아이디, 회원명, 회원패스워드로 구성된 테이블과 각각
--      권한에 따를 번호를 입력하세요.
-- 1) 시퀀스만들기 1000, 1001, ..
-- 2) 테이블 만들기
-- 3) 데이터 입력시 구분코드(N,S,A) + 시퀀스
SELECT * FROM member02;
CREATE TABLE member02(
	memno char(14),
	id varchar2(50),
	ename varchar2(50),
	pass varchar2(50));

SELECT * FROM member02;
CREATE SEQUENCE member0202
	START WITH 1000
	INCREMENT BY 1
	MINVALUE 1000;
INSERT INTO member02 values('N'||member0202.nextval, 'id1', 'KEVIN', 'pass1');
INSERT INTO member02 values('S'||member0202.nextval, 'id2', 'SARAH', 'pass2');
INSERT INTO member02 values('A'||member0202.nextval, 'id3', 'JAMES', 'pass3');

--[1단계:개념] 3. sequence 수정의 한계를 기술하고, 이를 보완하는 방법을 예제를 통해서 기술하세요
-- start with은 시작 직후의 값만 넣을수있고 변경이 불가하기때문에 시작값을 바꾸려면 sequence채로 drop후 다시 작성해야한다.
CREATE SEQUENCE seq001
	START WITH 1000
	INCREMENT BY 1
	MAXVALUE 9999
	MINVALUE 1000;
ALTER SEQUENCE seq001
	MAXVALUE 8888
	MINVALUE 800;
SELECT seq001.nextval FROM dual;
DROP SEQUENCE seq001;
CREATE SEQUENCE seq001
	START WITH 1010
	MAXVALUE 7182
	MINVALUE 1001;
SELECT seq001.nextval FROM dual;

--[1단계:개념] 4. 복사테이블의 유형을 예제를 통해서 기술하세요.
--똑같이 복사하는방법
SELECT * FROM copy001;
CREATE TABLE copy001
AS SELECT * FROM emp;
--컬럼만 복사하고 내용물은 복사하지않는방법
CREATE TABLE copy002
AS SELECT * FROM emp WHERE 1=0;
SELECT * FROM copy002;

--[1단계:확인] 5. 부서별 최고급여자의 사원정보컬럼전체가 들어가는 복사테이블 emp200을 만드세요.
DROP TABLE emp200;
SELECT max(sal) FROM emp;
SELECT * FROM emp WHERE sal>=(SELECT max(sal) FROM emp);
CREATE TABLE emp200
AS SELECT * FROM emp WHERE sal>=(SELECT max(sal) FROM emp);
SELECT * FROM emp200;

CREATE TABLE emp201
AS SELECT *
FROM EMP e 
WHERE (deptno, sal) in(
	SELECT deptno, max(sal) SAL 
	FROM EMP e
	GROUP BY deptno
); -----------------------------------답

--[1단계:개념] 6. 테이블의 구조 변경의 원칙을 예제를 통해서 기술하세요.
-- alter table 명령어를 사용한다, 문자열->숫자, 숫자->문자, 날짜형->문자열로는 변경할수없다
ALTER TABLE EMP110 
MODIFY loc NUMBER;
UPDATE EMP110 
	SET dname = '부서(초기)';
SELECT * FROM emp110; 

--[1단계:확인] 7. 부서테이블과 사원테이블을 결합한 복사테이블을 만들고, 부서번호 컬럼 삭제
--              문자열 컬럼은  최대크기로 컬럼을 변경하고, 컬럼명도 empno ==> no,
--         ename ==> name, sal ==> salary로 변경 하세요.
SELECT * FROM copy003;
CREATE TABLE copy003
AS SELECT * FROM EMP e NATURAL JOIN DEPT d  ;
ALTER TABLE copy003
DROP COLUMN deptno;
SELECT max(lengthb(ename)), max(lengthb(job)), max(lengthb(loc)), max(lengthb(dname)) FROM copy003;
ALTER TABLE COPY003
MODIFY ename varchar2(6);
ALTER TABLE COPY003
MODIFY job varchar2(9);
ALTER TABLE COPY003
MODIFY loc varchar2(8);
ALTER TABLE COPY003
MODIFY dname varchar2(10);
--alter table COPY003 
--modify( ename varchar2(50), job varchar2(50), loc varchar2(50), dname varchar2(50))과 같이
-- 괄호로 묶어서 한번에 바꿀수있다
ALTER TABLE COPY003 
RENAME COLUMN empno TO NO;
ALTER TABLE COPY003 
RENAME COLUMN ename TO name;
ALTER TABLE COPY003 
RENAME COLUMN sal TO salary;
SELECT * FROM copy003;










