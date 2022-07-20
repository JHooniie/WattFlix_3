package com.spring_boot_wattflix.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	String movieId=(String)session.getAttribute("sid");
	// VO에 memId 값 설정
	vo.setMemId(movieId);
	
	commentService.insertComment(vo); 
	return "redirect:/comment/listAllComment";
}

 
}
