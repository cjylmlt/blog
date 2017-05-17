package com.cjy.myWeb.mapper;

import java.util.List;

import com.cjy.myWeb.po.Comment;

public interface CommentMapper {
	public List<Comment> findCommentByArticleId(String articleId);
	public Comment findCommentByCommentId(String commentId);
	public List<Comment> findCommentByCommentUser(String commentUserId);
	public List<Comment> findCommentByReplyUser(String replyUserId);
	public int insertComment(Comment comment);
	public int deleteComment(String commentId);
}
