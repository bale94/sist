package board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
