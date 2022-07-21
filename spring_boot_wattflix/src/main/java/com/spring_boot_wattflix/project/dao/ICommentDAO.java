package com.spring_boot_wattflix.project.dao;

import java.util.ArrayList;

import com.spring_boot_wattflix.project.model.CommentVO;

public interface ICommentDAO {
	public void insertComment(CommentVO vo);  // 댓글 입력
	public void updateComment(CommentVO vo); // 댓글 수정
	public void deleteComment(CommentVO vo); // 댓글 삭제
    ArrayList<CommentVO> listAllComment(String movieNo); // 모든 댓글 출력
}
