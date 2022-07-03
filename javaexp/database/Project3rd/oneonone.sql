CREATE TABLE qna(
	qserial NUMBER PRIMARY KEY,
	qnum NUMBER,
	title varchar2(100),
	writer varchar2(50),
	contents varchar2(150)
);
CREATE SEQUENCE sn
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	cache 2;
CREATE SEQUENCE qn
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	cache 2;
SELECT * FROM qna;
INSERT INTO qna VALUES(sn.nextval, qn.nextval, '강의가 재생이 안됨', '짱구', '강의가 재생이 안되고 무한로딩에 갇힘');
INSERT INTO qna VALUES(sn.nextval, qn.nextval, '결제가 안돼요', '짱구', '결제창에서 넘어가질않고 결제가 불가능함');
INSERT INTO qna VALUES(sn.nextval, qn.nextval, '로드맵이 보이지않아요', '짱구', '로드맵 페이지에서 로드맵을 볼 수가 없음');
INSERT INTO qna VALUES(sn.nextval, qn.nextval, '페이지 로드가 안돼요', '짱구', '웹페이지가 로딩이 안되고 계속 무한로딩함');

UPDATE QNA 
	SET contents = '웹페이지가 로딩은 되는데 페이지의 일부가 보이지않음'
	WHERE qserial = 1003;
SELECT * FROM qna;










