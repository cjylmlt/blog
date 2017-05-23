package com.cjy.myWeb.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cjy.myWeb.mapper.ArticleMapper;
import com.cjy.myWeb.mapper.CommentMapper;
import com.cjy.myWeb.mapper.UserMapper;
import com.cjy.myWeb.po.Comment;
import com.cjy.myWeb.service.CommentService;
import com.cjy.myWeb.vo.CommentVo;

public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper commentMapper;
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private ArticleMapper articleMapper;
	@Override
	public List<CommentVo> loadComment(String articleId) {
		// TODO Auto-generated method stub
		List<Comment> commentList = commentMapper.findFirstCommentByArticleId(articleId);
		ArrayList<CommentVo> result = new ArrayList<>();
		for(Comment comment:commentList){
			CommentVo firstComment = commentToCommentVo(comment);
			firstComment.setSecondComment(loadSecondComment(firstComment.getFloor()));
			result.add(firstComment);
		}
		return result;
	}
	@Override
	public List<CommentVo> loadSecondComment(String floor) {
		List<Comment> secondCommentList = commentMapper.findSecondCommentByFloor(floor);
		ArrayList<CommentVo> result = new ArrayList<>();
		for(Comment comment:secondCommentList){
			result.add(commentToCommentVo(comment));
		}
		return result;
	}
	@Override
	public CommentVo commentToCommentVo(Comment comment) {
		String commentUserId = comment.getCommentUser();
		String replyUserId = comment.getReplyUser();
		String artcleId = comment.getCommentArticle();
		CommentVo commentVo = new CommentVo();
		commentVo.setCommentId(comment.getCommentId());
		commentVo.setReplyUser(userMapper.findUserById(replyUserId));
		commentVo.setCommentUser(userMapper.findUserById(commentUserId));
		commentVo.setCommentArticle(articleMapper.findArticleById(artcleId));
		commentVo.setFloor(comment.getFloor());
		commentVo.setCommentContent(comment.getCommentContent());
		commentVo.setCommentDate(comment.getCommentDate());
		return commentVo;
	}

}
