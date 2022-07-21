package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;

import com.spring_boot_wattflix.project.model.MyMovieVO;

public interface IMyMovieService {
	// 비회원 북마크 회원가입 유도
	
	// 회원 마이무비 추가
	public void insertLike(MyMovieVO vo);
	public void insertDislike(MyMovieVO vo);
	
	public int checkMymovie(String movieNo, String memId);
	
	// 마이무비 조회
	ArrayList<MyMovieVO> listAllMymovie(String memId);
	
	// 마이무비 삭제
	public void deleteMymovie(String movieNo, String memId);

}
