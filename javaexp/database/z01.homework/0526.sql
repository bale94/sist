--[1단계:확인] 1. inline view을 활용하여 분기별 최저급여자의 사원 정보를 출력하세요.
SELECT m.*
FROM (
	SELECT to_char(hiredate, 'Q'), min(sal) sal
	FROM EMP e 
	GROUP BY to_char(hiredate, 'Q')) m, emp e
WHERE m.sal = e.sal;
--1) 분기별 최저급여
--2) 분기별 최저급여의 사원정보
SELECT *
FROM (
	SELECT to_char(hiredate, 'Q') div, min(sal) SAL 
	FROM emp
	GROUP BY to_char(hiredate, 'Q')
	) q, emp e
WHERE q.sal=e.sal
AND q.div = TO_CHAR(e.hiredate, 'Q')
ORDER BY div;
-- 1,3분기의 최저값이 같으므로 분기도 검색조건으로 추가해야한다.

--[1단계:개념] 2. 삭제 처리 기본 형식과 subquery를 통한 삭제 형식를 예제를 통해서 설명하세요.
--delete from 테이블명 where 조건
SELECT * FROM emp03;
DELETE FROM emp03 WHERE empno='8003';

--[1단계:확인] 3. emp02로 복사테이블을 만들고, delete subquery를 이용하여, 상/하반기 최고 급여자를 삭제처리하세요.
CREATE TABLE emp02
AS SELECT * FROM emp;
SELECT * FROM emp02;
SELECT max(sal), min(sal) FROM emp02 WHERE MOD(to_number(TO_CHAR(hiredate, 'Q')),5) IN (1,2);
SELECT max(sal) FROM emp02 WHERE to_char(hiredate, 'Q') IN (1,2) GROUP BY to_char(hiredate, 'Q');

DELETE FROM emp02 
WHERE sal in (SELECT max(sal) FROM emp02 WHERE to_char(hiredate, 'Q') IN (1,2) GROUP BY to_char(hiredate, 'Q'));
SELECT * FROM emp02;

-- 2. subquery에 들어갈 query : 상/하반기 최고 급여자
SELECT hiredate, to_char(hiredate, 'MM') div1,
	to_number(to_char(hiredate, 'MM'))/6 div2,
	ceil(to_number(to_char(hiredate, 'MM'))/6) div3,
	decode(ceil(to_number(to_char(hiredate, 'MM'))/6),1,'상반기','하반기')
FROM emp02;

--[1단계:개념] 4. merge의 기본 형식을 선언하고, 2가지 기본예제(2개 테이블 비교 수정/등록, 
--            dual을 통한 데이터 비교 수정/등록)를 통하여 설명하세요.
merge into emp02 e
using emp03 m
ON (e.empno=m.empno)
when matched then
	UPDATE SET e.ename = m.ename
when not matched then
	INSERT values(m.empno, m.ename, m.job, m.mgr, m.hiredate, m.sal, m.comm, m.deptno);
SELECT * FROM emp02;

MERGE INTO emp02 e
using(SELECT 7369 empno, '홍길동' ename, '사원' job, 7902 mgr, sysdate hiredate, 2000 sal, 100 comm, 10 deptno
FROM dual) s
ON (e.empno=s.empno)
WHEN MATCHED THEN 
	UPDATE SET e.ename = s.ename,
				e.job = s.job,
				e.mgr = s.mgr,
				e.hiredate = s.hiredate,
				e.sal = s.sal,
				e.comm = s.comm,
				e.deptno = s.deptno
WHEN NOT MATCHED THEN 
	INSERT values(s.empno, s.ename, s.job, s.mgr, s.hiredate, s.sal, s.comm, s.deptno);
SELECT * FROM emp02;

--[1단계:확인] 5. 물건테이블과 회원테이블을 만들어 기본 데이터 5개를 입력하되, merge를 이용하여
--            등록/수정처리해보세요.
SELECT * FROM content;
CREATE TABLE content(
	name varchar2(50),
	brand varchar2(50),
	pnumber char(14),
	price NUMBER,
	context varchar2(20)
);
SELECT 'chocolate' name, '해태' brand, '12345ME1' pnumber, 2400 price, '맛있다!' context FROM dual;
MERGE INTO content c
using(SELECT 'chocolate' name, '해태' brand, '12345ME1' pnumber, 2400 price, '맛있다!' context
FROM dual) s
ON (c.pnumber = s.pnumber)
WHEN MATCHED THEN 
	UPDATE SET c.name = s.name,
				c.brand = s.brand,
				c.pnumber = s.pnumber,
				c.price = s.price,
				c.context = s.context
WHEN NOT MATCHED THEN 
	INSERT values(s.name, s.brand, s.pnumber, s.price, s.context);

CREATE TABLE member(
	id varchar2(50),
	pass varchar2(50),
	civilnumber char(14),
	point NUMBER,
	auth varchar2(20)
);
SELECT * FROM MEMBER;
MERGE INTO member m
using(SELECT 'name' id, '1234' pass, '920321-2832818' civilnumber, 2400 point, '맛있다!' auth
FROM dual) s
ON (m.civilnumber = s.civilnumber)
WHEN MATCHED THEN 
	UPDATE SET m.id = s.id,
				m.pass = s.pass,
				m.civilnumber = s.civilnumber,
				m.point = s.point,
				m.auth = s.auth
WHEN NOT MATCHED THEN 
	INSERT values(s.id, s.pass, s.civilnumber, s.point, s.auth);

--[1단계:개념] 6. 문자열, 숫자형, 날짜형 데이터 유형을 기능별로 설명하세요
-- char : 고정길이 문자열, 최대길이 2000바이트보다 큰 데이터는 저장오류
-- varchar2 : 가변길이 문자열, 최대 4000바이트이고, 쓰는길이만큼 사용하고 나머진 반납한다
-- number : 정밀도와 스케일을 사용하여 숫자형을 표현
-- date : 기본형과 timestamp타입을 갖고있으며 날짜자료를 저장하기 위한 타입이다.

--[2단계:확인] 7. 어떤 회원이 구매한 물건 정보를 담는 구매테이블을 만들려고 한다. 
--        구매테이블은 어떤 컬럼이 필요할지 기술해보고, 실제 저장한 데이터를 입력해보자.
SELECT * FROM basket;
CREATE TABLE basket(
	name varchar2(50),
	price NUMBER,
	kind varchar2(50),
	weight NUMBER
);
SELECT * FROM basket;
	
--SELECT * FROM member21;
CREATE TABLE product01(
	name varchar2(50),
	price NUMBER,
	cnt number
);
CREATE TABLE member21(
	id varchar2(50),
	pass varchar2(50),
	name varchar2(50),
	point NUMBER,
	auth varchar2(50)
);
SELECT * FROM product01;
SELECT '사과' name, 3000 price, 2 cnt FROM dual;
MERGE INTO product01 t
USING (SELECT '사과' name, 3000 price, 2 cnt FROM dual) s
ON (t.name = s.name)
WHEN MATCHED THEN 
	UPDATE SET	t.price = s.price,
				t.cnt = s.cnt
WHEN NOT MATCHED THEN 
	INSERT values(s.name, s.price, s.cnt);






