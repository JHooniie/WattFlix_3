package com.spring_boot_wattflix.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class GameVO {
	
private int gameNO;
private String memId;
private String movieNO;
private String mymovie;
@DateTimeFormat(pattern="yyyy-MM-dd")
private Date myMovieRegdate;
public int getGameNO() {
	return gameNO;
}
public void setGameNO(int gameNO) {
	this.gameNO = gameNO;
}
public String getMemId() {
	return memId;
}
public void setMemId(String memId) {
	this.memId = memId;
}
public String getMovieNO() {
	return movieNO;
}
public void setMovieNO(String movieNO) {
	this.movieNO = movieNO;
}
public String getMymovie() {
	return mymovie;
}
public void setMymovie(String mymovie) {
	this.mymovie = mymovie;
}
public Date getMyMovieRegdate() {
	return myMovieRegdate;
}
public void setMyMovieRegdate(Date myMovieRegdate) {
	this.myMovieRegdate = myMovieRegdate;
}






}
