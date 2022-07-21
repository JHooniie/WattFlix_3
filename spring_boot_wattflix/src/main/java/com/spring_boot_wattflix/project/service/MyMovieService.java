package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.IMyMovieDAO;
import com.spring_boot_wattflix.project.model.MyMovieVO;

@Service
public class MyMovieService implements IMyMovieService {
	
	@Autowired
	@Qualifier("IMyMovieDAO")
	IMyMovieDAO dao;
	
	@Override
	public void insertMymovie(MyMovieVO vo) {
		dao.insertMymovie(vo);
	}

	@Override
	public ArrayList<MyMovieVO> listAllMymovie(String memId) {
		return dao.listAllMymovie(memId);
	}

	@Override
	public void deleteMymovie(String movieNo, String memId) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("memId", memId);
		map.put("movieNo", movieNo);
		dao.deleteMymovie(map);
	}

	public int checkMymovie(String movieNo, String memId) {
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("memId", memId);
		map.put("movieNo", movieNo);
		return dao.checkMymovie(map);
	}



}
