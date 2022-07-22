package com.spring_boot_wattflix.project.model;

public class MovieScoreVO {
	private int scoreNo;
	private String memId;
	private String movieNo;
	private int movieScore;
	
	// DB 테이블에는 없지만
	// Mapper에서 받아서 View에 출력할 때 사용할 필드
	private String moviePoster;
	private String movieTitle;
	private String memNickname;
	
	
	public String getMemNickname() {
		return memNickname;
	}
	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}
	public int getScoreNo() {
		return scoreNo;
	}
	public void setScoreNo(int scoreNo) {
		this.scoreNo = scoreNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(String movieNo) {
		this.movieNo = movieNo;
	}
	public int getMovieScore() {
		return movieScore;
	}
	public void setMovieScore(int movieScore) {
		this.movieScore = movieScore;
	}
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}

}
