/*
# 날짜 함수
1. 날짜형 데이터
	1/1000 ==> 1초 ==> (60)1분 ==> (60) 1시간 ==> (24)1일 ==> (28,30,31) 1월 ==> (12) 1년
2. 기본 연산
	날짜 + 1 : 해당 날짜의 1일 이후 처리(시간을 포함해서 24시간 이후)
	날짜 - 1 : 해당 날짜의 1일 이전 처리
	날짜 + 1/24 : 해당 날짜의 1시간 이후 처리
	날짜 + 200/24/60 : 해당 시간의 분 단위로 처리 200분 후 시간 처리
	ex) 현재시간이 15:18일때, 9시간 이후 날짜는 내일이 된다. 날짜 + 9/24
	
	월 단위가 28,30,31 경우로 나누어지고 해당 월에 따라서 날짜가 다르기 떄문에 필요한 함수 add_months(날짜, 추가할 월)로 하면
	월단위로 처리가 된다.
	
3. 기본 함수
	1) sysdate : 현재 시간과 날짜는 날짜형으로 나타내는 키워드
 * 
 * */
SELECT sysdate 오늘, sysdate+1 내일, sysdate-1 어제, sysdate+(10/24) "10시간뒤", add_months(sysdate,1) "한달 후" FROM dual;
-- ex) 인턴기간(입사후, 120일)과 입사8시간전, 근무일수를 아래와 같이 출력
--	사원번호 사원명 입사8시간전 입사일 인턴기간 현재근무일수(절삭)
SELECT empno, ename, (hiredate-8/24) "입사8시간전", hiredate 입사일, hiredate+120 인턴기간만료일, floor(sysdate-hiredate) 근무일수
FROM EMP e ;
/*
	2) months_between(날짜1, 날짜2) : 날짜 사이의 개월 수를 표기한다
		5/19, 6/19 => 1개월, 15일 ==> 0.5개월 ...
		- 소숫점 이하의 데이터를 floor로 절삭을 하는 경우가 많다
		ps) 월에따라서 날짜가 다르기 때문에, 정확하게 월 따른 개월 수를 계산해준다.
			2월~3월: 28일을 1로 계산, 3월~4월: 31일을 1로 계산
 * */
SELECT ename, hiredate, MONTHS_BETWEEN(sysdate, hiredate) "근무개월수",
	floor(MONTHS_BETWEEN(sysdate, hiredate)) "근무개월수2",
	FLOOR(MONTHS_BETWEEN(sysdate, hiredate)/12) "근무연한" 
FROM emp;
-- ex1) 오늘로부터 100일 후, 개월수를 출력(dual, 소숫점이하 표기, 절삭하기)
-- ex2) 오늘 1일, 1000일후, 날짜와 개월수
SELECT sysdate, sysdate+100 "100일 후", FLOOR(MONTHS_BETWEEN(sysdate+100, SYSDATE)) 개월수 FROM dual;
SELECT sysdate, sysdate+1, sysdate+1000, MONTHS_BETWEEN(sysdate+1000, sysdate+1) 개월수
FROM dual;
/*
# MONTHS_BETWEEN을 사용할 때 소숫점 이하가 나오는 이유?
1. 1이라는 월단위가 월마다 차이가있고, 날짜는 1단위로 처리되지만 월이 1단위로 처리되어 15일인 경우 0.5처리되고 여기서
	하위 시간 즉 12시간인 경우 0.05 와같이 세분화된 시간적 차이가 있기 때문이다.
2. 이 때 n개월부터 시작하여 정확하게 @@개월, @@개월차 간의 차이가 생긴다.
	@@개월 @@@일인 경우에 @@일 부분을 절삭할때는 floor()함수-내림처리를 사용하고 @@개월째, 즉 해당 개월 이후 아직 마지막 날짜가 남아있지만
	차수로 계산할 때는 ceil()-올림처리을 사용한다.
 * 
 * */

/*
	3) add_months(날짜형데이터, 추가할개월수) : 해당 날짜에 개월을 더한 날짜 계산
 * */
SELECT SYSDATE, ADD_MONTHS(sysdate,4) FROM dual;
-- 사원정보를 통해 부서별로 인턴기간을 다르게 처리한다고 한다.
-- 인턴기간의 만료일 10==>1개월, 20==>2개월 ...
SELECT ename, deptno, hiredate, deptno/10 "인턴기간(개월)", ADD_MONTHS(hiredate, deptno/10)
FROM emp;
/*
	4) next_day : 해당 일을 기준으로 명시된 요일의 다음 날짜를 반환
		형식: next_day(지정한날짜, '요일') : 지정한 날짜로부터 가장 빠른 요일의 날짜
 * */
SELECT next_day(sysdate,'일') "가장빠른다음일요일"
FROM dual;
-- ex) @@월 @@째 수요일 등을 미국에서 쓰이는 공휴일 처리방식인, 한국의 선거일의 경우 임기종료 @@주째 전 수요일같이 날짜를
--		요일에 대해 계산할 때 사용된다.
--	앞으로 다가올 두번째 수요일 next_date(next_day(sysdate, '수'),'수')로 중첩함수를 사용해야한다.


-- 5) last_day : 해당 날짜에 속한 달의 마지막 날짜
SELECT LAST_DAY(sysdate) "이번달말일"
FROM dual;
--ex1) 사원들의 입사하고 첫 토요일에 여행을 가기로햇다 사원명, 입사일, 첫토요일
SELECT ename, hiredate, next_day(hiredate, '토')
FROM emp;
--ex2) 사원의 첫 급여일이 다음달 첫날로 지정하였다. 급여일과 입사월의 근무일수를 출력
SELECT LAST_DAY(hiredate)+1 첫급여일, CEIL(LAST_DAY(hiredate)-hiredate+1) 근무일수
FROM emp;
/*
ex) 사원이 입사한 월의 두번째 수요일
add_months(), last_day(), next_day()의 중첩으로표현가능
 * 
 * */

/*
# 날짜 데이터의 round, trunc 함수
1. 함수를 적용해서, 날짜 계산은 소숫점이하 나타날때가 많다
	1일 ==> 현재시간함께 계산되기에 정확하게 안되는 경우가 있다.
	5/22 0시기준 ==> 현재시간 sysdate로 처리한 시간도 포함되기때문에
		ceil()올림이나 floor()내림처리 하지않으면 소숫점이하의 시간내용도 포함되게 된다.
	add_months
	months_between : 월이 1이 되기에 15일 0.5	12시간 0.55 등으로 기준되는 단위에서 소숫점이하로 처리되는 경우가 많다.
 * */







