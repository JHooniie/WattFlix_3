package com.spring_boot_wattflix.project.dao;

import java.util.ArrayList;

import com.spring_boot_wattflix.project.model.CommentVO;

public interface ICommentDAO {
	public void insertComment(CommentVO vo);
	public void updateComment(CommentVO vo);
	public void deleteComment(CommentVO vo);
    ArrayList<CommentVO> listAllComment(String memid);
}
