package springweb.a02_mvc.a04_vo;

public class Emp2 {
	private String ename;
	private String job;
	private int empno;
	public Emp2() {
		// TODO Auto-generated constructor stub
	}
	public Emp2(String ename, String job, int empno) {
		this.ename = ename;
		this.job = job;
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
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	
}
