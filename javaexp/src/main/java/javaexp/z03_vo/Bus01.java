package javaexp.z03_vo;

public class Bus01 {
	public String number;
	public String loc;
	public Bus01() {
		// TODO Auto-generated constructor stub
	}
	
	public Bus01(String number, String loc) {
		this.number = number;
		this.loc = loc;
	}
	public void showInfo() {
		System.out.println("버스번호: "+number);
		System.out.println("목적지: "+loc);
	}
	
	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
	
}
