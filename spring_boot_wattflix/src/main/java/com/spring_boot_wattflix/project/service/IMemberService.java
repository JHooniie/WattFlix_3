package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_wattflix.project.model.MemberVO;

public interface IMemberService {
	// 회원가입
	public void insertMember(MemberVO memVo);

	String memIdCheck(String memId);

	// 로그인
	String loginCheck(HashMap<String, Object> map);

	//프로필 정보 받아오기
	ArrayList<MemberVO> memberList(String memId);
	public MemberVO profileView(String memId);
	
	//프로필 사진 변경
	public void profileUpdate(MemberVO memVo);
	
	// 회원 정보 수정
	public void memberUpdate(MemberVO memVo);	
	
	// 회원 탈퇴
	public void deleteMember(String memId);
}
