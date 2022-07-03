/*
# 문자열 조작함수들
1. instr
	1) 특정 문자가 출현하는 첫번째 위치를 반환
		instr(데이터, '검색할문자') : 해당 위치를 return
		instr(데이터, '검색할문자', 검색할시작위치, 매칭대상이 나올 횟수) : 
			1부터 시작해서 검색할 시작위치와 검색되어 나온 데이터의 @@번째 횟수를 지정해서 index를
			나오게 할 수 있다
		ps) 특정 컬럼의 데이터가 많을 때 해당 데이터가 있는지 여부와 위치를 검색할때 사용한다.
			
 * */
SELECT instr('SQL*PLUS', '*') FROM dual;
SELECT instr('Welcome to Oracle 11g', 'o',1,1) FROM dual;
SELECT instr('Welcome to Oracle 11g', 'o',3,2) FROM dual;
-- Welcome to Oracle 11g 데이터의 'o'로 검색할때, 시작을 3번째부터하고 두번째o가 나오는 index추출
-- 위의 경우 index 3부터 시작해서 두번째 o인 to에 있는 o의 위치를 리턴한다.
--ex) 직책과 직책에서 'A'가 나오는 첫번째 위치를 검색하여 출력
SELECT job, instr(job,'A',1,1) jobA FROM emp WHERE instr(job,'A',1,1)!=0;
/*
2. lpad(left padding), rpad(right padding)
	1) 전체 문자의 크기를 지정하고 그 크기보다 작을 때 왼쪽/오른쪽에 특정한 문자를 추가하도록 처리하는 기능
	2) 형식
		lpad(데이터, 크기지정, 덧붙일문자열)
		rpad(데이터, 크기지정, 덧붙일문자열)
	ps) 특정한 컬럼을 동일한 자리수를 만들거나, 가변형데이터를 고정형데이터로 변경할 때 주로 사용
		varchar2 ==> char
 * */
SELECT LPAD('sql',5,'*') sh1, RPAD('sql',5,'#') sh2
FROM dual;
-- ename 데이터를 고정형을 변환해서 등록
SELECT length(ename) FROM emp;
SELECT max(LENGTH(ename)) FROM emp;
SELECT ename, rpad(ename,6,' ') "공백삽입"
FROM emp;
-- ex) 사원명을 6자리, 직책명을 8로 설정하여 사원명을 왼쪽에 #기호를, 직책명은 오른쪽에 @기호를 덧붙여 처리하여 출력
SELECT LPAD(ename, 6, '#') newEname, RPAD(job,8,'#') newJob
FROM EMP e ;
/*
3. ltrim/rtrim
	1) trim은 절삭이라는 말로, 오른쪽 또는 왼쪽에 있는 특정한 문자열을 삭제처리할 떄 활용된다
		- ltrim(데이터, '제거할문자') : 왼쪽에 제거할 문자를 없애주는데 반복적으로 제거가 된다
		- rtrim(데이터, '제거할문자') : 오른쪽에 제거할 문자를 없애주는데 반복적으로 제거가 된다
		- trim('양쪽삭제할문자', from 데이터) : 양쪽에 삭제할 문자를 한번에 제거 처리한다.
		cf) char 고정형 데이터가 입력된 데이터와 크기가 다를때
			varchar2 가변형 데이터로 변환할 때 활용할수있다.
		
 * */
SELECT ltrim('***sql***','*') str1, rtrim('***sql***','*') str2, trim('*' FROM '***sql***') str3 FROM dual;

-- ex) job은 왼쪽에 'S'를 삭제 후 출력, ename은 오른쪽에 'N'을 삭제하고 출력
SELECT job, LTRIM(job, 'S') job1, ename, RTRIM(ename, 'N') ename1 FROM emp;  



