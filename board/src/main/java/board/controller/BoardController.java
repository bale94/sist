package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import board.service.BoardService;
import board.vo.Board;

@Controller
public class BoardController {
	@Autowired(required=false)
	private BoardService service;
	
	// http://localhost:7080/board/boardList.do
	@RequestMapping("boardList.do")
	public String boardList(Board sch, Model d) {
		// Board sch: 요청값을 받아서 service단에 전달
		
		//Service에서 받아온 ArrayList<Board> 객체를 blist라는 모델명으로 view단에 넘길준비를 하는 부분
		d.addAttribute("blist", service.boardList(sch));
		
		return "WEB-INF\\views\\a01_boardList.jsp";
	}
	@RequestMapping("boardInsertForm.do")
	public String boardInsertForm(){
		return "WEB-INF\\views\\a02_boardInsert.jsp";
	}
	@RequestMapping("boardInsert.do")
	public String boardInsert(Board ins, Model d){
		service.insertBoard(ins);
		d.addAttribute("insert", "Y");
	
		return "WEB-INF\\views\\a02_boardInsert.jsp";
	}
	@RequestMapping("boardDetail.do")
	public String boardDetail(@RequestParam("no") int no, Model d){
		d.addAttribute("board", service.getBoardDetail(no));
		return "WEB-INF\\views\\a04_boardDetail2.jsp";
	}
	@RequestMapping("updateBoard.do")
	public String updateBoard(Board upt, Model d) {
		System.out.println("수정:"+upt.getSubject());
		d.addAttribute("board", service.updateBoard(upt));
		d.addAttribute("proc", "upt");
		return "WEB-INF\\views\\a04_boardDetail2.jsp";
	}
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(@RequestParam("no") int no, Model d) {
		System.out.println("삭제:"+no);
		service.deleteBoard(no);
		d.addAttribute("proc", "del");
		return "WEB-INF\\views\\a04_boardDetail2.jsp";
	}
	
}
