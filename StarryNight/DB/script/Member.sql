--회원
--INSERT INTO MEMBER values(seq_member.nextval, #{email}, #{pswd}, #{name}, #{birthDate}, #{contact}, #{address}, 'U');

--관리자
INSERT INTO MEMBER values(1, 'admin', '1111', '관리자', to_char(sysdate, 'YYYY-DD-MM'), '01012345678', '서울시', 'A');