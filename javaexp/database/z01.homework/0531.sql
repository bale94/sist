--[1단계:개념] 1. 데이터베이스의 생명주기를 예시와 함께 설명하세요.
-- 요구사항 수집 및 분석 / 설계 / 구현 / 운영 / 감시 및 개선 으로 나눌 수 있다.
-- 요구사항을 수집하고 분석한 뒤, 개념적모델링, 논리적모델링, 물리적 모델링을 통해 설계하고
-- 실사용할수 있도록 구현한 뒤, 운영하고, 개선점을 찾아 개선해나간다.

--[1단계:개념] 2. 개념적모델링/논리적모델링/물리적 모델링의 차이점을 기술하세요
-- 개념적모델링은 핵심 엔티티를 도출하고 erd를 작성하는 부분이고, 논리적모델링은 작성된 erd에 상세속성을 정의하고 정규화하는 작업을
--거친다. 물리적모델링은 DB객체를 정의하고 테이블 및 인덱스 등을 설계하여 더 세부적인 모델링을 만드는 과정이다. 

--[1단계:확인] 3. 아래와 같은 요구사항에 합당한 개념/논리/물리 모델링을 처리하세요.
--               회사는 네개의 부서를 운영한다. 부서는(부서번호, 부서이름)을 저장한다.
--               부서는 1명 이상의 직원(직원번호,직원이름,직책)을 있다. 각 직원은 하나의 부서에 소속된다.
--               직원은 부양가족(이름, 나이)이 있을 수 있다
--[1단계:확인] 3. 사원테이블 내에 사원번호와 관리자번호와 1:1관계로 설정한 엔티티타입을 erd로 만드세요.
--[1단계:확인] 4. 커플사이트에 회원들 간에 남녀 매칭하는 테이블을 구현할려고 한다. erd를 만들고, 카디넬러티를 
--            만든후, 실제 테이블을 만들고 데이터를 입력처리하여 조인결과를 확인하세요.
SELECT * FROM matching;
CREATE TABLE men(
	mnum NUMBER PRIMARY KEY,
	mname varchar2(50),
	mage NUMBER
);
CREATE TABLE women(
	wmnum NUMBER PRIMARY KEY,
	wmname varchar2(50),
	wmage NUMBER
);
CREATE TABLE matching(
	mnum NUMBER REFERENCES men(mnum),
	wmnum NUMBER REFERENCES women(wmnum)
);
SELECT * FROM men;
INSERT INTO men values(1,'DAVID',25);
INSERT INTO men values(2,'KEVIN',27);
SELECT * FROM women;
INSERT INTO women values(1,'SARAH',26);
INSERT INTO women values(2,'JANE',24);
SELECT *
FROM men m, women w
WHERE m.mnum=w.wmnum;

--[1단계:개념] 5. DB권한과 역할을 종류를 기술하세요
-- create user : 유저생성
-- drop user : 유저삭제
-- drop any table : 테이블 삭제권한
-- query rewrite : 인덱스 생성권한
-- backup any table : 테이블 백업권한
-- create session : db에 접속할 수 있는 권한
-- create table/view/sequence : 테이블, 뷰, 시퀀스 등을 생성할 수 있는 권한
-- resourse : 여러 객체들을 생성 및 사용할 수 있는 권한
-- dba : 계정에 관리자권한 부여

--[1단계:확인] 6. 관리자 권한에서 scott3계정을 만들고, 해당 계정으로 접근하게 처리하세요
CREATE USER scott3 IDENTIFIED BY user03;
GRANT CREATE SESSION TO scott3;







