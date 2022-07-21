package com.spring_boot_wattflix.project.service;

import java.util.ArrayList;

import com.spring_boot_wattflix.project.model.CommentVO;

public interface ICommentService {

		public void insertComment(CommentVO vo);
		public void updateComment(CommentVO vo);
		public void deleteComment(CommentVO vo);
		ArrayList<CommentVO> listAllComment(String movieNo);
}
