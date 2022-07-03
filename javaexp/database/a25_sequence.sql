/*
# 시퀀스
1. 개요
	1) 유일한 식별자
	2) 기본 키 값을 자동으로 생성하기 위하여 일련번호 생성 객체
	ex) 웹 게시판에서 글이 등록되는 순서대로 번호를 하나씩 할당하여 기본키로 지정하고자 할때 사용
	3) 여러 테이블에서 공유 가능
2. 기본형식
	create sequence 시퀀스명
	increment by n
	start with n
	maxvalue n | nomaxvalue
	minvalue n | nominvalue
	cycle | nocycle
	cache N | nocache
	1) increment by n : 시퀀스 번호의 증가치로 기본은 1,
	2) start with n : 시퀀스 시작번호, 기본값은 1	cf) 수정이 안 됨. 재작성해야한다!*******
	3) maxvalue n : 생성 가능한 시퀀스의 최대값
	4) minvalue n : 시퀀스 번호를 순환적으로 사용하는 cycle로 지정한 경우, maxvalue에 도달한 후 새로 시작하는 시퀀스값
	5) cycle | nocycle : maxvalue 또는 minvalue에 도달한 후 시퀀스의 순환적인 시퀀스번호 생성여부 지정
	6) cache | nocache : 시퀀스 생성속도 개선을 위해 메모리에 캐쉬하는 시퀀스 갯수, 기본값은 20
 * 
 * */
CREATE SEQUENCE seq01
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 10
	CYCLE
	cache 2;
SELECT seq01.nextval FROM dual;
-- ex1) 시작번호 1000, 증가단위1, 최대값9999, 최소값1000으로 설정하여 확인
-- ex2) 시작번호 8888, 증가단위 -2, 최대값8888, 최소값 8880, 반복수행처리
CREATE SEQUENCE seq02
	INCREMENT BY 1
	START WITH 1000
	MAXVALUE 9999
	MINVALUE 1000;
SELECT seq02.nextval FROM dual;
CREATE SEQUENCE seq03
	INCREMENT BY -2
	START WITH 8888
	MAXVALUE 8888
	MINVALUE 8880
	CYCLE
	cache 2;
SELECT seq03.nextval FROM dual;
/*
# 사용 예
1. 테이블을 생성한다
2. key가 필요한 경우 sequence를 생성한다
3. 문자형 또는 숫자형으로 해당 key에 맞게 입력처리한다
 * 
 * */
CREATE TABLE student10(
	NO NUMBER PRIMARY KEY,
	kor number
);
CREATE SEQUENCE seq04
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999;
INSERT INTO student10 values(seq04.nextval, 80);
SELECT * FROM student10;
-- ex) 사원테이블(employee100-사원번호, 사원명, 부서명)을 만들고, 사원번호가 5000부터 시작하여 9999까지 입력가능하게 sequence를 만들고 입력처리
CREATE TABLE employee100(
	empno NUMBER PRIMARY KEY,
	ename varchar2(50),
	dname varchar2(50)
);
CREATE SEQUENCE seq05
	INCREMENT BY 1
	START WITH 5000
	MINVALUE 5000
	MAXVALUE 9999;
INSERT INTO EMPLOYEE100 values(seq05.nextval,NULL,null);
SELECT * FROM employee100;

CREATE TABLE employee101(
	empno char(6) PRIMARY KEY,
	ename varchar2(50),
	dname varchar2(50)
);
-- empno를 문자와 조합하여 6자리로 만들때, 문자+sequence와 조합해서 primary key를 만들어 사용가능하다.
INSERT INTO employee101 values('AK'||seq05.nextval, '채길동', '재무팀');
SELECT * FROM employee101;

/*
# 시퀀스의 함수들
1. currval : 시퀀스에서 생성된 현재 번호를 확인
	현재번호를 가져온다
	ex) 데이터를 두개 테이블을 입력시, 부서정보를 등록하고, 이 등록된 부서정보의 deptno를 바로
	사원정보로 등록할 때 활용될 수 있다
2. nextval : 시퀀스에서 다음 번호 생성
	증가 처리가 됨
 * 
 * */
SELECT seq05.nextval, seq05.currval FROM dual;
CREATE TABLE dept100(
	deptno NUMBER PRIMARY KEY,
	dname varchar2(50),
	loc varchar2(50)
);
CREATE TABLE emp100(
	ename varchar2(50),
	deptno number
);
INSERT INTO dept100 values(seq05.nextval, '인사', '서울강남');
INSERT INTO emp100 values('홍길동', seq05.currval);
SELECT * FROM dept100;
SELECT * FROM emp100;

/*
# 시퀀스 정의 변경
1. 변경
	1) 시퀀스 생성 후 증가치, 최소값, 최대값 등의 정의를 수정
	2) 변경된 시퀀스 정의는 새로 생성되는 시퀀스 값부터 적용
	3) alter sequence 명령문을 사용하여 변경
	#4) start with절은 생성 직후의 시작 값을 의미, 변경 불가
		==> 시작값을 변경하기 위해서는
		drop sequence 시퀀스명; (삭제명령어)
		다시 생성처리..
2. 사용법
	alter sequence 시퀀스명
	increment by n
	maxvalue n | nomaxvalue
	minvalue | nominvalue
	cycle | nocycle
	cache n | nocache
	
# 시퀀스의 삭제
drop sequence 시퀀스명;

 * 
 * */
ALTER SEQUENCE seq05
	INCREMENT BY 2
	MINVALUE 4000;
SELECT seq05.nextval FROM dual;
DROP SEQUENCE seq05;
CREATE SEQUENCE seq05
	START WITH 4000
	INCREMENT BY 1
	MINVALUE 3000;
-- ex) seq06을 생성, 수정, 삭제 처리하고 다시 생성하세요 시작번호 1000, max 9999, min 1000 / 5555, min800 / 500, 8888, 500
CREATE SEQUENCE seq06
	START WITH 1000
	INCREMENT BY 1
	MAXVALUE 9999
	MINVALUE 1000;
ALTER SEQUENCE seq06
	MAXVALUE 5555
	MINVALUE 800;
SELECT seq06.nextval FROM dual;
DROP SEQUENCE seq06;
CREATE SEQUENCE seq06
	START WITH 500
	MAXVALUE 8888
	MINVALUE 500;
SELECT seq06.nextval, seq06.currval FROM dual;










