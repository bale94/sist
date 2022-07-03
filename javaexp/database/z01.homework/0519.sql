--[1단계:개념] 1. 데이터베이스의 정렬의 기본 형식을 기본 예제를 통해서 설명하세요.
--sql명령문에서 검색된 결과는 테이블에 데이터가 입력된 순서대로 출력한다.
--데이터의 출력순서는 특정 컬럼을 기준으로 오름차순/내림차순으로 정렬하는 경우에 활용된다.

--[1단계:개념] 2. 함수의 크게 단일행/복수행 함수로 나누어진다. 이것의 구별기준을 예제로 설명하세요.
-- 단일행함수는 하나의 행당 하나의 리턴값을 갖지만 복수행함수는 여러개의 햄을 그룹화하여 그룹당 하나의 리턴값을
--갖는 방식이다.
SELECT ename, job, lower(job) FROM emp; 

--[1단계:확인] 3. 아래의 형식으로 함수를 적용해서 출력하되 ename이 대소문자 구분없이 a/A인 데이터로 두번째 포함되어 검색 되게 처리하세요.
--                The salary of Ward is @@@ won!!!
SELECT 'The salary of ' || INITCAP(ename) || ' is ' || sal || 'won' show
FROM EMP e
WHERE lower(ename) LIKE '_a%';

--[1단계:개념] 4. substr() 함수의 기본 매개변수와 기능을 기본예제를 통해서 설명하세요.
SELECT substr('951212-2701521',0,2)||'년 '||substr('951212-2701521',3,2)||'월 '||substr('951212-2701521',5,2)||'일 생일' show
FROM dual;
-- 제공한 문자열에서 몇번째부터 몇개의 단어를 뽑아낼건지 정할때 쓰는 함수이다

--[1단계:확인] 5. ename의 첫번째에서 3번째 데이터 추출, job과 혼합하여 화면에 출력하되, substr(), concat()함수를 활용하세요
SELECT concat(substr(ename, 1,2),job) FROM emp;

--[1단계:확인] 6. ||, substr을 활용하여 1980에 입사한 사람의 입사일정보를 @@@는 @@@@년 @@월 @@일에 입사했습니다.로 출력하세요(ename, hiredate활용)
SELECT ename||'는 '||substr(hiredate,1,2)||'년 '||substr(hiredate,4,2)||'월 '||substr(hiredate,7,2)||'일에 입사했습니다.' show
FROM EMP e ;

--[1단계:개념] 7. instr의 기본 매개변수 옵션을 예제를 통해서 기술하세요.
--instr(데이터, '검색할문자', 검색할시작위치, 매칭대상이 나올 횟수)
SELECT instr('Welcome to Oracle 11g', 'o',3,2) FROM dual; --특정문자가 몇번째인덱스에서부터 몇번쨰에 또 나오는지 알수잇다

--[1단계:확인] 8. 사원번호, 사원명, 직책 급여을 출력하되, 사원명, 직책은 최고 크기를 확인하고, 
--                사원명과 직책은 각각 최고 크기의 기준으로 왼쪽과 오른쪽에 #을 삽입하여 출력하세요.
SELECT empno, length(ename),LPAD(ename,6,'#'),RPAD(ename,6,'#'),LENGTH(job),LPAD(job,9,'#'),RPAD(job,9,'#'), sal
FROM EMP e ;

--[1단계:개념] 9. 숫자형 함수 중에 자리수 처리에 대한 처리를 함수별로 비교를 기술하세요.
SELECT round(24232.2535,3),--지정된 자릿수에서 반올림
	trunc(24232.2535,1),--지정된 자릿수 아래로 버림
	ceil(24232.2535),--소숫점아래로 올린 정수
	floor(24232.2535) FROM dual;--소숫점아래로 내린정수

--[1단계:확인] 10. 근무일수를 2분위로 나누어서(중앙값을 기준)서 보너스를 급여의 150%,200% 차등 지급하기로 했다. 사원명, 입사일, 분류, 보너스금액
--7450일? 
	/*
1) 근무일수확인
2) 근무일수의 중앙값 추출 : 육안 14955
3) 근무일수이 중앙값을 기준점으로 미만과 이상을 구분자로 준다
	이상인지 미만인지 구분: 나눗셈을 통해 1이상이면 중앙값이상, 1미만이면 중앙값미만
4) 위 구분자로 보너스를 150%==>1.5, 200%==>2.0으로 처리되게한다.
 * */
SELECT ename,
	sysdate - hiredate workdte1,
	floor(sysdate - hiredate) workdte2
FROM emp
ORDER BY workdte1;

SELECT
	floor(MEDIAN(sysdate-hiredate)),--중앙값
	floor(AVG(sysdate-hiredate))--평균값
FROM emp;

--
SELECT ename, hiredate, floor(sysdate-hiredate) workdte2, floor((sysdate-HIREDATE)/14955) 구분자
FROM emp;
--
SELECT ename, hiredate, floor(sysdate-hiredate) workdte2, floor((sysdate-HIREDATE)/14955) 구분자,
sal, floor((((sysdate-hiredate)/14955)+3)*0.5), sal*floor((((sysdate-hiredate)/14955)+3)*0.5) "보너스"
FROM emp;


--[1단계:확인] 11. 오늘을 1일을 기준으로 1000일 기념일의 날짜와  걸린 기간을 @@년 @@개월 @@일 형식으로 표기하세요. hint)mod함수 활용
SELECT sysdate, sysdate+1000, trunc(1000/365)||'년 '||(mod(1000, 365))/30||'개월 '||mod(MOD(1000,365),30)||'일' show
FROM dual;

--floor(months_between(sysdate+1001,sysdate)) 월계산
--floor(months_between(sysdate+1001,sysdate)/12) 연계산
--floor(months_between(sysdate+1001,sysdate)) 월계산
--mod(floor(months_between(sysdate+1001,sysdate)),12) 월계산
--mod(1001, floor(months_between(sysdate+1001,sysdate))) 일계산



