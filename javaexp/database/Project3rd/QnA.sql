CREATE TABLE qna1(
	cateserial number PRIMARY KEY,
	category varchar2(50)
);

CREATE TABLE specqna1(
	cateserial number,
	qorder number,
	contents varchar2(200)
);
CREATE SEQUENCE qno
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	cache 2;
INSERT INTO QNA1 values(qno.nextval,'자주하는질문');
INSERT INTO QNA1 values(qno.nextval,'영상재생오류');
INSERT INTO QNA1 values(qno.nextval,'결제/환불');
INSERT INTO QNA1 values(qno.nextval,'강의');
INSERT INTO QNA1 values(qno.nextval,'수료증');
INSERT INTO QNA1 values(qno.nextval,'이벤트');
INSERT INTO QNA1 values(qno.nextval,'피드백/기능요청');
INSERT INTO QNA1 values(qno.nextval,'실시간버그/서비스오류');
INSERT INTO QNA1 values(qno.nextval,'바우처사업/내일배움카드');
ALTER SEQUENCE qno
	MAXVALUE 9;
SELECT * FROM qna1;

CREATE SEQUENCE qorder
	INCREMENT BY 1
	START WITH 100
	MINVALUE 100;

INSERT INTO specqna1 values(1, qorder.nextval, '링크를 통해 자주하는 질문으로 이동 https://www.inflearn.com/faq');
INSERT INTO SPECQNA1 values(2, qorder.nextval, '링크를 통해 영상오류FAQ로 이동 https://doc.clickup.com/3686375/p/');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '결제가 안되고 있어요');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '결제수단을 변경하고 싶어요');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '환불은 어떻게하나요?');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '환불금액은 언제 입금되나요?');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '현금영수증이 필요해요');
INSERT INTO SPECQNA1 values(3, qorder.nextval, '세금계산서 발급받을 수 있나요');
INSERT INTO SPECQNA1 values(4, qorder.nextval, '강의자료는 어디서 받나요');
INSERT INTO SPECQNA1 values(4, qorder.nextval, '아직 구매전이지만 질문이 있어요');
INSERT INTO SPECQNA1 values(4, qorder.nextval, '수강중인 강의에 질문은 어떻게 남기나요?');
INSERT INTO SPECQNA1 values(4, qorder.nextval, '질문게시판의 답변은 언제 받을수 있나요?');
INSERT INTO SPECQNA1 values(5, qorder.nextval, '수료증은 강의를 100% 완강하신 뒤 완료버튼을 누르면 자동발급 됩니다.');
INSERT INTO SPECQNA1 values(6, qorder.nextval, '현재 진행중인 이벤트 보러가기');
INSERT INTO SPECQNA1 values(6, qorder.nextval, '15% 소속인증 할인이 궁금해요');
INSERT INTO SPECQNA1 values(6, qorder.nextval, '쿠폰사용방법이 궁금해요');
INSERT INTO SPECQNA1 values(6, qorder.nextval, '할인과 쿠폰 중복사용이 가능한가요?');
INSERT INTO SPECQNA1 values(7, qorder.nextval, '플레이어 단축키');
INSERT INTO SPECQNA1 values(7, qorder.nextval, '플레이어 자동재생');
INSERT INTO SPECQNA1 values(7, qorder.nextval, '쿠폰 부활기능');
INSERT INTO SPECQNA1 values(7, qorder.nextval, '진도율 초기화');
INSERT INTO SPECQNA1 values(8, qorder.nextval, '양식을 지켜 버그를 제보해주세요');
INSERT INTO SPECQNA1 values(9, qorder.nextval, 'K-비대면 바우처사업이 궁금해요');
INSERT INTO SPECQNA1 values(9, qorder.nextval, '평생교육바우처 사업이 궁금해요');
INSERT INTO SPECQNA1 values(9, qorder.nextval, '인프런에서 내일배움카드 사용이 가능한가요?');
SELECT * FROM SPECQNA1 s ;


SELECT q.cateserial 질문분야번호, category 질문분야내용,
		qorder 질문번호, contents 내용 FROM QNA1 q, SPECQNA1 s
WHERE q.cateserial=s.cateserial;









