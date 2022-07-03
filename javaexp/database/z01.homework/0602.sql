--[1단계:개념] 1. 잘못된 설계에 의한 이상현상을 종류 기술하세요
-- 삭제이상, 수정이상, 삽입이상
-- 삭제이상은 특정값을 지웠을때 저장된 다른 정보들까지 같이 지워져서 생기는 오류
-- 수정이상은 특정값을 수정했을때 동일한 다른 값들이 수정되지않아서 발생하는 오류
-- 삽입이상은 값을 추가했을때 다른값들이 null로 저장되어 오류가 발생하는경우이다

--[1단계:확인] 2. 오늘 만든 수강테이블의 삭제이상의 경우를 처리하고 문제점을 기술하세요
SELECT * FROM summer10;
DELETE FROM SUMMER10 s 
WHERE class='c';
-- c와 함께있는 sid정보와 가격정보가 모두 삭제되어 찾을수없게된다.

INSERT INTO SUMMER10 values(200,'c',10000);

--[1단계:확인] 3. 수강테이블의 등록이상의 경우를 처리하고 문제점을 기술하세요
INSERT INTO summer10(class, PRICE) values('java', 24000);
SELECT count(*) FROM summer10;
-- 위 sql로 호출할시, sid가 null이 있음에도불구하고 5명으로 카운트가 되어 문제가 발생한다.

DELETE FROM SUMMER10 s 
WHERE class='java';

--[1단계:확인] 4. 수강테이블의 수정이상의 경우를 처리하고 문제점을 기술하세요
UPDATE SUMMER10 
	SET price=12000
	WHERE sid=100;
-- 이 경우 sid100의 price는 12000으로 바뀌었지만 sid250의 fortran price는 20000이 그대로이다.
-- 따라서 오류가 발생하게된다. 그래서 꼭 공통분모를 where절에 넣어서 수정해야한다
UPDATE SUMMER10 
	SET price=20000
	WHERE sid=100;

--[1단계:확인] 5. 수강테이블의 이상현상을 없애기 위한 테이블 구조를 erd를 통해 분리시키고, 테이블을 작성하고 데이터를 입력하세요
CREATE TABLE applyInfo(
	studno NUMBER,
	studname varchar2(50),
	department varchar2(50),
	address varchar2(50),
	classname varchar2(50),
	classloc varchar2(50)
);

INSERT INTO applyInfo values(1000, '짱구', '영문학과', '서울', 'c', 101);
INSERT INTO applyInfo values(1001, '철수', '경제학과', '경기', 'c', 101);
INSERT INTO applyInfo values(1000, '짱구', '영문학과', '서울', 'python', 102);
INSERT INTO applyInfo values(1002, '민지', '국문학과', '광주', 'python', 102);
INSERT INTO applyInfo values(1003, '훈이', '컴퓨터학과', '부산', 'java', 103);


--[1단계:확인] 5. 분리된 테이블에서 이상 현상이 더 이상 발생하지 않음을 sql을 통해 처리결과를 출력해보세요.
CREATE TABLE studInfo
AS SELECT studno, studname, department, address FROM applyInfo;
CREATE TABLE classInfo
AS SELECT classname, classloc FROM applyInfo;
SELECT DISTINCT  * FROM studInfo;
SELECT DISTINCT studno, department FROM applyInfo;
SELECT DISTINCT a.studno, a.classname, a.classloc FROM APPLYINFO a, CLASSINFO c ;














