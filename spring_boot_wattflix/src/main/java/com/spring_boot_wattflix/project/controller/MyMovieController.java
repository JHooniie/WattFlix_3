
package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.model.MyMovieVO;
import com.spring_boot_wattflix.project.service.MyMovieService;

@Controller
public class MyMovieController {
	@Autowired
	MyMovieService service;
	
	@RequestMapping("/mymovie/insertLike/{movieNo}")
	public String insertLike(@PathVariable String movieNo,
							HttpSession session,
							HttpServletRequest request,
							MyMovieVO vo) {
		// 로그인 세션 가져오기
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		vo.setMovieNo(movieNo);
		System.out.println(memId);
		
		String msg="";
		String url="";
		
		if (memId == null) {
			request.setAttribute("msg", "로그인이 필요합니다.");
			request.setAttribute("url", "/");
			return "alert";
		} else {
			// 동일 영화 존재 여부 확인
			int count = service.checkMymovie(vo.getMovieNo(), memId);
			if (count == 0) {
				service.insertLike(vo);
				msg="My Movie에 추가되었습니다.";
			} else {
				// 추가되지 않고, 이미 추가된 영화임을 알려주기
				msg="이미 추가된 영화입니다.";
			}
			request.setAttribute("msg", msg);
			request.setAttribute("url", "/mymovie/mymovieView");
		}
		
		return "layout/alert";
	}
	
//	@RequestMapping("/mymovie/insertLike")
//	public String insertLike(@PathVariable String movieNo,
//			HttpSession session,
//			HttpServletRequest request,
//			MyMovieVO vo) {
//		// 로그인 세션 가져오기
//		String memId = (String)session.getAttribute("sid");
//		vo.setMemId(memId);
//		vo.setMovieNo(movieNo);
//		System.out.println(memId);
//		
//		String msg="";
//		String url="";
//		
//		if (memId == null) {
//			request.setAttribute("msg", "로그인이 필요합니다.");
//			request.setAttribute("url", "/");
//			return "alert";
//		} else {
//			// 동일 영화 존재 여부 확인
//			int count = service.checkMymovie(vo.getMovieNo(), memId);
//			if (count == 0) {
//				service.insertLike(vo);
//				msg="My Movie에 추가되었습니다.";
//			} else {
//				// 추가되지 않고, 이미 추가된 영화임을 알려주기
//				msg="이미 추가된 영화입니다.";
//			}
//			request.setAttribute("msg", msg);
//			request.setAttribute("url", "redirect:/mymovie/mymovieView");
//		}
//		
//		return "layout/alert";
//	}
	
	@RequestMapping("/mymovie/insertDislike/{movieNo}")
	public String insertDislike(@PathVariable String movieNo,
							HttpSession session,
							HttpServletRequest request,
							MyMovieVO vo,
							Model model) {
		// 로그인 세션 가져오기
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId);
		vo.setMovieNo(movieNo);
		String msg="";
		
		System.out.println(memId);
		
		// 동일 영화 존재 여부 확인
		int count = service.checkMymovie(vo.getMovieNo(), memId);
		if (count == 0) {
			service.insertDislike(vo);
			msg="해당 영화를 더 이상 추천하지 않습니다.";
		} else {
			// 추가되지 않고, 이미 추가된 영화임을 알려주기
//			msg="이미 추가된 영화입니다.";
		}
		model.addAttribute("msg", msg);
		return "redirect:" + request.getHeader("Referer");
	}
	
	// mymovie 리스트 뷰
	@RequestMapping("/mymovie/mymovieView")
	public String listAllMymovie(HttpSession session, Model model) {
		String memId = (String)session.getAttribute("sid");
		ArrayList<MyMovieVO> myMovieList = service.listAllMymovie(memId);
		
		model.addAttribute("myMovieList", myMovieList);
		return "movie/mymovie";
	}
	
	// mymovie 제거
	@RequestMapping("/mymovie/deleteMymovie/{mymovieNo}")
	public String deleteMymovie(@PathVariable String mymovieNo) {
//			, HttpSession session) {
//		String memId = (String)session.getAttribute("sid");
//		service.deleteMymovie(myMovieNo, memId);
		service.deleteMymovie(mymovieNo);
		
		return "redirect:/mymovie/mymovieView";
	}
	
}

