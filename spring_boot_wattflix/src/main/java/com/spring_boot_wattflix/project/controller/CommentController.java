package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.model.CommentVO;
import com.spring_boot_wattflix.project.service.CommentService;

@Controller
public class CommentController {
	@Autowired
	CommentService commentService;

	// 댓글 추가 요청 처리
	@RequestMapping("/comment/insertComment")
	public String insertComment(CommentVO vo,HttpSession session){
		// 로그인 성공 후 설정한 세션 sid 값 가져오기
		String movieNo=(String)session.getAttribute("sid");
		// VO에 memId 값 설정
		vo.setMemId(movieNo);
		
		commentService.insertComment(vo); 
		return "redirect:/comment/listAllComment";
	}
	
	// 댓글 목록 보기 요청 처리
	@RequestMapping("/comment/listAllComment")
	public String commentList(HttpSession session, Model model) {
		// comment 테이블에서 현재 movieNo에 해당되는 내용만 출력
		String movieNo = (String)session.getAttribute("sid");
		ArrayList<CommentVO> commentList = commentService.listAllComment(movieNo);
		model.addAttribute("commentList", commentList);
		
		return "comment/comment";
	}

 
}
