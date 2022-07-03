package javaexp.z03_vo;

public class Professor {
	private String subject;
	private int rnumber;
	public Professor() {
		// TODO Auto-generated constructor stub
	}
	public Professor(String subject, int rnumber) {
		this.subject = subject;
		this.rnumber = rnumber;
	}
	
	public void showInfo() {
		System.out.println("과목명: "+subject);
		System.out.println("강의실번호: "+rnumber);
	}
	
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getRnumber() {
		return rnumber;
	}
	public void setRnumber(int rnumber) {
		this.rnumber = rnumber;
	}
	

}
