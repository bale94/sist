/*
# 이상현상의 개념
	테이블을 적절한 분리를 하지 않았을때, 발생하는 이상현상
	==> 분리하는 과정을 단계로 만들어서 처리하는 과정(정규화 과정)
1. 종류
	0) 내용
		학생정보와 과목정보라는 분리되어야 할 정보를 같은 테이블에서 활용하므로
		하나의 학생정보를 등록,변경,삭제했을 때 발생하는 문제점에 대한 내용
	1) 삭제 이상
		- 튜플(데이터 row단위) 삭제 시 같이 저장된 다른 정보들까지 연쇄적으로 삭제되는 현상
		- 연쇄 삭제문제 발생
		ex) 장미란 학생을 삭제하면 장미란이 듣고있는 스포츠경영학이 삭제되게된다.
	2) 삽입 이상
		- 튜플 삽입 시 특정 속성에 해당하는 값이 없어 null값을 입력해야 하는 현상
			==> null 값 문제 발생
		ex) 박세리 학생이 삽입되면 강좌이름 강의실이 null이 되어 메모리의 비효율성 문제가 발생한다
	3) 수정 이상
		- 튜플 수정 시 중복된 데이터의 일부만 수정되어 데이터의 불일치 문제가 일어나는 현상
		- 불일치 문제 발생
		ex) 자료구조를 듣는 박지성의 주소를 변경하면 동일하지만 컴퓨터공학을 들은 박지성도
			같은 학생이지만 주소가 변경되지않는다. 일관성을 확보할 수 없다
			특정 데이터의 수정에 있는 등록된 데이터를 전부 수정해야 하는 문제도 포함하고있다.
	캡쳐된 학생 수강 erd를 만들고, 테이블과 함께 데이터를 입력까지하세요
 * 
 * */
SELECT * FROM class01;
CREATE TABLE student08(
	studno NUMBER PRIMARY KEY,
	studname varchar2(50),
	studdept varchar2(50),
	studloc varchar2(50)
);
CREATE TABLE class01(
	classname varchar2(50),
	classloc varchar2(50)
);
INSERT INTO student08 values(401, '김연아', '체육학과', '대한민국 서울');
INSERT INTO student08 values(402, '장미란', '체육학과', '대한민국 강원도');
INSERT INTO student08 values(501, '박지성', '컴퓨터과', '영국 맨체스터');
INSERT INTO student08 values(502, '추신수', '컴퓨터과', '미국 클리블랜드');
INSERT INTO class01 values('데이터베이스', '공학관 110');
INSERT INTO class01 values('자료구조', '공학관 111');
INSERT INTO class01 values('스포츠경영학', '체육관 103');
SELECT * FROM student08;
SELECT * FROM class01;

CREATE TABLE studclass(
	stuno NUMBER,
	name varchar2(50),
	department varchar2(50),
	address varchar2(100),
	lecture varchar2(50),
	lcroom varchar2(50)
);
INSERT INTO studclass values(401, '김연아', '체육학과', '대한민국 서울','데이터베이스', '공학관 110');
INSERT INTO studclass values(402, '장미란', '체육학과', '대한민국 강원도','데이터베이스', '공학관 110');
INSERT INTO studclass values(501, '박지성', '컴퓨터과', '영국 맨체스터','자료구조', '공학관 111');
INSERT INTO studclass values(501, '박지성', '컴퓨터과', '영국 맨체스터','데이터베이스', '공학관 110');
INSERT INTO studclass values(502, '추신수', '컴퓨터과', '미국 클리블랜드','자료구조', '공학관 111');
SELECT * FROM studclass;

/*
# 잘못된 설계의 예제 함께하고, 수정해보기(계절학기 수강 테이블)
1. 테이블 만들기
	여름(식별자, 클래스, 가격)

 * 
 * */
CREATE TABLE summer10(
	sid NUMBER,
	class varchar2(50),
	price NUMBER
); SELECT * FROM summer10;
INSERT INTO summer10 values(100,'fortran',20000);
INSERT INTO summer10 values(150,'pascal',15000);
INSERT INTO summer10 values(200,'c',10000);
INSERT INTO summer10 values(250,'fortran',20000);
SELECT * FROM summer10;
-- 질의 실습
-- 1) 계절학기를 듣는 학생의 학번과 수강하는과목
CREATE TABLE student09(
	stuno NUMBER,
	class varchar2(50)
);
SELECT * FROM student09;
INSERT INTO student09 values(1000, 'pascal', 150);
INSERT INTO student09 values(1001, 'c', 200);
INSERT INTO student09 values(1002, 'fortran', 100);
INSERT INTO student09 values(1003, 'fortran', 250);
-- 2) C 강좌의 수강료
SELECT class, price FROM summer10 WHERE class='c';
-- 3) 수강료가 가장 비싼 과목
SELECT DISTINCT sid, class, price FROM summer10 WHERE price=(SELECT max(price) FROM summer10);
-- 4) 계절학기를 듣는 학생수와 수강료 총액
SELECT count(s.stuno),sum(su.PRICE) FROM student09 s , summer10 su WHERE s.sid=su.sid;
-- # 삭제이상
-- 1. 200번 학생의 계절학기 수강신청을 취소
	-- 그리고 문제점이 무엇인가?
	-- 문제를 어케해결?
DELETE FROM student09
WHERE class='c';
SELECT * FROM student09;
-- c강좌의 수강료를 조회
/*
문제점이 무엇인가?
	특정한 학생의 수강정보를 취소했는데 강좌정보도 다 삭제처리되었다
	현재 어떤강좌가 개설되었는지 알 수 없다
이와같이 특정한 컬럼에 의해 정보가 삭제되었을때 원치않는 정보도 같이 삭제되어버리는 현상을
'삭제이상'이라고 한다
 * */
--# 삽입이상
-- 2. 계절학기에 새로운 자바 강좌를 개설
--		1) 수강전체인원을 확인
--		2) 어떤문제가 발생하는지 정리
SELECT * FROM summer10;
SELECT count(*) FROM summer10;
INSERT INTO summer10(class,price) VALUES ('java',15000);
SELECT count(sid) FROM summer10;
SELECT count(*)
FROM summer10 WHERE sid IS NOT NULL;
/*
 * 어떤문제가 발생했는가?
	- 수강인원을 검색할 시, 해당 컬럼에 대한 직접적인 선언 필요 count(컬럼명)
	- 학생정보는 null로 처리가 된다 ==> 컬럼에 필요없는 정보 null로 쌓이게된다
 * */
-- # 수정이상
-- 사원번호 100의 fortran 강좌의 수강료를 20000에서 15000으로 수정하세요
-- 1) 어떤 문제가 발생하는가?
-- 100의 fortran가격은 변동되었는데 250의 가격은 바뀌지않는다. // 데이터가 fortran, 'fortran ', 포트란 처럼 다르게되어있을경우
-- 정상적인 수정이 불가능하다.
-- 2) 이것을 해결하기위해 어떻게 해야하는가?
-- sid의 price가 아닌 class의 price를 변경하여 다른 sid의 class price도 바뀌도록 해야한다.
SELECT sid FROM summer10 WHERE class='fortran';
UPDATE SUMMER10 
	SET price = 15000
	WHERE sid=100 AND class='fortran';
SELECT * FROM summer10;
UPDATE SUMMER10 
	SET price = 20000
	WHERE class = 'fortran';
DELETE FROM summer10
WHERE sid IS NULL;
SELECT * FROM summer10;
/*
# 이상현상이 발생하지않는 테이블 생성
 * */
-- summer10 ==> summerPrice01(class,price), summerEnroll01(sid,class)
-- 1) 계절학기별 수강료
CREATE TABLE summerPrice01
AS SELECT DISTINCT class, price FROM summer10;
SELECT * FROM summerPrice01;
-- 2) 학생별 수강신청과목
CREATE TABLE summerEnroll01
AS SELECT DISTINCT sid,class FROM summer10;
SELECT * FROM summerEnroll01;
-- 학생별 수강과목과 가격
SELECT sid, p.class, price
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class=e.class;
-- summerPrice01, summerEnroll01 을 이용해서 아래의 초기 sql을 작성
-- 1) 계절학기를 듣는 학생의 학번과 수강하는 과목
SELECT sid, p.class
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class=e.class;
--//
SELECT sid, class
FROM SUMMERENROLL01 ;
-- 2) C 강좌의 수강료?
SELECT p.class, price
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class=e.class
AND p.class='c';
--//
SELECT class, price
FROM SUMMERPRICE01
WHERE class='c';
-- 3) 수강료가 가장 비싼 과목은?
SELECT DISTINCT price, p.class
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class=e.class
AND price = (SELECT max(price) FROM SUMMERPRICE01 );
--//
SELECT DISTINCT class
FROM SUMMERPRICE01 
WHERE price=(SELECT max(price) FROM SUMMERPRICE01 );
-- 4) 계절학기를 듣는 학생수와 수강료 총액
SELECT DISTINCT count(sid), sum(price)
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class=e.class;
--//
SELECT count(*), sum(price)
FROM SUMMERPRICE01 p, SUMMERENROLL01 e
WHERE p.class = e.class;










