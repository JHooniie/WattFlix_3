package com.spring_boot_wattflix.project.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.IMemberDAO;
import com.spring_boot_wattflix.project.model.MemberVO;

@Service
public class MemberService implements IMemberService {

	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
	
	// 회원가입
	@Override
	public void insertMember(MemberVO memVo) {
		dao.insertMember(memVo);

	}
	
	// 회원탈퇴
	@Override
	public void deleteMember(String memId) {
		dao.deleteMember(memId);

	}

	@Override
	public String memIdCheck(String memId) {
		// TODO Auto-generated method stub
		return null;
	}
	
	// 로그인
	@Override
	public String loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}

}
