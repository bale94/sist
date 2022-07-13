package memberDB.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import memberDB.dao.MemberDao;
import memberDB.vo.MemberDB;

@Service
public class MemberService {
	
	@Autowired(required=false)
	private MemberDao dao;
	
	public MemberDB getMemberList() {
		return dao.getMemberList();
	}


}
