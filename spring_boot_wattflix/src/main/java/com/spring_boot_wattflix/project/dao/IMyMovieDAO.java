package com.spring_boot_wattflix.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_wattflix.project.model.MyMovieVO;

public interface IMyMovieDAO {
	// 비회원 북마크 회원가입 유도
	
	// 회원 마이무비 추가
	public void insertLike(MyMovieVO vo);
	public void insertDislike(MyMovieVO vo);
	
	// 마이무비 조회
	public ArrayList<MyMovieVO> listAllMymovie(String memId);
	
	// 마이무비 삭제
//	public void deleteMymovie(HashMap<String, Object> map);
	public void deleteMymovie(String movieNo);

	public int checkMymovie(HashMap<String, Object> map);
	
}
