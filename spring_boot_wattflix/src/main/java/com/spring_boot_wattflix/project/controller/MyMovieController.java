package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.model.MovieVO;
import com.spring_boot_wattflix.project.model.MyMovieVO;
import com.spring_boot_wattflix.project.service.MyMovieService;

@Controller
public class MyMovieController {
	@Autowired
	MyMovieService service;
	
	@RequestMapping("/mymovie/insertMymovie/{movieNo}")
	public void insertMymovie(@PathVariable String movieNo,
							HttpSession session,
							MyMovieVO vo) {
		// 로그인 세션 가져오기
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		
		// 동일 영화 존재 여부 확인
		int count = service.checkMymovie(vo.getMovieNo(), memId);
		if (count == 0) {
			service.insertMymovie(vo);
		} else {
			service.deleteMymovie(movieNo,memId);
		}
	}
	
	@RequestMapping("/movie/mymovieView")
	public String listAllMymovie(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("sid");
		ArrayList<MyMovieVO> myMovieList = service.listAllMymovie(memId);
		
		model.addAttribute("myMovieList", myMovieList);
		return "movie/mymovie";
	}
	
}
