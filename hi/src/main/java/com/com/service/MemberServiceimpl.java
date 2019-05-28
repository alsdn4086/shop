package com.com.service;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Repository;

import com.com.dao.MemberDAO;
import com.com.dto.MemberVO;

@Repository("selectservice")
public class MemberServiceimpl implements MemberService {

	@Resource(name="memberdao")
	MemberDAO memberdao;

	@Override
	public boolean login(MemberVO vo, HttpSession session) {
		boolean result = memberdao.login(vo);
		if (result == true) {
			MemberVO vo2 = checkMember(vo);
			session.setAttribute("id", vo2.getUserid());
			session.setAttribute("name", vo2.getUsername());
		}
		return result;
	}

	@Override
	public MemberVO checkMember(MemberVO vo) {
		return memberdao.checkMember(vo);
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
}
