package com.spring_boot_wattflix.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot_wattflix.project.model.MovieScoreVO;
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
	// @RequestMapping()

	// test : 전체 영화 정보 출력 (영화 제목 & 포스터)
	@RequestMapping("/movie/movieAllList")
	public String viewMovieAllList(Model model) {
		ArrayList<MovieVO> movieList = movieService.listAllMovie();

		model.addAttribute("movieList", movieList);
		return "movie/movieAllListView";
	}

	// 영화 상세 정보 조회 : /movie/detailMovie
	@RequestMapping("/movie/detailMovie/{movieNo}")

	public String detailViewMovie(@PathVariable String movieNo, HttpSession session,
								Model model) {
		// 영화번호(movieNo) 전달, 해당 영화의 정보 반환
		MovieVO movie = movieService.detailViewMovie(movieNo);
		
		String memId = (String)session.getAttribute("sid");
		model.addAttribute("memId", memId);
		

		model.addAttribute("movie", movie);

		// 동일 장르별 영화 조회 요청 처리
		ArrayList<MovieVO> movieList = movieService.listGenMovie(movie.getMovieGenre());
		model.addAttribute("movieList", movieList);

		return "movie/detailpage";
	}

	
	// 별점 누르면 DB 추가 
	// 상품 등록 : 상품정보 DB 저장 (참고) 
	/*
	 * @RequestMapping("/product/insertProduct") public String
	 * insertProduct(ProductVO prd) { prdService.insertProduct(prd);
	 * 
	 * // DB에 데이터 저장한 후 전체 상품 조회 화면으로 포워딩 return "redirect:./productAllList"; }
	 */
	/*
	 * @RequestMapping("/movie/insertMovieScore") public String
	 * insertMovieScore(MovieScoreVO msv, Model model) {
	 * movieService.insertMovieScore(msv);
	 * 
	 * model.addAttribute("movieNo", msv.getMovieNo());
	 * 
	 * return "redirect:/movie/detailMovie"; // 뷰페이지 아님 : @RequestMapping로 보내는 것임 :
	 * 요청을 포워딩시키는 것임 }
	 */
	
	@ResponseBody
	@RequestMapping("/movie/insertMovieScore")
	public String insertMovieScore(@RequestParam HashMap<String, Object> param) {
		
		movieService.insertMovieScore(param);			
		return "ok";  // 뷰페이지 아님 : @RequestMapping로 보내는 것임 : 요청을 포워딩시키는 것임
	}
	
	
	// 마이페이지에서 '평가한영화'버튼 눌렀을 때 조회 
	//@RequestMapping("/movie/myPageMovieList/{memId}")
	// return myPageMovieListView
	/*
	 * // 상품 정보 수정 폼 열기 요청 처리
	@RequestMapping("/product/productUpdateForm/{prdNo}")
	public String updateProductForm(@PathVariable String prdNo, Model model) {
		// 수정할 상품번호 받아서, detailViewProduct()메소드 호출하면서 전달하고 해당 상품 정보(1개) 받아서 모델 설정
		ProductVO prd = prdService.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);
		return "product/productUpdateForm";
	}
	 */
	

	// 마이페이지에서 '평가한영화'버튼 눌렀을 때 조회
    @RequestMapping("/movie/myPageMovieList")
    public String myPageMovieList(HttpSession session, Model model) {
       String memId = (String) session.getAttribute("sid");
       
       ArrayList<MovieScoreVO> scoreList = movieService.getMovieScoreInfo(memId);
       model.addAttribute("scoreList", scoreList);
       
       return "movie/myPageMovieListView";
    }


	/*
	 * // 오늘의 영화 추천
	 * 
	 * @RequestMapping("/movie/todaymovie") public String
	 * viewRecMovieGenAction(Model model) { ArrayList<MovieVO> actionMovieList =
	 * movieService.actionMovieList();
	 * 
	 * model.addAttribute("actionMovieList", actionMovieList); return
	 * "movie/todaymovie"; }
	 */

}
