/*
[1단계:확인] 5. 아래의 형식으로 컬럼간의 연산과 연결처리를 하여 alias로 출력하세요.
            1) @@님의 사원번호는 @@이고, 올해 연말보너스는 연봉의 20%인 @@원입니다.  @@님(ename)
            2) @@님의 입사일은 @@이고, 현재 연봉의 1/13인 월급여는 @@만원.   입사일 @@(hiredate)
            3) @@님의 이번달 보너스는 연봉(sal)의 deptno%기준으로  @@@만원 지급합니다. 

 * */
SELECT ename||'님의 사원번호는 '||empno||'이고, 올해 연말보너스는 연봉의 20%인 '||sal*0.2||'만원입니다.' show
FROM emp;
SELECT ename||'님의 입사일은 '||hiredate||'이고, 현재 연봉의 1/13인 월급여는 '||round(sal/13)||'만원.' show
FROM emp;
SELECT ename||'님의 이번달 보너스는 연봉('||sal||'만원)의 '||deptno||'%기준으로 '||round(sal*(deptno/100))||'만원 지급합니다.' show
FROM emp;