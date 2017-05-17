package com.cjy.myWeb.po;

import java.util.Date;


public class Comment {
	private String commentId;
	private String replyUser;
	private String commentUser;
	private String commentArticle;
	private String floor;
	private String commentContent;
	private Date commentDate;

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getReplyUser() {
		return replyUser;
	}

	public void setReplyUser(String replyUser) {
		this.replyUser = replyUser;
	}

	public String getCommentUser() {
		return commentUser;
	}

	public void setCommentUser(String commentUser) {
		this.commentUser = commentUser;
	}

	public String getCommentArticle() {
		return commentArticle;
	}

	public void setCommentArticle(String commentArticle) {
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

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", replyUser=" + replyUser + ", commentUser=" + commentUser
				+ ", commentArticle=" + commentArticle + ", floor=" + floor + ", commentContent=" + commentContent
				+ ", commentDate=" + commentDate + "]";
	}
}
