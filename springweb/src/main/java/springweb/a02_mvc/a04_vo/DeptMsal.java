package springweb.a02_mvc.a04_vo;

public class DeptMsal {
	private int deptno;
	private double msal;
	public DeptMsal() {
		// TODO Auto-generated constructor stub
	}
	public DeptMsal(int deptno, double msal) {
		this.deptno = deptno;
		this.msal = msal;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public double getMsal() {
		return msal;
	}
	public void setMsal(double msal) {
		this.msal = msal;
	}
	
}
