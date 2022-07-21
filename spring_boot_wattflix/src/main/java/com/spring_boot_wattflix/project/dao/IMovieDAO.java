package com.spring_boot_wattflix.project.dao;

import java.util.ArrayList;

import com.spring_boot_wattflix.project.model.MovieVO;

public interface IMovieDAO {
	
	public MovieVO detailViewMovie(String movieNo); // 영화 상세 정보 조회
	ArrayList<MovieVO> listGenMovie(String movieGenre); // 장르별 영화 조회
	public ArrayList<MovieVO> actionMovieList();
	
	// test 전체 조회
	public ArrayList<MovieVO> listAllMovie();
}
