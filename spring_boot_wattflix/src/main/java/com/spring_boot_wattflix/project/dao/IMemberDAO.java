package com.spring_boot_wattflix.project.dao;

import java.util.HashMap;

import com.spring_boot_wattflix.project.model.MemberVO;

public interface IMemberDAO {
	// 회원가입
	public void insertMember(MemberVO memVo);

	String memIdCheck(String memId);

	// 로그인
	String loginCheck(HashMap<String, Object> map);

	// 회원소개/정보 수정

	// 회원 탈퇴
	public void deleteMember(String memId);
	
	// 회원소개/정보 수정
	public void memberUpdate(MemberVO memVo);
}