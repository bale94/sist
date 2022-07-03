--[1단계:개념] 1. 형변환 형태의 2가지와 타입에 따른 유형3가지를 기본 예제를 통하여 기술하세요.
--	1) 묵시적 형변환은 oracle서버에서 자동적으로 형변환을 하여 처리하는 방식이다
--	2) 명시적 형변환은 변환함수를 통해서 명시적으로 형변환을 처리하는 방식이다
SELECT ename, hiredate,
	to_char(sysdate, 'YYYY')||TO_CHAR(hiredate,'MMDD') "올해입사",
	to_date(to_char(sysdate, 'YYYY')||TO_CHAR(hiredate,'MMDD'), 'YYYYMMDD') "날짜형변경"
FROM emp;
SELECT *
FROM EMP e 
WHERE sal = TO_NUMBER('800');

--[1단계:확인] 2. 사원 정보 테이블에 입사한 월의 1일을 사원명과 함께 출력하세요
SELECT ename, TO_CHAR(HIREDATE, 'MM')||'월 1일' date1
FROM emp;

--[1단계:개념] 3. to_char(날짜데이터,'옵션') 에서 날짜처리하는 옵션 매개변수에 대하여 기술하세요.
--'YYYY'년, 'MM'월, 'DD'일, 'DAY'요일, 'HH12'1~12시, 'HH24'0~23시, 'MI'분, 'SS'초

--[1단계:확인] 4. 사원의 입사분기별로 보너스를 차등 지급하고자 한다. 열단위로 처리하세요.사원명, 급여, 보너스 %, 보너스
--      (급여의 1/4분기 10%, 2/4분기 20%, 3/4분기 30%, 4/4분기 30%)
SELECT ename, sal, TO_CHAR(hiredate,'Q') "분기", DECODE(TO_CHAR(hiredate,'Q'),1,sal*0.1,2,sal*0.2,3,sal*0.3,4,sal*0.3,0) "보너스" 
FROM EMP e ;

--[1단계:확인] 5. 입사월이 4/4분기에 해당하는 사원의 정보를 +9시간 더하여 다음과 같이 출력하세요
--      사원명, @@@년 @@월 @@일 +9 출근
SELECT ename, TO_CHAR(hiredate,'YYYY')||'년 '||TO_CHAR(hiredate,'MM')||'월 '||TO_CHAR(hiredate,'DD')||'일 '||(TO_CHAR(hiredate,'HH24')+9)||'시 출근' "출근시간"
FROM EMP e 
WHERE TO_CHAR(hiredate, 'Q')= 4; 

--[1단계:확인] 6. [nvl2활용] comm일 null일때는 sal의 15%로 설정하고, null일 아닐 때는 comm에서 sal의 5%를 더하여 보너스금액을
--              설정하여   사원명 연봉 보너스  를 출력하세요.
SELECT ename, sal, NVL2(comm, comm+(sal*0.05), (sal*0.15)) 보너스	--NVL2(param1, param2, param3): param1데이터가 있을때 param3처리, param1데이터가 없을때(null) param2처리 
FROM EMP e ;
SELECT comm FROM emp;

--[1단계:확인] 7. [중첩함수] 사원번호를 기준으로 짝수이면 홍팀, 홀수이면 청팀으로 처리하여 출력하세요
SELECT EMPNO, DECODE(mod(TO_NUMBER(EMPNO),2) ,0,'홍팀',1,'청팀','중립') 팀
FROM emp;



