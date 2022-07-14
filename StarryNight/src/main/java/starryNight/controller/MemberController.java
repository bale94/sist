package starryNight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import starryNight.service.MemberService;
import starryNight.vo.Member;

@Controller
public class MemberController {

	@Autowired(required=false)
	private MemberService service;
	
	// http://localhost:7080/StarryNight/member.do
		@RequestMapping("memberInsertForm.do")
		public String memberInsertForm() {
			return "WEB-INF\\views\\member\\memberInsert.jsp";
		}
		
		@RequestMapping("memberInsert.do")
		public String memberInsert(Member ins, Model d) {
			service.insertMember(ins);
			d.addAttribute("insert", "Y");
			return "WEB-INF\\views\\member\\memberInsert.jsp";
		}
		
		
		@RequestMapping("memberDelete.do")
		public void memberDelete(String email) {
			service.deleteMember(email);
		}
		
		@RequestMapping("schMember.do")
		public String schMember(String name, Model d) {
			d.addAttribute("schMember", service.schMember(name));
			return "WEB-INF\\views\\member\\memberList.jsp";
		}
}
