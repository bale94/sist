SELECT * FROM WoriBANK;
CREATE TABLE WoriBANK(
	memberNum number PRIMARY KEY,
	name varchar2(50) NOT null,
	accountNum varchar2(50) unique,
	PW NUMBER NOT null,
	balance NUMBER
);
INSERT INTO WORIBANK values(memNum01.nextval, '홍길동', '1231123123', 1234, 1234);
CREATE SEQUENCE memNum01
	INCREMENT BY 1
	START WITH 100001
	MINVALUE 100001;
DROP SEQUENCE memNum01;
SELECT * FROM WoriMember;
DROP TABLE WoriMember;
CREATE TABLE WoriMember(
	memberNum NUMBER PRIMARY KEY,
	id varchar2(50),
	webPW varchar2(50),
	name varchar2(50),
	accountNum varchar2(50),
	phone varchar2(50),
	cardNum varchar2(50)
);
DELETE FROM WoriMember WHERE id='id12345';
SELECT * FROM dept01;

INSERT INTO WoriMember VALUES(52,'MALL','WASHINGTON','ndns','12230993288',123983432);
/*
회원번호/이름/계좌번호/비밀번호/잔액
회원번호6자리, 비밀번호3자리
계좌번호: 1002를 포함한 13자리?
 * */
CREATE TABLE Opbank(
	accountNum varchar2(50) FOREIGN KEY,
	PW NUMBER,
	balance NUMBER,
	memberNum NUMBER FOREIGN key
);

CREATE TABLE otherBank(
	accountNum varchar2(50),
	accountName varchar2(100),
	bankName varchar2(100)
);
DROP TABLE otherBank;
INSERT INTO otherBank values('1101234123453', '신한 주거래 저축예금', '신한은행');
INSERT INTO otherBank values('8182030728392', '국민 S20 저축예금', '국민은행');
SELECT * FROM otherBank;
DELETE FROM otherBank WHERE bankName ='카카오뱅크';
CREATE TABLE isUsed(
	accountNum varchar2(50) FOREIGN KEY,
	balance NUMBER,
	tradeDate DATE,
	amount number
);
SELECT * FROM dept01;

	create table member21(
			id varchar2(50),
			pass varchar2(50),
			name varchar2(50),
			point number,
			auth varchar2(50)
			);
	INSERT INTO member21 values(seq.nextVal, '8888', '마길동', 2000, '일반사용자');
SELECT * FROM member21;
	

select *
from emp01
where empno = 7521;
/*
select *
from emp01
where empno = ?
 * */

