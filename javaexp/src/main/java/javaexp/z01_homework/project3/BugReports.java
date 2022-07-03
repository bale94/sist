package javaexp.z01_homework.project3;

import java.util.*;

import javaexp.proj_class.proj3.*;

public class BugReports {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("인프런에 버그가 있다니!\r\n"
				+ "발생한 상황을 아래 양식을 참고하여 최대한 상세히 설명해주세요.\n"
				+ "스크린샷을 함께 올려주시면, 보다 정확한 원인 파악이 가능합니다.\r\n"
				+ "[양식]\r\n"
				+ "- 사용한 브라우저\r\n"
				+ "- 접속 중인 환경 (PC/모바일)\r\n"
				+ "- 문제 상황");
		System.out.println("# # # # # # # # # # # # # # # # #");
		Reports rp = new Reports("회원");
		rp.addQuest(new Background("크롬", "PC", "화면이 멈춰서 안움직임\n"));
		rp.addQuest(new Background("익스플로러", "PC", "로그인이 안됨\n"));
		rp.addQuest(new Background("크롬", "모바일", "결제오류 메세지가 반복적으로 뜸\n"));
		rp.showQuestList();
	}
}
