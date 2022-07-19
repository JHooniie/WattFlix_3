package com.spring_boot_wattflix.project.service;

import java.util.HashMap;

import com.spring_boot_wattflix.project.model.MemberVO;

public interface IMemberService {
	// 회원가입
	public void signUp (MemberVO mem);
	String memIdCheck (String memId);
	
	// 로그인
	String loginCheck(HashMap<String, Object> map);
	
	// 회원소개/정보 수정
	
	
	// 회원 탈퇴
	public void dropMember (String memNo);

}
