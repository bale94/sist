/*
# 테이블 생성시 기타 옵션
1. default 옵션
	1) 컬럼의 입력값이 생략될 경우에 null 대신에 입력되는 기본값을 지정하기 위한 기능
	2) 기본값 : 리터럴 값, 표현식, sql함수, sysdate, user를 사용
	3) 컬럼이나 의사컬럼(nextval, currval)은 사용할 수 없음
	# 기본형식
	컬럼명 varchar2(100) default 'KOREA'
 * 
 * */
SELECT * FROM emp08;
DROP TABLE emp08;
create TABLE emp08(
	NO NUMBER PRIMARY KEY,
	addr varchar2(50) DEFAULT '대한민국'
);
-- 명시적으로 null을 입력처리하지않고, 묵시적으로 null이 입력될 때 처리
INSERT INTO emp08(NO) values(seq01.nextval);
SELECT * FROM emp08;
/*
# subquery를 통해 테이블 생성
1. 컬럼 구조 + 데이터복사
	create table 테이블명
	as select * from 테이블명;
2. 컬럼 구조만 복사
	create table 테이블명
	as select * from 테이블명 where 1=0;
3. 컬럼명 변경
	create table 테이블명
	as select 컬럼1 변경명1, 컬럼2 변경명2, ..
	from 테이블명;
4. 유형변경
	create table 테이블명
	as select 함수명(컬럼명) from 테이블명
 * 
 * */
CREATE TABLE emp110
AS SELECT * FROM emp;
SELECT * FROM emp110;	-- NOT NULL만 복사 그외 무결성 제약조건은 복사안됨 constraints나 FOREIGN KEY 는 복사되지않는다

CREATE TABLE emp111
AS SELECT * FROM emp WHERE 1=0;
-- where 1=0 조건이 false이기에 데이터가 나오지않지만 구조는 나오기에 그 구조만 복사된다.
SELECT * FROM emp111;

CREATE TABLE emp112
AS SELECT empno NO, ename name, sal salary
FROM emp;
SELECT * FROM emp112;

CREATE TABLE emp113
AS SELECT empno NO, to_char(hiredate, 'YYYY/MM/DD') hiredate, decode(deptno,10,'인사',20,'재무',30,'회계','it사업부') dname
FROM emp;
SELECT * FROM emp113;

--ex) emp114 복사테이블을 만들되
--		empno==>no, ename==>name, hiredate==>hiqua(입사분기), hiredate2==>입사년-월-일
CREATE TABLE emp114
AS SELECT empno NO, ename name, to_char(hiredate, 'Q') hiqua, to_char(hiredate, 'YYYY-MM-DD') hiredate2
FROM emp;
SELECT * FROM emp114;

/*
# 테이블 구조변경
1. 개요
	1) alter table 명령문 사용
	2) 컬럼 추가, 삭제, 타입이나 길이의 재정의와 같은 작업
		등록, 삭제, 이름변경
		add (컬럼명 옵션), modify(컬럼명 옵션), drop 컬럼명, rename column 컬럼명 to 컬럼명
2. 컬럼추가
	1) alter table add명령문 이용
	2) 추가된 컬럼은 테이블의 마지막 부분에 생성, 위치 지정 불가능
	3) 추가된 컬럼에도 기본값을 지정 가능
	4) 수정할 테이블에 기존 데이터가 존재하면 컬럼값은 null로 입력
	5) 기본형식
		alter table 테이블명
		add 컬럼명 데이터유형 default 디폴트설정데이터
3. 컬럼삭제
	1) alter table 테이블명 drop column 컬럼명
 * 
 * */
SELECT * FROM emp100;
ALTER TABLE EMP100 
ADD (empno NUMBER);
ALTER TABLE EMP100 
add(job varchar2(50) DEFAULT '직책없음');
ALTER TABLE EMP100 
ADD (hiredate DATE, sal NUMBER, comm number);
ALTER TABLE EMP100 DROP COLUMN comm;
SELECT * FROM emp100;
-- ex) emp110 테이블에 부서정보(부서명, 부서위치) 추가, deptno 컬럼 삭제처리
SELECT * FROM emp110;
ALTER TABLE EMP110 
ADD (dname varchar2(50), loc varchar2(50));
ALTER TABLE EMP110 
DROP COLUMN deptno;
SELECT * FROM emp110;











