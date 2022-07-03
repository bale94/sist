CREATE TABLE dept01
AS SELECT * FROM dept;

SELECT * FROM dept01;

UPDATE dept01
	SET dname='NOTHING',
		loc = 'SEOUL'
WHERE deptno=10;

DELETE FROM dept01
WHERE deptno=10;

SELECT * FROM dept01;

SELECT * FROM MEMBER03;
CREATE TABLE member03(
	id varchar2(50),
	pass varchar2(50),
	uname varchar2(50),
	point NUMBER,
	auth varchar2(50)
);