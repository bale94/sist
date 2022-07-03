package javaexp.z03_vo;

import java.util.ArrayList;

public class Student {
	private String name;
	private ArrayList<Professor> plist;
	public Student() {
		// TODO Auto-generated constructor stub
		plist = new ArrayList<Professor>();
	}
	public Student(String name) {
		this.name = name;
		plist = new ArrayList<Professor>();
	}
	public void addProf(Professor p) {
		plist.add(p);
	}
	public void showProf() {
		System.out.println("강의정보: ");
		if(plist.size()>0) {
			for(Professor p:plist) {
				p.showInfo();
			}
		}else {
			System.out.println("입력된 정보가 없습니다.");
		}
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<Professor> getPlist() {
		return plist;
	}
	public void setPlist(ArrayList<Professor> plist) {
		this.plist = plist;
	}
	
	
}
