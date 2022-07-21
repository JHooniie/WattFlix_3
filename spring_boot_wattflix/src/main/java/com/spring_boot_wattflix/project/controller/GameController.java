package com.spring_boot_wattflix.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.service.GameService;

//DI 설정
	@Controller
public class GameController {

		@Autowired
		GameService gameService;
		
		// 
		@RequestMapping("/member/mypage")
		public String gameScore() {
			return "member/mypage";
		}		

}
