--[1단계:개념] 1. 무결성 제약조건을 설정하는 목적을 기술하세요.
-- 무결성 제약조건을 설정하는 이유는 데이터의 정확성과 일관성을 보장하기 위해서이다.

--[1단계:개념] 2. not null 무결성 제약조건의 기본예제와 함께 제약조건의 내용을 기술하세요
-- not null을 설정하게되면 해당값은 절대 null인 상태로 입력될 수 없게된다.
SELECT * FROM student02;
INSERT INTO student02 values(123,'KEVIN');	--가능
INSERT INTO student02 values(123,null);	--불가
INSERT INTO student02 values(null,'JAMES');	--불가

--[1단계:개념] 3. unique 무결성 제약조건의 기본예제와 함께 제약조건의 내용을 기술하세요
-- unique를 설정하게되면 해당값은 같은값이 절대 테이블에 중복으로 입력될 수 없게된다.
SELECT * FROM student05;
INSERT INTO student05 values(1006, 'KEVIN', '929231-2039281');
INSERT INTO student05 values(1007, 'DAVID', '934231-2039281');
INSERT INTO student05 values(1008, 'KEVIN', '929231-2039281');	-- 같은 civilnumber값을
--갖게되므로 테이블에 입력될수없다.

--[1단계:확인] 4. 회원테이블에서 id, pass, 이름, 권한, 포인트를 설정하되,
--      제약조건의 이름은 모두가 설정하고,
--      id : not null, unique, pass : not null, 이름: not null
--      권한 : 관리자/일반사용자/슈퍼유저 만등록, 포인트 : 0이상 등록 가능
SELECT * FROM member01;
CREATE TABLE member01(
	id varchar2(50) PRIMARY KEY,	--NOT NULL + UNIQUE => PRIMARY KEY!!
	pass varchar2(50) NOT NULL,
	name varchar2(50) NOT NULL,
	auth varchar2(50) CONSTRAINT member01_auth_ck CHECK(auth IN ('관리자', '일반사용자', '슈퍼유저')),
	point NUMBER CONSTRAINT member01_point_ck CHECK(point >=0)
);
INSERT INTO member01 values('system0', 'password', 'KEVIN', '관리자', 0);
INSERT INTO member01 values('system0', 'password1', '야', '관리자', 1200);
INSERT INTO member01 values('system1', 'password', 'KEVIN', '일반사용자', 1500);
INSERT INTO member01 values('system2', 'password', 'KEVIN', '슈퍼유저', -200);
INSERT INTO member01 values('system3', 'password', 'KEVIN', '일반인', 0);
SELECT * FROM member01;

--[1단계:개념] 5. 무결성 제약 조건의 null의 관계를 기술하세요.
-- 존재하는 컬럼에 해당하는 값을 입력하지 않는다면 기본적으로 null로 입력이되지만,
-- 테이블을 설정할 때 not null이나 primary key로 설정을 하게된다면 null로 존재할 수 없기때문에
-- 꼭 데이터 값을 입력해 주어야 한다.

--[1단계:개념] 6. 무결성 제약조건의 이름을 쓰는 경우와 쓰지 않는 경우 형식의 차이를 기술하세요.
-- 무결성제약조건의 이름을 지정하지 않게되면, 제약조건을 on/off하기가 어렵기때문에 이름을 지정하는것이 편하다
-- 이름을 쓰는경우: auth varchar2(50) constraint member01_auth_ck ~~~ 이런식으로되고
-- 이름을 쓰지않는경우: auth varchar2(50) check (조건) 의 방식으로 구성된다.

--[1단계:확인] 7. 물건(물건번호, 이름, 가격, 단위, 분류번호) 제품구분(분류번호, 분류명, 우선순위)
--      1000 사과   3000 개  10     10 과일류 1
--      1001 소고기 10000 g  20     20 육류  2
--        제품구분의 분류번호와 물건의 분류번호는 foreign key 관계로 설정하세요.
SELECT * FROM product1;
CREATE TABLE product1(
	proNum NUMBER,
	name varchar2(50),
	price NUMBER,
	cnt varchar2(50),
	prod NUMBER PRIMARY KEY
);
SELECT * FROM product1;
INSERT INTO product1 values(1000, '사과', 3000, '개', 10);
INSERT INTO product1 values(1001, '소고기', 10000, 'g', 20);

CREATE TABLE prodSel(
	prod NUMBER REFERENCES product1(prod),
	prodName varchar2(50),
	firLast number
);
INSERT INTO prodSel VALUES(10,'과일류',1);
INSERT INTO prodSel VALUES(20,'육류',2);
SELECT * FROM prodSel;






