package com.spring_boot_wattflix.project.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring_boot_wattflix.project.model.MemberVO;
import com.spring_boot_wattflix.project.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memService;

	// 회원가입
	@RequestMapping("/member/signUp")
	public String signUp(MemberVO memVo, @RequestParam String yyyy,
										 @RequestParam String mm,
										 @RequestParam String dd) {
		
	try {
		String birth = yyyy + "-" + mm + "-" + dd;
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDay = fmt.parse(birth);
		
		memVo.setMemBirth(birthDay);
		
		memService.insertMember(memVo);
		
		} catch (ParseException e) {};
		
		return "index";
	}

	// 로그인 처리
//	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param, HttpSession session, Model model) {

		// 로그인 체크 결과 : 아이디 비밀번호 전달하고 로그인성공하면 아이디 반환
		String memId = memService.loginCheck(param);
//		String result = "fail";

		// 아이디와 비밀번호가 일치하면
		if (memId != null) {
			// 로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", memId);

		} else {

		}

		return "redirect:/";
	}

	// 로그아웃 처리
	@RequestMapping("/logout")
	public String userLogout(HttpSession session) {

		// 세션 무효화
		session.invalidate();

		return "index";
	}
}