package edu.multi.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
//	@Qualifier
	SqlSession session;
	
	public int idCheck(MemberVO member) {
		return session.selectOne("idcheck", member);
	}
	
	public int insertMember(MemberVO member) {
		return session.insert("newmember", member);
	}
	
	public int cntMember() {
		return session.selectOne("cntmember");
	}
	
	public MemberVO selectMember(MemberVO member) {
		return session.selectOne("getmember", member);
	}
	
}
