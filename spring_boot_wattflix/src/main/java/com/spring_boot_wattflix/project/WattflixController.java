package com.spring_boot_wattflix.project;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.model.MovieVO;
import com.spring_boot_wattflix.project.service.MovieService;

@Controller
public class WattflixController {

	// DI 설정
	@Autowired
	MovieService movieService;
	
//	 nav 이동
	@RequestMapping("/")		// main
	public String veiwIndex(Model model) {
		// 전체 영화 포스터 출력
		ArrayList<MovieVO> movieList = movieService.listAllMovie();
		
		model.addAttribute("movieList", movieList);
		return "index";
	}

//	 movie 이동 
	@RequestMapping("/movie/searchView")
	public String searchView() {
		return "movie/searchBox";
	}

	@RequestMapping("/movie/rankView")
	public String rankView() {
		return "movie/movierank";
	}

//	@RequestMapping("/movie/mymovieView")
//	public String posterView() {
//		return "movie/mymovie";
//	}

	@RequestMapping("/movie/todayMovieView")
	public String todayMovieView() {
		return "movie/todaymovie";
	}

//	 contents 이동
	@RequestMapping("/ent/chatView")
	public String chatView() {
		return "ent/chatView";
	}

	@RequestMapping("/ent/gameView")
	public String gameView() {
		return "ent/gameView";
	}

//	member
	@RequestMapping("/member/signupFormView")
	public String signupView() {
		return "member/signup";
	}

	
	  @RequestMapping("/member/mypageView") public String mypageView() { 
		  return "member/mypage2"; 
	}
	 

	@RequestMapping("/member/signdownView")
	public String signdownView() {
		return "member/signdownView";
	}

//	company
	@RequestMapping("/company/introduceView")
	public String introduceView() {
		return "company/introduce";
	}
	
//	로그인
	@RequestMapping("/member/loginRequestView")
	public String loginFormView() {
		return "member/login";
	}

}
