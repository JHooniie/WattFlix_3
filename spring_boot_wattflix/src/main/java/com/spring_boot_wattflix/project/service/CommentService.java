package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot_wattflix.project.dao.ICommentDAO;
import com.spring_boot_wattflix.project.model.CommentVO;


@Service
public class CommentService implements ICommentService {
@Autowired
@Qualifier("ICommentDAO")
ICommentDAO dao;
	@Override
	public void insertComment(CommentVO vo) {
		dao.insertComment(vo);

	}

	@Override
	public void updateComment(CommentVO vo) {
		dao.updateComment(vo);
	}

	@Override
	public void deleteComment(CommentVO vo) {
		dao.deleteComment(vo);

	}

	@Override
	public ArrayList<CommentVO> listAllComment(String movieNo) {
		// TODO Auto-generated method stub
		return dao.listAllComment(movieNo);
	}
}
