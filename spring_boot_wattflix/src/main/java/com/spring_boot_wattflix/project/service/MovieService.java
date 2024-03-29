package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.IMovieDAO;
import com.spring_boot_wattflix.project.model.MovieScoreVO;
import com.spring_boot_wattflix.project.model.MovieVO;

@Service
public class MovieService implements IMovieService {
	@Autowired
	@Qualifier("IMovieDAO")
	IMovieDAO dao;

	@Override
	public MovieVO detailViewMovie(String movieNo) {
		return dao.detailViewMovie(movieNo);
	}

	@Override
	public ArrayList<MovieVO> listGenMovie(String movieGenre) {
		return dao.listGenMovie(movieGenre);
	}

	@Override
	public ArrayList<MovieVO> listAllMovie() {
		return dao.listAllMovie();
	}

	@Override
	public ArrayList<MovieVO> actionMovieList() {
		return dao.actionMovieList();
	}
  
	@Override
	public ArrayList<MovieVO> movieSearch(HashMap<String, Object> map) {
		return dao.movieSearch(map);
	}



	@Override
	public ArrayList<MovieScoreVO> getMovieScoreInfo(String memId) {
		// TODO Auto-generated method stub
		return dao.getMovieScoreInfo(memId);
	}

	@Override
	public void insertMovieScore(HashMap<String, Object> param) {
		// TODO Auto-generated method stub
		dao.insertMovieScore(param);
	}

}
