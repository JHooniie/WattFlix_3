package com.spring_boot_wattflix.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_wattflix.project.model.MovieScoreVO;
import com.spring_boot_wattflix.project.model.MovieVO;

public interface IMovieDAO {
	
	public MovieVO detailViewMovie(String movieNo); // 영화 상세 정보 조회
	ArrayList<MovieVO> listGenMovie(String movieGenre); // 장르별 영화 조회

	public ArrayList<MovieVO> actionMovieList();

	ArrayList<MovieVO> movieSearch(HashMap<String, Object> map);// 영화 검색 결과
	
public MovieVO RecMovieGenAction();
public MovieVO recMovieGenDrama();
	
	public void insertMovieScore(MovieScoreVO msv); // 평가한 영화 저장
	
	ArrayList<MovieScoreVO> getMovieScoreInfo(String memId); // 평가한 영화 조회
	
	// test 전체 조회
	public ArrayList<MovieVO> listAllMovie();
}
