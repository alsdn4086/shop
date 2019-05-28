package com.com.service;

import javax.servlet.http.HttpSession;

import com.com.dto.MemberVO;

public interface MemberService {
	public boolean login(MemberVO vo, HttpSession session);
	
	public MemberVO checkMember(MemberVO vo);
	
	public void logout(HttpSession session);
}