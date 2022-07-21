package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/movie/movieSearchResult")
	public String movieSearchResult(@RequestParam HashMap<String, Object> param, Model model) {
		ArrayList<MovieVO> mvList = movieService.movieSearch(param);
		model.addAttribute("mvList",mvList);
		return "movie/moviesearchResultView";
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
	
	//test : 전체 영화 정보 출력 (영화 제목 & 포스터)
	@RequestMapping("/movie/movieAllList")
	public String viewMovieAllList(Model model) {
		ArrayList<MovieVO> movieList = movieService.listAllMovie();
		
		model.addAttribute("movieList", movieList);
		return "movie/movieAllListView";
	}
	
	// 영화 상세 정보 조회 : /movie/detailMovie
	@RequestMapping("/movie/detailMovie/{movieNo}")
	public String detailViewMovie(@PathVariable String movieNo,
								Model model) {
		// 영화번호(movieNo) 전달, 해당 영화의 정보 반환
		MovieVO movie = movieService.detailViewMovie(movieNo);
		
		model.addAttribute("movie", movie);
		
		// 동일 장르별 영화 조회 요청 처리
		ArrayList<MovieVO> movieList = movieService.listGenMovie(movie.getMovieGenre());
		model.addAttribute("movieList", movieList);
		
		return "movie/detailpage";
	}
	
	
}
















