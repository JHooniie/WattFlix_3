package com.spring_boot_wattflix.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.IGameDAO;
import com.spring_boot_wattflix.project.model.GameVO;

@Service

public class GameService {

@Autowired
@Qualifier("IGameDAO")
IGameDAO dao;

public void insertGame(GameVO game) {
	 dao.insertGame(game);
	 
	 
}
}
