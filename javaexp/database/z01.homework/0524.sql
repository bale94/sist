--[1단계:개념] 1. natural join의 기능을 기술하고, 일반 equi 조인과의 차이점을 기술하세요.
-- 테이블의 모든 컬럼을 대상으로 공통컬럼을 조사 후 내부적으로 조인문을 생성한다.
-- 일반 join문과는 달리 where절을 사용하지않는다

--[1단계:개념] 2. not equi join이란 무엇인가 기본예제를 통해서 설명하세요.
SELECT *
FROM salgrade;
SELECT ename, sal, grade
FROM EMP e , SALGRADE s 
WHERE sal BETWEEN losal AND hisal;
--위와같이 범위를 지정하여 조인하는것을 말한다.

--[1단계:확인] 3. 사원번호를 기준으로 4개의 임의 범위를 정하여 복사테이블을 만들어 저장하고(salgrade를 복사한 복사테이블(part)),
--            사원번호를 통한 출장소 지정 1분위 : 서울 2분위 : 부산 3분위 : 제주  4분위 : LA 처리하여 테이블의 데이터를 수정하고, 
--            no equi join 처리하세요.
--            grade hisal rsal ==> loc hiempno rempno
--                                 서울 7001     7500
--                                 부산 7501     7600
--                                 ..
CREATE TABLE part
AS SELECT * FROM SALGRADE s ;
SELECT * FROM part;
SELECT empno, grade
FROM EMP e , PART p 
WHERE empno BETWEEN losal AND hisal;
-- ''||grade 이런식으로쓰면 데이터가 문자열로 바뀐다
SELECT min(empno) 최소, (min(empno)+round(median(empno)))/2 "1분위",
	round(median(empno)) 중앙, (round(median(empno))+max(empno))/2 "3분위",
	max(empno) 최대
FROM emp;
SELECT ename, empno, grade
FROM EMP e , PART p 
WHERE e.empno BETWEEN losal AND hisal;

--[1단계:개념] 4. outer join이란 무엇인가? 기본예제를 통하여 개념을 설명하세요.
--null값은 원래 join시 null값이 포함된 행은 리턴되지않는데 null값이 있더라도 리턴받고싶을때 사용하는것이 outer join이다.
SELECT dname, count(*) 인원
FROM emp e, DEPT d 
WHERE e.DEPTNO(+) =d.DEPTNO 
GROUP BY dname;	-- deptno 40번은 중복되지않아 null값인것인데, 이 때 e.deptno에 (+)를 추가함으로서 OUTER join하여 null이포함된 부분도
-- 리턴받아서볼수있다.

--[1단계:확인] 5. emp_cp100에 부서정보를 할당하지 않고, 신규 사원정보를 추가한 후, emp_cp100기준으로 부서정보와
--            outer조인된 데이터를 출력하세요.
SELECT * FROM EMP_CP100 ec , DEPT d 
WHERE ec.DEPTNO(+) = d.DEPTNO ;

--[1단계:개념] 6. self join에 대하여 기본예제로 기술하세요.
-- 테이블 내에서 조인할때 사용한다.
SELECT e.empno, e.ename, e.mgr, m.empno, m.ename
FROM emp e, emp m
WHERE e.mgr = m.empno;

--[1단계:개념] 7. subquery란 무엇인가 기본예제와 함께 개념을 설명하세요.
-- sql문의 결과를 다른sql문에 전달하기위해 두개이상의 sql문을 하나로 묶어 결과를 내는 방식
SELECT *
FROM emp
WHERE sal = (
	SELECT max(SAL)
	FROM emp	
); -- 최고급여를 받는사람과 같은급여를 받는 사원정보 조회

--[1단계:확인] 8. 관리자가 'MANAGER'인 사원의 최저 급여보다 적은 사원들 출력하세요.
SELECT *
FROM EMP e 
WHERE sal<(SELECT min(SAL)
	FROM EMP e WHERE mgr='7839'
);
--*********
SELECT * FROM emp;
SELECT *
FROM emp e
WHERE sal<(SELECT min(e.sal)
	FROM emp e
	WHERE mgr IN (SELECT empno FROM EMP WHERE job = 'MANAGER')
);
--**********
--select min(e.sal)
--from emp e, emp m
--where e.mgr=m.empno and m.empno='MANAGER'
--**********

--[1단계:확인] 9. emp, salgrade테이블과 조인하여, 등급이 1~2등급인 사원의 최고 급여보다 많은 사원을 출력하세요.
SELECT * FROM SALGRADE s ;
SELECT sal FROM emp;

SELECT *
FROM EMP e
WHERE sal > (
	SELECT max(SAL)
	FROM EMP e join SALGRADE s ON sal BETWEEN losal AND hisal
	WHERE grade IN ('1','2')
);

--grade<=2 도되지않을까 하는 생각


