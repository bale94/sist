package springweb.a02_mvc.a04_vo;

import java.util.Date;

public class Emp {
	// sql결과에 맞게끔 데이터 유형과 속성을 지정한다
	private int empno;
	private String ename;
	private String job;
	private int mgr;
	private Date hiredate;
	private String hiredateS;
	private double sal;
	private double comm;
	private int deptno;
	private boolean pass;
	
	public boolean isPass() {	// boolean에는 get대신 is가 붙는다 -> 프로퍼티값은 pass 그대로
		return pass;
	}

	public void setPass(boolean pass) {
		this.pass = pass;
	}

	public Emp() {
		
	}
	public Emp(String ename, String job, double sal){
		this.ename = ename;
		this.job = job;
		this.sal = sal;
	}
	public Emp(int empno, String ename, String job){
		this.empno = empno;
		this.ename = ename;
		this.job = job;
	}
	public Emp(String ename, int mgr, double sal, int empno){
		this.ename = ename;
		this.mgr = mgr;
		this.sal = sal;
		this.empno = empno;
	}
	
	public Emp(String ename, String job) {
		super();
		this.ename = ename;
		this.job = job;
	}

	public Emp(int empno, String ename, String job, int mgr, 
			String hiredateS, double sal, double comm, 
			int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.job = job;
		this.mgr = mgr;
		this.hiredateS = hiredateS;
		this.sal = sal;
		this.comm = comm;
		this.deptno = deptno;
	}

	public Emp(int empno, String ename, String job, int mgr, Date hiredate, double sal, double comm, int deptno) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.sal = sal;
		this.comm = comm;
		this.deptno = deptno;
	}
	// get프로퍼티명: Empno ==> empno
	// get프로퍼티명: Empno01 ==> empno01
	public int getEmpno01() {
		return empno;
	}
	
	public int getEmpno() {
		return empno;
	}
	// set프로퍼티명
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getMgr() {
		return mgr;
	}
	public void setMgr(int mgr) {
		this.mgr = mgr;
	}
	public Date getHiredate() {
		return hiredate;
	}
	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	public double getComm() {
		return comm;
	}
	public void setComm(double comm) {
		this.comm = comm;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public String getHiredateS() {
		return hiredateS;
	}

	public void setHiredatS(String hiredateS) {
		this.hiredateS = hiredateS;
	}
	

}
