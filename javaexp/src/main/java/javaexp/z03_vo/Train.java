package javaexp.z03_vo;

import java.util.ArrayList;

public class Train {
	private int no;
	private ArrayList<Seat> slist;
	public Train() {
		slist = new ArrayList<Seat>();
	}
	public Train(int no) {
		this.no = no;
		slist = new ArrayList<Seat>();
	}
	public void addInfo(Seat s) {
		slist.add(s);
	}
	public void show() {
		System.out.println("열차번호: "+no);
		if(slist.size()>0) {
			for(Seat s:slist) {
				s.showInfo();
			}
		}else {
			System.out.println("정보가 없습니다.");
		}
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public ArrayList<Seat> getSlist() {
		return slist;
	}
	public void setSlist(ArrayList<Seat> slist) {
		this.slist = slist;
	}
	

}
