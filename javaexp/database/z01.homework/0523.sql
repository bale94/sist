--[1단계:개념] 1. case when의 2가지 기본형식을 정리하고 예제를 통해서 비교하세요.
/*
CASE WHEN 논리/관계식 THEN 처리할데이터
	WHEN 논리/관계식 THEN 처리할데이터
	..
	ELSE 위의 논리/관계식 아닐떄 처리할 데이터
END
CASE 컬럼|데이터
	WHEN 컬럼에 데이터1일때 THEN 처리할데이터
	WHEN 컬럼에 데이터2일때 THEN 처리할데이터
	..
	ELSE 위에 WHEN에 나열된 데이터가 아닐때 처리할 데이터
END
 * */
SELECT ename, sal,
	CASE WHEN sal>=5000 THEN 'A'
		 WHEN sal>=4000	THEN 'B'
		 WHEN sal>=3000 THEN 'C'
		 ELSE 'F'
	END show
FROM EMP e ;
SELECT ename, deptno,
	CASE deptno WHEN 10 THEN sal*0.2
				WHEN 20 THEN sal*0.5
				WHEN 30 THEN sal*0.7
				ELSE sal*1.2
	END show
FROM emp;

--[1단계:확인] 2. 입사월을 3가지 분류를 나누어 보너스금액을 10%, 20%, 30%로 정하여 출력하세요.
SELECT TO_NUMBER(to_char(hiredate, 'MM')) 입사월, comm 보너스, nvl(comm,0),
	CASE WHEN TO_NUMBER(to_char(hiredate, 'MM'))<=4 THEN comm*1.1
		WHEN TO_NUMBER(to_char(hiredate, 'MM'))<=8 THEN comm*1.2
		ELSE comm*1.3
	END
FROM emp;

--[1단계:확인] 3. case when 2번째 형식(복합함수)으로 상반기/하반기 입사자로 구분하여 출력하세요.
SELECT hiredate,
	CASE WHEN TO_NUMBER(to_char(hiredate, 'MM'))<=6 THEN '상반기입사'
		 ELSE '하반기입사'
	END
FROM EMP e ;

SELECT hiredate, TO_CHAR(hiredate,'MM'),
				TO_NUMBER(TO_CHAR(hiredate,'MM'))/6 div1,
				CEIL(TO_NUMBER(TO_CHAR(hiredate,'MM'))/6) div2,
				CASE ceil((TO_NUMBER(TO_CHAR(hiredate,'MM'))/6))
					WHEN 1 THEN '상반기'
					WHEN 2 THEN '하반기'
					ELSE '데이터없음'
				END "상하반기"
FROM emp;

--[1단계:개념] 4. 그룹함수의 개념과 기본형식을 기본예제를 통해서 설명하세요.
-- 테이블의 전체 행을 하나이상의 컬럼을 기준으로 그룹화하여 그룹별로 결과를 출력하는 함수
SELECT job, count(job), round(avg(sal),1)
FROM EMP e 
GROUP BY job;

--[1단계:확인] 5. 분기별, 입사 사원수의 수가 2이상인 분기(1~4분기)와, 해당분기의 최고 급여를 출력하세요.
SELECT TO_CHAR(hiredate,'Q') 입사분기, max(sal)
FROM EMP e
GROUP BY TO_CHAR(hiredate,'Q')
HAVING COUNT(TO_CHAR(hiredate,'Q'))>=2; 

--[1단계:확인] 6. 급여를 5000이상부터 시작하여 천단위로 등급을 나누고, 등급별 인원수와 평균 급여를 출력하세요.
SELECT avg(sal),
	CASE WHEN sal>=5000 THEN 'A등급'
		WHEN sal>=4000 THEN 'B등급'
		WHEN sal>=3000 THEN 'C등급'
		WHEN sal>=2000 THEN 'D등급'
		ELSE '2000미만'
	END 급여등급
FROM emp e
GROUP BY CASE WHEN sal>=5000 THEN 'A등급'
		WHEN sal>=4000 THEN 'B등급'
		WHEN sal>=3000 THEN 'C등급'
		WHEN sal>=2000 THEN 'D등급'
		ELSE '2000미만'
	END; --등급별인원수 어떻게해야될까.. --> group을 저 조건으로 했어야했다! sal이 아니라!

	--답안
SELECT CASE WHEN sal>=5000 THEN 'A'
			WHEN sal>=4000 THEN 'B'
			WHEN sal>=3000 THEN 'C'
			WHEN sal>=2000 THEN 'D'
			WHEN sal>=1000 THEN 'F'
			ELSE '등급무'
		END 등급,
		count(SAL), round(avg(sal))
FROM EMP e 
GROUP BY CASE WHEN sal>=5000 THEN 'A'
			WHEN sal>=4000 THEN 'B'
			WHEN sal>=3000 THEN 'C'
			WHEN sal>=2000 THEN 'D'
			WHEN sal>=1000 THEN 'F'
			ELSE '등급무'
		END;

--다른방법
SELECT
		CASE floor(sal/1000)
			WHEN 5 THEN 'A'
			WHEN 4 THEN 'B'
			WHEN 3 THEN 'C'
			WHEN 2 THEN 'D'
			WHEN 1 THEN 'F'
			ELSE '등급무'
		END 등급,
		count(sal), round(avg(sal))
FROM EMP e 
GROUP BY floor(sal/1000)
ORDER BY 등급; --이게 제일 깔끔하다. 이런식으로 해보려고 노력해보자
--floor를 통해서 1~5까지 그룹별로 처리하기때문에 위에 case문의 등급을 입력하지 않아도 된다.

--[1단계:개념] 7. 조인이란 무엇인가? 기본 예제를 통하여 기술하세요
--하나의 sql명령문에 의해 여러 테이블에 저장된 데이터를 한번에 조회할 수 있는 기능
SELECT e.*, DNAME , LOC
FROM EMP e , DEPT d 
WHERE e.deptno=d.deptno AND ename='ALLEN';

--[1단계:확인] 8. [조인]연봉이 1000~2000사이의 사원의 부서명을 출력하세요.
SELECT ename, dname
FROM EMP e , DEPT d 
WHERE e.deptno=d.deptno AND (e.sal>=1000 AND e.sal<2000);

--[1단계:확인] 9. 부서위치(loc)별 평균 연봉을 출력하세요.
SELECT loc, round(avg(sal),1)
FROM DEPT d , EMP e
WHERE e.deptno=d.deptno
GROUP BY loc;
--join한 전체테이블에서 그룹처리할 컬럼을 지정해서 출력처리
SELECT e.*, dname, LOC
FROM EMP e , DEPT d 
WHERE e.DEPTNO = d.DEPTNO ;




