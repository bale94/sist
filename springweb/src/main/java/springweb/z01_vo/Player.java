package springweb.z01_vo;

public class Player {
	private String pname;
	private String record;
	public Player() {
		// TODO Auto-generated constructor stub
	}
	public Player(String pname, String record) {
		this.pname = pname;
		this.record = record;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getRecord() {
		return record;
	}
	public void setRecord(String record) {
		this.record = record;
	}
	
}
