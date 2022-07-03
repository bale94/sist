package javaexp.z03_vo;

import java.util.ArrayList;

public class BTeam {
	private String name;
	private ArrayList<BPlayer> bplist;
	public BTeam() {
		bplist = new ArrayList<BPlayer>();
	}
	public BTeam(String name) {
		this.name = name;
		bplist = new ArrayList<BPlayer>();
	}
	//구성원 한명씩 추가
	public void addPlayer(BPlayer bp) {
		bplist.add(bp);//동적배열.add(객체) : 객체가 추가 처리
	}
	public void showTeamList() {
		System.out.println(name+"등록명단");
		if(bplist.size()>0) {//크기가 0초과 확인(1이상)
			for(BPlayer bp:bplist) {
				bp.show();
			}
		}else {
			System.out.println("등록된 선수가 없습니다.");
		}
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<BPlayer> getBplist() {
		return bplist;
	}

	public void setBplist(ArrayList<BPlayer> bplist) {
		this.bplist = bplist;
	}
	

	

}
