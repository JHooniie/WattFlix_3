package com.spring_boot_wattflix.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WattflixController {

//	 nav 이동
	@RequestMapping("/") // main
	public String veiwIndex() {
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

	@RequestMapping("/movie/posterView")
	public String posterView() {
		return "movie/posterbook";
	}

	@RequestMapping("/movie/todayMovieView")
	public String todayMovieView() {
		return "movie/todayMovieView";
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

	@RequestMapping("/member/mypageView")
	public String mypageView() {
		return "member/mypage";
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

}
