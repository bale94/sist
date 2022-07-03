SELECT * FROM emp;
-- ResultSet 으로 아래 내용이 할당된다.
-- .next() : 행단위로 이동 처리함 - 그 행에 데이터가 없으면 true/없으면 false
-- .getString("컬럼명") : 해당 row에 상단에 선언된 column명을 기준으로 데이터를 가져온다.
--		**주의) select @@최종컬럼명이기에 alias가 있으면 alias명으로 호출해야한다
--		.get데이터유형()
--			ex) rs.getInt("empno"), rs.getDate("hiredate"), sal의 경우 number(4,2)로 실수형이기에
--				rs.getDouble("sal")

SELECT count(*) cnt FROM emp WHERE deptno=10;
SELECT * FROM emp WHERE deptno=10;

SELECT *
FROM EMP e 
WHERE ename LIKE '%'||''||'%';

SELECT * FROM emp01;
SELECT max(empno) FROM emp01;

INSERT INTO emp01 values(1001, '마길동', '대리', 7780, to_date('2010-10-10', 'YYYY-MM-DD'), 3500, 100, 10);

UPDATE emp01
	SET ename='한길동',
		job='차장',
		mgr=7780,
		hiredate = to_date('2000-12-10', 'YYYY-MM-DD'),
		sal = 5000,
		comm = 100,
		deptno = 20
WHERE empno=1001;

/*
UPDATE emp01
	SET ename=?,
		job=?,
		mgr=?,
		hiredate = to_date(?, 'YYYY-MM-DD'),
		sal = ?,
		comm = ?,
		deptno = ?
WHERE empno=?
 * */

SELECT * FROM emp01;
DELETE FROM EMP01 e 
WHERE empno=7369;

/*
DELETE FROM EMP01 e 
WHERE empno=?
 * */


/*
'2010-10-10' : 날짜 데이터를 입력할 때 문자열이 필요해서
private String hiredate_s;
로 추가선언필요

INSERT INTO emp01 values(?, ?, ?, ?,
	 to_date(?, 'YYYY-MM-DD'), ?, ?, ?);


 * */






