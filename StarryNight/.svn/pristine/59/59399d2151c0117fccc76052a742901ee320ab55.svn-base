package starryNight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import starryNight.dao.MemberDao;
import starryNight.vo.Member;

@Service
public class MemberService {

	@Autowired
	private MemberDao dao;
	
	public List<Member> schMember(String name){
		return dao.schMember(name);
	}
	public void insertMember(Member ins) {
		dao.insertMember(ins);
	}
	public void deleteMember(String email) {
		dao.deleteMember(email);
	}
}
