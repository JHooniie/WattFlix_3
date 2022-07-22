package com.spring_boot_wattflix.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MyMovieVO {
	private String myMovieNo;
	private String memId;
	private String movieNo;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date myMovieRegdate;
//	조인할 것
	private String movieTitle;
	private String moviePoster;

	
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	
	public String getMyMovieNo() {
		return myMovieNo;
	}
	public void setMyMovieNo(String myMovieNo) {
		this.myMovieNo = myMovieNo;
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
	public Date getMyMovieRegdate() {
		return myMovieRegdate;
	}
	public void setMyMovieRegdate(Date myMovieRegdate) {
		this.myMovieRegdate = myMovieRegdate;
	}
	
}
