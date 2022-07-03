/*
# 데이터의 타입변환
1. oracle에서는 크게 문자열형, 숫자형, 날짜형으로 나누어진다
2. 각 데이터는 유형에 따라서 변환이 일어난다
	문자열 ==> 숫자, 숫자 ==> 문자열
	숫자 ==> 날짜, 날짜 ==> 숫자
	날짜 ==> 문자열, 문자열 ==> 날짜
3. 형변환의 유형
	1) 묵시적 형변환 : oracle서버에서 자동적으로 형변환을 하여 처리
	2) 명시적 형변환 : 변환함수를 통해서 명시적으로 형변환을 처리한다
	
	
# 묵시적 형변환
1. 묵시적인 데이터 타입 변환은 정확한 연산을 위하여 오라클서버 시스템 내부에서 타입을 내부적으로 변환하여 처리해주는 경우를 말한다
 * 
 * */
--문자열을 묵시적으로 숫자로 변환하여 
SELECT * FROM emp
WHERE sal = '800';
-- 명시적 형변환인 to_number()함수를 통해서 처리한다.
SELECT *
FROM EMP e 
WHERE sal = TO_NUMBER('800');
-- 날짜의 묵시적 형벼환
SELECT ename, hiredate
FROM EMP e 
WHERE hiredate LIKE '%81%';
-- 묵시적으로 hiredate는 to_char()가 적용된 내용으로 비교한다.
--		[※주의] 1981형태의 데이터는 기본 묵시형변환에 포함되어 있지 않으므로
--		to_char(hiredate,'YYYY')로 설정하여 비교하여야 한다.
SELECT ename, hiredate, TO_CHAR(hiredate)
FROM EMP e 
WHERE TO_CHAR(hiredate) LIKE '81%'; 
/*
# 명시적 데이터 변환
1. 사용자가 데이터 타입 변환 함수를 이용하여 명시적으로 데이터 타입을 변환처리하는것을 말한다
2. 명시적 데이터 타입 변환 함수
	1) to_char() : 숫자/날짜 데이터를 문자형으로 변환
	2) to_number() : 문자열데이터를 숫자형으로 변환
	3) to_date() : 문자열데이터를 날짜형으로 변환
 * */
-- # to_char함수
--	to_char(number|date타입, 'format')
--	1) 날짜형 데이터의 문자열 format처리
SELECT sysdate,
	to_char(sysdate, 'CC'),	-- 세기 표기
	TO_CHAR(sysdate, 'YYYY'),	-- 연도 표기 'YY'로도 가능
	TO_CHAR(sysdate, 'MM'), 	-- 월 표기
	TO_CHAR(sysdate, 'DD'), 	-- 일 표기
	to_char(sysdate, 'YYYY/MM/DD')	-- 현재날짜를 YYYY/DD/MM 표기
FROM dual;
-- ex) to_char 활용하여 1980에 입사한 사원의 이름, 입사년도, 입사월, 입사일을 출력하세요
SELECT ename, hiredate, TO_CHAR(hiredate, 'YYYY') "입사년도", TO_CHAR(hiredate, 'MM') "입사월", TO_CHAR(hiredate, 'DD') "입사일"
FROM EMP e 
WHERE TO_CHAR(hiredate, 'YYYY') LIKE '1980'; 
/*
	2) 기타날짜 관련 함수 매개변수 형식
		to_char(날짜형데이터, 형식)
		'Q' : 분기, 'MM' : 월, 'MONTH' : 월 영문, 'WW' : 연단위 주 표기 ( @@@년도 @@@째주 ), 'W' : 월단위 주 표기( @@@월의 @@@째주 ),
		'DD' : 일 표기, 'DY'|'DAY' : 요일표기
 * */
SELECT ename, hiredate,
	TO_CHAR(hiredate, 'Q') "분기",
	TO_CHAR(hiredate, 'MONTH') "월",
	TO_CHAR(hiredate, 'WW') "연단위(주)",
	TO_CHAR(hiredate, 'W') "월단위(주)",
	TO_CHAR(hiredate, 'DAY') "요일"
FROM emp;
--ex) 1981년도 1/4분기에 입사한 사원의 이름, 입사년도, 월단위 주, 월, 날짜를 표기
SELECT ename, TO_CHAR(hiredate, 'YYYY') "입사년도", TO_CHAR(hiredate, 'W') "월단위(주)", TO_CHAR(hiredate, 'MONTH') "월",
	hiredate
FROM EMP e 
WHERE  TO_CHAR(hiredate, 'YYYY')LIKE '1981' AND  TO_CHAR(hiredate, 'Q')='1'; 
-- 3) to_char(숫자형, '출력형식')
--		숫자형 데이터를 지정한 출력형식으로 문자열 출력
--		- 출력 형식 : $9999(달러형표기), 9999.99(소숫점 두자리), '9,999,999' 해당 자리수 안에서 첫단위 ,(콤마)표시
--					00000 경우 자릿수를 채우고 나머지는 0으로 표기
--					99999 경우 지정된 자리수보다 커지는 경우 ###으로 표기
SELECT ename, sal, TO_CHAR(sal, '$9999') "달러표기",
	TO_CHAR(sal,'9999.99') "소숫점 표기", 
	TO_CHAR(sal,'9,999,999') "첫단위 콤마"
FROM emp;
--ex) 사원명, 급여, 급여+보너스(천단위 콤마표기) 총계로 출력
SELECT ename, sal, TO_CHAR(sal+nvl(comm,0), '9,999,999') "총계"
FROM emp;
/*
	4) to_number
		- 숫자 형태의 문자열로 구성된 데이터를 숫자로 변환처리
		- 형식
			to_number('숫자형태문자열')
		ps) 프로그래밍에서 입력되는 데이터는 문자열이기 때문에, 숫자형의 데이터는 형변환 함수를 통해서 처리하는 경우가 많다
		
 * */
-- 문자열로 '2000'인 데이터를 이용하여 2000이상인 급여 데이터를 조회 처리
SELECT * FROM emp WHERE sal >= TO_NUMBER('2000');
-- 입사일이 3분기, 4분기 데이터를 검색하고자 한다
SELECT ename, hiredate, TO_CHAR(hiredate, 'Q') "분기", TO_NUMBER(TO_CHAR(hiredate, 'Q')) "분기(숫자)"
FROM EMP e 
WHERE TO_NUMBER(TO_CHAR(hiredate, 'Q'))>=3;
-- ps) 위 같은 경우도 자동형변환에 의해 처리를 할 수 있지만, 가능한한 함수를 정확하게 처리하자

-- ex) 입사일이 15일 이후인 사원들을 출력하세요
SELECT *
FROM EMP e 
WHERE TO_NUMBER(TO_CHAR(hiredate, 'DD'))>=15; 
/*
# 중첩함수
1. 가장 내부에 있는 함수 F1의 결과값을 다음 함수 F2에 인수로 적용하고, 다시 F2의 결과값을 F3의 인수로 사용할 때,
	F1,F2,F3라는 함수를 중첩 사용한다고 한다.
	기본형식 : F3(F2(F1(데이터/컬럼, arg1),arg2),arg3)
 * */
-- 입사년도 1981 ==> 올해연도로 변경하여 데이터를 출력
SELECT TO_CHAR(sysdate, 'YYYY') "올해연도"
FROM dual;
SELECT ename, hiredate,
	to_char(sysdate, 'YYYY')||TO_CHAR(hiredate,'MMDD') "올해입사",
	to_date(to_char(sysdate, 'YYYY')||TO_CHAR(hiredate,'MMDD'), 'YYYYMMDD') "날짜형변경"
FROM emp;




