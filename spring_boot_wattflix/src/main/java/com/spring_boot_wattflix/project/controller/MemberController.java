package com.spring_boot_wattflix.project.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		
		return "member/joined";
	}
	
	
	/*
	 * // 회원탈퇴
	 * 
	 * @RequestMapping("/member/unregister") public String loginCheck(@RequestParam
	 * HashMap<String, Object> param, HttpSession session) { String memId =
	 * (String)session.getAttribute("sid");
	 * 
	 * return "/"; }
	 */

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

		return "redirect:/";

	}
	// 회원 프로필
	@RequestMapping("/member/mypage2")
	public String myprofile(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("sid");
		//ArrayList<MemberVO> memberList = memService.memberList(memId);
		MemberVO memPf = memService.profileView(memId);
		
		model.addAttribute("memPf", memPf);
		return "member/mypage2";	
	}
	
	
	// 회원 정보 수정 
	@RequestMapping("member/update")
	public String userupdate() {
	
		return "member/update";	
	}
	
	
	
	
	// 프로필 사진 업로드
	@RequestMapping("/fileUpload")
	public String viewFileUpload(@RequestParam("uploadFile") MultipartFile file, Model model) throws IOException {
		// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
		String uploadPath = "C:///springWorkSpace/upload/";
		
		// 2. 원본 파일 이름 설정
		String originalFileName = file.getOriginalFilename();
		
		// 3. 파일 이름이 중복되지 않도록 파일 이름 변경 : 서버에 저장할 이름
		// UUID 클래스 사용 : 랜덤 생성
		UUID uuid = UUID.randomUUID();
		String savedFileName = uuid.toString()+"_"+originalFileName;
		
		// 4. 파일 생성
		File newFile = new File(uploadPath + savedFileName);
		
		// 5. 서버로 전송
		file.transferTo(newFile);
		
		// Model 설정 : 뷰 페이지에서 원본 파일 이름 출력
		model.addAttribute("memPic", savedFileName);
		
		return "redirect:./member/mypage2";
	}
	
	// 회원 정보 수정 
	@RequestMapping("/member/updateForm")
	public String memberUpdate() {
	
		return "member/update";	
	}

}