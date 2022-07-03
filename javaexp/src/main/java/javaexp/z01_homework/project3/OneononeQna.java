package javaexp.z01_homework.project3;

import java.util.*;

public class OneononeQna {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("상담 운영시간\r\n"
				+ "월: 13:00~18:00\r\n"
				+ "화-금: 10:00~18:00\r\n"
				+ "-\r\n"
				+ "점심시간: 11:30~13:00\r\n"
				+ "휴무일: 토, 일, 공휴일\r\n"
				+ "-\r\n"
				+ "1:1 문의 시에는 고운 말, 바른말을\r\n"
				+ "사용해 주시길 바랄게요! 비방, 욕설 시 응대가 중단됩니다.");
		System.out.println("문의사항을 남겨주시면 운영시간 내 확인 후 답변 드리겠습니다.");
		ArrayList<quest> qlist = new ArrayList<quest>();
		qlist.add(new quest(1,"강의 구매가 안돼요","짱구"));
		qlist.add(new quest(2,"결제가 취소되었어요","짱구"));
		qlist.add(new quest(3,"로드맵이 뜨지않아요","짱구"));
		qlist.add(new quest(4,"고객센터를 찾을수 없어요","짱구"));
		for(int idx=0;idx<qlist.size();idx++) {
			qlist.get(idx).whatQuest();
		}
		System.out.println();
		System.out.println("----------------------");
		System.out.println("3번문의에 대한 답변이 도착했습니다.");
		qlist.remove(2);
		System.out.println("----------------------");
		System.out.println("현재 문의현황");
		for(int idx=0;idx<qlist.size();idx++) {
			qlist.get(idx).whatQuest();
		}
	}

}
class quest{
	int num;
	String title;
	String name;
	public quest(int num, String title, String name) {
		this.num = num;
		this.title = title;
		this.name = name;
	}
	void whatQuest() {
		System.out.println("질문번호:"+num+"\n"+" 글 제목: "+title+" / 질문자명: "+name);
	}
}


