package com.yedam.member.service;

import java.util.List;

import com.yedam.member.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> memberList();
	public MemberVO login(String id, String pw);
	public boolean addMember(MemberVO vo);
}
