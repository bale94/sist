package starryNight.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import starryNight.vo.Member;

@Repository
public interface MemberDao {
	public List<Member> getMemberList();
	
	public List<Member> schMember(String name);
	
	public void insertMember(Member ins);
	
	public Member deleteMember(String email);
}
