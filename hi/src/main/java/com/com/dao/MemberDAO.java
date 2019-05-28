package com.com.dao;

import org.springframework.stereotype.Repository;

import com.com.dto.MemberVO;

@Repository("memberdao")
public class MemberDAO extends AbstractDAO {
	
	public boolean login(MemberVO vo) {
		System.out.println(vo.getUserid());
		String name = (String)selectOne("member.login",vo);
		return (name == null) ? false : true;
	}
	
	public MemberVO checkMember(MemberVO vo) {
		return (MemberVO) selectOne("member.checkMember",vo);
	}
}
