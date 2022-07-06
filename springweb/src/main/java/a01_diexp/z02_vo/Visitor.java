package a01_diexp.z02_vo;

public class Visitor {
	private String name;
	private String gender;
	public Visitor() {
		// TODO Auto-generated constructor stub
	}
	public Visitor(String name, String gender) {
		this.name = name;
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
