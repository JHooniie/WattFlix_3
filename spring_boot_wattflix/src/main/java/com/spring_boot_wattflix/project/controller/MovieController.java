package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot_wattflix.project.model.MovieVO;
import com.spring_boot_wattflix.project.service.MovieService;

@Controller
public class MovieController {
	// DI 설정
	@Autowired
	MovieService movieService;

	@RequestMapping("/movie/movieSearch")
	public String viewmovieSearch() {
		return "movie/searchBox";
	}
	
	@RequestMapping("/movie/movieRank")
	public String viewMovieRank() {
		return "movie/movierank";
	}
	
	@RequestMapping("/movie/posterBook")
	public String viewPosterBook() {
		return "movie/posterbook";
	}
	
	@RequestMapping("/movie/introduce")
	public String viewINtroduceWatflix() {
		return "movie/introduce";
	}
	
	@RequestMapping("/movie/detailPage")
	public String viewdetail() {
		return "movie/detailpage";
	}
	
	
	// 여기서부터 
	// 장르별 영화 조회 요청 처리
	//@RequestMapping()
	
	//test
	@RequestMapping("/movie/movieAllList")
	public String viewMovieAllList(Model model) {
		ArrayList<MovieVO> movieList = movieService.listAllMovie();
		
		model.addAttribute("movieList", movieList);
		return "movie/movieAllListView";
	}
	
}
















