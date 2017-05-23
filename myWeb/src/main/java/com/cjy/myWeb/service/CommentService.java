package com.cjy.myWeb.service;

import java.util.List;

import com.cjy.myWeb.po.Comment;
import com.cjy.myWeb.vo.CommentVo;

public interface CommentService {
	public List<CommentVo> loadComment(String articleId);
	public List<CommentVo> loadSecondComment(String floor);
	public CommentVo commentToCommentVo(Comment comment);
}
