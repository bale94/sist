package javaexp.z03_vo;

public class BPlayer {
	public int number;
	public String name;
	public String birth;
	public BPlayer() {
		// TODO Auto-generated constructor stub
	}
	public BPlayer(int number, String name, String birth) {
		this.number = number;
		this.name = name;
		this.birth = birth;
	}
	public void show() {
		System.out.print("등번호: "+number+"\t");
		System.out.print("이름: "+name+"\t");
		System.out.println("생년월일: "+birth);
	}
	
	@Override
	public String toString() {
		return "BPlayer [number=" + number + ", name=" + name + ", birth=" + birth + "]";
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	

}
