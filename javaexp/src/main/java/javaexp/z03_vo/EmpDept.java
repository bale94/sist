package javaexp.z03_vo;

public class EmpDept {

	//dname, empno, ename, sal
	private String dname;
	private int empno;
	private String ename;
	private double sal;
	public EmpDept() {
		// TODO Auto-generated constructor stub
	}
	public EmpDept(String dname, int empno, String ename, double sal) {
		super();
		this.dname = dname;
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	
}
