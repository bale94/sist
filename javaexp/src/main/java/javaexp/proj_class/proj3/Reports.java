package javaexp.proj_class.proj3;

import java.util.ArrayList;

public class Reports {
	private String ID;
	private ArrayList<Background> bglist;
	public Reports(){
		bglist = new ArrayList<Background>();
	}
	public Reports(String ID) {
		this.ID = ID;
		bglist = new ArrayList<Background>();
	}
	public void addQuest(Background bg) {
		bglist.add(bg);
	}
	public void showQuestList() {
		System.out.println(ID+"의 제보명단");
		if(bglist.size()>0) {
			for(Background bg:bglist) {
				bg.show();
			}
		}else {
			System.out.println("등록된 질문이 없습니다.");
		}
	}

	
	public String getID() {
		return ID;
	}
	public void setID(String ID) {
		this.ID = ID;
	}
	public ArrayList<Background> getBglist() {
		return bglist;
	}
	public void setBglist(ArrayList<Background> bglist) {
		this.bglist = bglist;
	}
	
}
