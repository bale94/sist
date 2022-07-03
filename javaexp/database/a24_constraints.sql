/*
# 데이터 무결성 제약조건
1. 개념
	1) 데이터의 정확성과 일관성을 보장
	2) 데이터의 정확성을 유지하여 다양한 종류의 업무규칙 고려한 예
		- student 테이블에서 학년 데이터는 1,2,3,4 중의 하나의 값만 입력
		- 모든 학번은 유일
		- student 테이블의 지도교수 번호는 professor 테이블의 교수 번호 중의 하나와 반드시 일치
2. 장점
	1) 테이블 생성시 무결성 제약조건을 정의 가능
	2) 테이블에 대한 정의, 데이터 딕셔너리에 저장되므로 응용프로그램에서 입력된 모든 데이터에 대해 동일하게 적용
	3) 제약조건을 활성화, 비활성화 할 수 있는 융통성
3. 무결성 제약조건의 종류
	# 제약조건의 이름을 붙힐 때는 constraint 제약명
		컬럼명 데이터유형 [constraint 제약명] 제약조건keyword
		ex) studno number constraint student_no_pk primary key
	1) not null : 열이 null을 포함할 수 없음
	2) 고유키(unique key) : 테이블의 모든 행에서 고유한 값을 갖는 열 또는 열 조합을 지정
	3) 기본키(primary key) : 해당 컬럼값은 반드시 존재해야 하면서 유일해야 함
		unique not null 제약조건을 결합한 형태
	4) 참조키(foreign key) : 한 열과 참조된 테이블의 열 간에 외래 키 관계를 설정하고 시행
	5) check : 해당 컬럼에 저장가능한 데이터 값의 범위나 조건 지정
		기본 형식
		컬럼명 데이터유형 constraint 제약명 check(컬럼명 in(데이터1, 데이터2)	)
		cf) check(조건문의 구문)
 * 
 * */
-- 1. 기본 키 생성 예제 : 동일한 데이터 입력 불가, null 불가
SELECT * FROM student01;
CREATE TABLE student01(
	studno char(5) PRIMARY key
);
SELECT * FROM student01;
INSERT INTO student01 values('10001');
INSERT INTO student01 values(null);
--ex) student02 학생번호, 이름 설정하고, 학생번호는 primary key로 설정하여 이름과 함께 데이터 삽입
SELECT * FROM student02;
CREATE TABLE student02(
	studno char(5) PRIMARY KEY,
	name varchar2(50)
);
INSERT INTO student02 values('111', 'SARAH');

-- not null
CREATE TABLE student03(
	studno NUMBER PRIMARY KEY,
	name varchar2(50) NOT NULL	-- 이름을 NOT null로 설정
);
INSERT INTO student03 values(1000, '홍길동');
INSERT INTO student03 values(1001, '김길동');
INSERT INTO student03 values(1002, '홍길동');
INSERT INTO student03 values(1003, null);	--NOT NULL 설정했기떄문에 반드시 null값이 아닌 데이터값이 들어가야한다.
SELECT * FROM student03;

-- ex) student04 테이블에 이름과 국어점수를 설정하되, 이름과 점수를 not null로 설정 후 데이터입력확인
CREATE TABLE student04(
	name varchar2(50) NOT NULL,
	korScore NUMBER NOT null
);
INSERT INTO student04 values('SARAH', 100);
INSERT INTO student04 values('KEVIN', 75);
INSERT INTO student04 values(null, 100);
INSERT INTO student04 values('SARAH', null);
SELECT * FROM student04;

-- unique : 중복데이터 입력 불가 처리, 단 null은 중복이 가능하다
CREATE TABLE student05(
	NO NUMBER PRIMARY KEY,
	name varchar2(50) NOT NULL,
	civilnumber char(14) unique
);
INSERT INTO student05 values(1000, '홍길동', '921212-2801727');
INSERT INTO student05 values(1001, '김길동', '931212-2801727');
INSERT INTO student05 values(1002, '신길동', '921212-2801727');
INSERT INTO student05 values(1003, '오길동', null);
INSERT INTO student05 values(1004, '하길동', null);
INSERT INTO student05 values(1005, '신길동', null);
SELECT * FROM student05;

/*
	컬럼명 데이터유형 constraint 제약명 check(컬럼명 in(데이터1, 데이터2)	)
		cf) check(조건문의 구문)
 * 
 * */
-- 학생번호 학생명 남녀구분
CREATE TABLE student06(
	NO NUMBER,
	name varchar2(50),
	gender char(1) CONSTRAINT student06_gender_ck check(gender IN ('M','F'))
);
INSERT INTO student06 values(1000, '홍길동','M');
INSERT INTO student06 values(1001, '신길동','M');
INSERT INTO student06 values(1002, '홍영자','F');
INSERT INTO student06 values(1003, '하길동',null);	--O
INSERT INTO student06 values(1004, '마길동','K');		--X null과 지정된 문자열만 입력가능
SELECT * FROM student06;
--ex) product22 테이블에 물건번호, 물건명, 등급을 설정하되 등급은 A~C까지만 입력이 가능하도록
SELECT * FROM product22;
CREATE TABLE product22(
	NO NUMBER,
	name varchar2(50),
	grade char(1) CONSTRAINT product22_grade_ck check(grade IN ('A','B','C'))
);
INSERT INTO product22 values(01,'choco','A');
INSERT INTO product22 values(02,'candy','B');
INSERT INTO product22 values(03,'chew','C');
INSERT INTO product22 values(04,'ice','D');
INSERT INTO product22 values(05,'corn',null);
SELECT * FROM product22;
-- foreign key : 외래키 관계 설정.. - 다른 테이블에 있는 특정 컬럼의 데이터만 입력가능하게 설정할때 활용된다
--	ex) 사원정보의 부서번호는 부서테이블의 부서번호만 입력이 가능하다
DROP TABLE professor;
CREATE TABLE professor(
	NO NUMBER PRIMARY KEY,
	name varchar2(50)
);
INSERT INTO professor values(10, '홍길동');
INSERT INTO professor values(20, '김길동');
INSERT INTO professor values(30, '신길동');
SELECT * FROM professor;
CREATE TABLE student07(
	NO NUMBER,
	name varchar2(50),
	adno NUMBER REFERENCES professor(no)
);
SELECT * FROM student07;
INSERT INTO student07 values(1000,'김영수',10);
INSERT INTO student07 values(1001,'오영수',20);
INSERT INTO student07 values(1002,'한영수',30);
INSERT INTO student07 values(1003,'박영수',40);	-- professor에 없는 NO 이기때문에 40은 들어갈 수 없다.









