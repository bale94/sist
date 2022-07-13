package springweb.a02_mvc.a03_dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import springweb.a02_mvc.a04_vo.Dept;
import springweb.a02_mvc.a04_vo.DeptEmp01;
import springweb.a02_mvc.a04_vo.DeptMsal;
import springweb.a02_mvc.a04_vo.Emp;
import springweb.a02_mvc.a04_vo.EmpQ;
import springweb.a02_mvc.a04_vo.JobAvg;
import springweb.a02_mvc.a04_vo.Salgrade;

@Repository
public interface DaoExp01 {
	
	public int getEmpCount();
	public double getEmpSal();
	public double getSalSum();
	public String getEmpJob01();
	public boolean hasEmp();
	public DeptEmp01 getDeptEmp();
	public Salgrade getSalgrade();
	
	public List<String> getEnames();
	public List<Integer> getEmpnos();
	public List<Double> getSalaries();
	
	public List<String> getJobs();
	public List<Emp> getEmpList30();
	
	public List<EmpQ> getEmpList();
	public List<JobAvg> getJobAvg();
	public Emp getDetail(int empno);
	public void deleteEmp(String job);
	
	public List<Emp> getEmpJob(String job);
	public void deleteHiredate(String Q);
	public DeptMsal getDeptMaxSal(int deptno);
	
	public List<Emp> schEmpList02(Emp sch);
	public void insertEmp02(Emp ins);
	public void updateEmp02(Emp upt);
	
	public void insertDept(Dept ins);
	public List<Emp> getEmpList2(Map<String, String> map);
	public List<Dept> getDeptList2(Map<String, String> map);
}
/*
select sal
from emp
where empno=7369

select sum(sal)
from emp
where deptno=10

select job
from emp
where empno=7499

select count(*)
from emp
where empno=7369

select dname, ename, sal, loc	==> 조회되는 단일 vo 생성
from emp e, dept d
where e.deptno = d.deptno
and empno=7369
..
class DeptEmp01
	private String dname;
	private String ename;
	private double sal;
	private String loc;
 * */