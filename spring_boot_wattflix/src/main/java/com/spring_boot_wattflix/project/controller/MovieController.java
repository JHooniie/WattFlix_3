package com.spring_boot_wattflix.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {

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
}
