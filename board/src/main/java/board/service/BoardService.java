package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.dao.BoardDao;
import board.vo.Board;

@Service
public class BoardService {
	@Autowired(required=false)
	private BoardDao dao;
	
	public List<Board> boardList(Board sch){
		// 요청값을 넘기고 객체(ArrayList<Board>)를 받는 자리
		return dao.boardList(sch);
	}
	
	public void insertBoard(Board ins) {
		dao.insertBoard(ins);
	}
	public Board getBoardDetail(int no){
		// 조회 카운트업
		dao.readCountup(no);
		
		// 상세내용을 vo로 가져오기
		return dao.getBoardDetail(no);
	}
	public Board updateBoard(Board upt){
		dao.updateBoard(upt);	// 수정과 동시에 상세데이터 수정
		return dao.getBoardDetail(upt.getNo());
	}
	public void deleteBoard(int no) {
		dao.deleteBoard(no);
	}
}
