/*
# 데이터베이스 보안을 위한 권한 설정
1. 데이터베이스관리자(DBA)는 사용자가 데이터베이스 객체(테이블, view, sequence)에 대한 특정 권한을 가질 수 있게 하여 다수의 사용자가
	데이터베이스에 저장된 정보를 공유하면서 정보에 대한 보안이 이루어지도록 한다.
2. DB서버에 접근시 필요한 사용자 계정/암호를 통해 로그인 인증을 받는다
3. 권한의 역할과 종류
	1) create user : 사용자를 새롭게 생성하는 권한
	2) drop user : 사용자를 삭제하는 권한
	3) drop any table : 테이블을 삭제하는 권한
	4) query rewrite : 함수 기반 인덱스 생성 권한
	5) backup any table : 테이블 백업 권한
	6) create session : 데이터베이스에 접속할 수 있는 권한
	7) create table/view/sequence/procedure 데이터베이스의 객체들을 생성하는 권한
	8) resource : 여러 객체들을 생성/사용 가능한 권한
	9) dba : 관리자 권한으로 계정을 생성하고, 권한을 부여할 수 있는 권한
 * 
 * */
/*
# 사용자 생성하기
1. system 관리자 계정으로 접근하여 scott에 dba권한을 부여하여 계정 생성과 권한 부여가 가능하게 하여야 한다
2. 권한 부여
	cmd
	sqlplus
	system/1111
	grant dba to scott;
	
3. 사용자 생성
	create user 사용자명 identified by 비밀번호;
4. 권한 부여
	grant 권한명 to 계정명
	create session - 접속권한
 * 
 * */
CREATE USER orauser100 IDENTIFIED BY user100;
GRANT CREATE SESSION TO orauser100;
/*
ex) orauser200/user200으로 계정과 비밀번호를 설정하여 계정생성하고
	해당 계정에 접근권한을 주고 접근해보자
 * 
 * */
CREATE USER orauser200 IDENTIFIED BY user200;
GRANT CREATE SESSION TO orauser200;

/*
1) dba권한이 필요하다
	- system계정으로 해당 계정을 만들거나
	- system계정에서 현재 접속중에 scott계정에 dba권한을 줘야한다
		grant dba to scott
2) 계정 생성
	create user orauser200 identified by user200;
	
3) 접속 권한 처리
	grant create session to orauser200;
	
# 특정한 사용자의 테이블(자원)을 사용하는 권한 처리
1. 계정 생성과 함께 접속, 자원 사용권한 설정
	1) 기본형식
	grant 권한1, 권한2, 권한3, .. to 사용자 identified by 계정명
	2) 실습예제
	grant connect, resourse, unlimited tablespace to scott;
		connect : 접속 권한
		resource : 자원에 대한 설정권한 - 각 객체(테이블/시퀀스/...)에 대한 사용 권한
		unlimited tablespace : 실제 저장할 물리적 테이블 저장 공간에 대한 용량 제한 없이 설정

 * */
GRANT CONNECT, resource, unlimited tablespace TO himan100 IDENTIFIED BY 8888;
-- ex) himan200 계정을 만들고, 접근권한과 오라클 객체에 대한 처리권한을 설정하고 테이블을 생성 후 데이터 입력
--비밀번호 변경
ALTER USER himan200 IDENTIFIED BY user201 REPLACE user200;


/*
# 서버담당자 pc에서 system/1111 계정으로 접근해서
1. 프로젝트에서 사용할 계정을 위와같이 만들고
GRANT CONNECT, resource, unlimited tablespace TO project01 IDENTIFIED BY 1111;
2. 접속해서 간단하게 테이블을 만든 후 외부에서 접속해서 데이터베이스를 사용할 수 있는지 여부를 확인한다
conn project01/1111;
create table tab01(name varchar2(50));
insert into tab01 values('홍길동');
commit;
select * from tab01;
 * 
 * */
SELECT * FROM member21;

SELECT * FROM member21
FROM member21
WHERE 1=1
AND name LIKE '%'||''||'%'
AND auth = '';
-- id, pass, name, point, auth
INSERT INTO member21 values('himan', 7777, '홍길동', 1000, '관리자');



SELECT * FROM emp01;







