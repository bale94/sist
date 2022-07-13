package memberDB.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import memberDB.service.MemberService;
import memberDB.vo.MemberDB;

@Controller
public class MemberController {
	
	@Autowired(required = false)
	private MemberService service;
	// http://localhost:7080/StarryNight/Join.do
	@RequestMapping("Join.do")
	public String memberList(Model d) {
		d.addAttribute("Join", service.getMemberList());
		return "WEB-INF\\views\\Join\\Join.jsp";
	}
}
