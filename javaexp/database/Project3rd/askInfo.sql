
CREATE TABLE Bugs(
	bno NUMBER,
	username varchar2(100) PRIMARY key,
	userid varchar2(100),
	browser varchar2(50),
	pcormob varchar2(10) CONSTRAINT Bugs_pcormob_ck CHECK(pcormob IN ('PC','Mob')),
	content varchar2(200)
);
SELECT * FROM Bugs;
CREATE SEQUENCE bnumber
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1;
INSERT INTO Bugs values(bnumber.nextval, '짱구', 'zzanggu', '크롬', 'PC', '크롬브라우저에서 화면이 켜지질않음');
INSERT INTO Bugs values(bnumber.nextval, '철수', 'chulsoo1', '사파리', 'Mob', '모바일에서 영상이 너무 끊김');
INSERT INTO Bugs values(bnumber.nextval, '홍길동', 'doolydie', '크롬', 'PC', '동시에 두개의 영상이 한번에 켜지지않음');
INSERT INTO Bugs values(bnumber.nextval, '또치', 'ddochi', '익스플로러', 'PC', '영상이 로딩되지않음');
INSERT INTO Bugs values(bnumber.nextval, '도우너', 'downer', '크롬', 'Mob', '모바일 크롬에서 로그인이 되지않음');
SELECT * FROM Bugs;

UPDATE TABLE BUGS 
	SET content='버그수정완료'
WHERE bno IN (2,4);

DELETE FROM BUGS 
WHERE bno IN (2,4);

SELECT * FROM Bugs;

