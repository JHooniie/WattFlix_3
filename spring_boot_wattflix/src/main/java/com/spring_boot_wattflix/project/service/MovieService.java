package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.IMovieDAO;
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
		// TODO Auto-generated method stub
		return dao.listAllMovie();
	}

	@Override
	public ArrayList<MovieVO> movieSearch(HashMap<String, Object> map) {
		return dao.movieSearch(map);
	}


}
