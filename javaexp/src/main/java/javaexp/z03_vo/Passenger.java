package javaexp.z03_vo;

import java.util.ArrayList;

public class Passenger {
	private String name;
	private ArrayList<Bus01> blist;

	public Passenger() {
		// TODO Auto-generated constructor stub
		blist = new ArrayList<Bus01>();
	}
	public Passenger(String name) {
		this.name = name;
		blist = new ArrayList<Bus01>();
	}
	
	public void addPass(Bus01 b) {
		blist.add(b);
	}
	
	public void showPass() {
		System.out.println("타는사람이름: "+name);
		if(blist.size()>0) {
			for(Bus01 b:blist) {
				b.showInfo();
			}
		}else {
			System.out.println("등록된 정보가 없습니다.");
		}
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<Bus01> getBlist() {
		return blist;
	}
	public void setBlist(ArrayList<Bus01> blist) {
		this.blist = blist;
	}
	

}
