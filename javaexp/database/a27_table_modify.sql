/*
# 테이블의 컬럼 변경
1. 기능
	1) 테이블에서 컬럼의 타입, 크기, 기본값 변경 가능
	2) 기본형식
		alter table 테이블명 modify
		컬럼명 데이터유형 default 데이터
	3) 기존컬럼에 데이터가 없는 경우
		컬럼의 타입이나 크기변경이 자유로움
	4) 기존컬럼에 데이터가 존재하는 경우
		- 타입변경은 char와 varchar2만 허용
			다른 유형까지 변경 문자열<==>숫자<==>날짜형 상호간의 변경 불가능!
		- 변경한 컬럼의 크기가 저장된 데이터의 크가보다 같거나 클 경우 변경가능
			실제 저장된 데이터 기준
			varchar2(최대크기) : 저장할 수 있는 최대 크기를 지정하는 것이기에
				varchar2(50)==>varchar2(10)으로도 변경이 가능한데,
				해당하는 컬럼에 저장된 데이터의 최고 크기가 10byte이하일때 가능하다
		- 숫자 타입에서는 정밀도 증가 가능
	5) 기본 값의 변경은 변경후에 입력되는 데이터부터 적용
 * 
 * */
-- 데이터가 없는 경우
SELECT * FROM EMP110 e ;
-- 1) 다른 유형으로 변경이 가능
ALTER TABLE EMP110 
MODIFY loc NUMBER;
UPDATE EMP110 
	SET dname = '부서(초기)';
SELECT * FROM emp110;

-- 데이터가 있는 경우
-- alter table EMP110 
-- modify loc number; (X)
-- 1) 숫자형==>문자열 변경안됨
--	  문자형==>숫자형 변경안됨
--		ps) 숫자<>문자<>날짜 상호간의 변경 불가
ALTER TABLE EMP110 
MODIFY loc varchar2(10);
--	1) 숫자형 ==> 문자열 변경안됨
ALTER TABLE EMP110 
MODIFY dname varchar2(60);
-- 2) 문자열 ==> 문자열 : 더 크게 데이터 유형 변경 가능(더 작게도 가능)
--					실제 저장된 크기 기준으로 변경이 가능
SELECT * FROM emp110;
SELECT max(LENGTHB(dname))
FROM emp110;
ALTER TABLE EMP110 
MODIFY dname varchar2(14);
-- 3) 문자열 ==> 문자열 : 작게도 변경이 가능한데, 저장된 문자열의 최대 byte크기까지 가능하다

SELECT * FROM emp02;
-- ex) emp02의 문자열형 데이터를 확인하고, 저장된 최대크기로 데이터유형을 변경
SELECT max(lengthb(ename)) FROM emp02;
ALTER TABLE EMP02 
MODIFY ename varchar2(9);
SELECT * FROM emp02;


/*
# 컬럼명의 변경
1. 기본형식
	alter table 테이블명 rename column 원컬럼명 to 변경할컬럼명
 * 
 * */
SELECT * FROM emp02;
ALTER TABLE EMP02 
RENAME COLUMN empno TO NO;
/*
# 테이블의 이름 변경
1. 기본 형식
	rname 명령문 사용 
	1) 객체의 이름을 변경하는 DDL 명령문
	2) 뷰, 시퀀스, 동의어 등과 같은 데이터베이스 객체의 이름을 변경할때도 동일하게 사용가능하다.
 *
 * */
RENAME emp02 TO emp00002;
SELECT * FROM emp00002;

/*
# 테이블 삭제
1. 기본 형식
	drop table 테이블명;
2. 제한 사항
	1) 삭제된 테이블과 관련된 뷰와 동의어는 invalid 상태
	2) 삭제된 테이블의 기본 키나 고유키를 다른 테이블에서 참조하는 경우 삭제 불가능
		- 참조하는 테이블(자식 테이블)을 먼저 삭제
		- drop table 명령문 마지막에 cacade constraints 옵션을 사용하여
			무결성 제약조건을 동시에 삭제
ps) 오라클의 내장된 객체(테이블, sequence, 인덱스, 롤 등등)는 위 형식으로 삭제가 된다.
	drop 객체유형 객체명;
 * */
DROP TABLE emp00002;
-- ex) emp8888로 복사테이블을 만들어 컬럼명을 바꾸고 컬럼명을 삭제, 테이블명 emp9999로 바꾸고
--		테이블 삭제처리
CREATE TABLE emp8888
AS SELECT * FROM emp;
RENAME emp8888 TO emp9999;
DROP TABLE emp9999;
SELECT * FROM emp8888;










