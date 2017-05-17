package com.cjy.myWeb.vo;

import java.util.Date;

import com.cjy.myWeb.po.Article;
import com.cjy.myWeb.po.User;

public class CommentVo {
	private String commentId;
	private User replyUser;
	private User commentUser;
	private Article commentArticle;
	private String floor;
	private String commentContent;
	private Date commentDate;
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public User getReplyUser() {
		return replyUser;
	}
	public void setReplyUser(User replyUser) {
		this.replyUser = replyUser;
	}
	public User getCommentUser() {
		return commentUser;
	}
	public void setCommentUser(User commentUser) {
		this.commentUser = commentUser;
	}
	public Article getCommentArticle() {
		return commentArticle;
	}
	public void setCommentArticle(Article commentArticle) {
		this.commentArticle = commentArticle;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	
}
