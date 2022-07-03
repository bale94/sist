package javaexp.z03_vo;

public class Seat {
	private int snum;
	private String side;
	public Seat() {
		// TODO Auto-generated constructor stub
	}
	public Seat(int snum, String side) {
		this.snum = snum;
		this.side = side;
	}
	public void showInfo() {
		System.out.println("좌석번호: "+snum);
		System.out.println("창측내측: "+side);
	}
	
	
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSide() {
		return side;
	}
	public void setSide(String side) {
		this.side = side;
	}
	

}
