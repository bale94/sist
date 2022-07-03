/*
# 정렬처리
1. sql명령문에서 검색된 결과는 테이블에 데이터가 입력된 순서대로 출력한다.
2. 데이터의 출력순서는 특정 컬럼을 기준으로 오름차순/내림차순으로 정렬하는 경우에 활용된다.
3. 여러개의 컬럼에 대해 정렬 순서를 지정해서 정렬할 경우는 다음과 같이 처리한다.
	- 입사일은 오름차순, 급여는 내림차순 : 입사일을 일단 기준으로 오름차순으로 처리하되, 입사일이 같은
	데이터가 있는 경우는 그 다음 정렬기준인 sal을 기준으로 가장 높은것부터 낮은것으로 정렬
	order by hiredate asc, sal desc
4. 기본적인 정렬방법
	- 문자값은 알파벳순으로 출력되고, 한글은 가나다라 순으로 출력된다.
	- 숫자값은 가장 작은 값으로 먼저 출력
	- 날짜는 가장 과거의 날짜로부터 최근의 날짜순으로 출력된다
5. 기본형식
	select *
	from 테이블
	where ...
	group by
	order by 컬럼 [asc/desc]; -> []는 쓸필요없다
	asc : default로, 오름차순 정렬
	desc : 내림차순 정렬
 * 
 * */
SELECT empno, ename, sal
FROM EMP e 
ORDER BY sal;
--ex1) 입사일을 기준으로 최근부터 과거로 정렬처리하여 출력하세요
SELECT * FROM EMP e ORDER BY hiredate DESC ;
--ex2) 직책을 기준으로 A~Z로 정렬, 두번쨰 정렬기준인 sal 오름차순으로 처리
SELECT * FROM emp ORDER BY job, sal;
--ex3) 부서번호 오름차순, 연봉 내림차순으로 정렬
SELECT * FROM emp ORDER BY deptno, sal DESC;


