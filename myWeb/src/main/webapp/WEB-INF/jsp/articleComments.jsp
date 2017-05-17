<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<li class="list-group-item first" id="articleComments">查看评论</li>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/blog/frame/bootstrap/css/bootstrap.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/blog/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/blog/frame/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	//$(function() {
	//	commentEvent.init();
	//});
</script>
<c:if test="${empty articleComments}">
	<div class="panel-body">还没有评论，赶快评论一下吧！</div>
</c:if>
<c:forEach items="${articleComments}" var="comment">
	<c:set var="firstComment" value="${comment}"></c:set>
	<li class="list-group-item" id="${firstComment.floor}">
		<div id="accordion" role="tablist" aria-multiselectable="true">
			<div>
				<div class="pre" style="padding:10px 15px;">
					<h4 class="panel-title">
						<div class="comment">
							<div class="comment_user">
								<a href="myBlogView.action?userId=${firstComment.commentUser.id}" target="_blank">
									<img src="${pageContext.request.contextPath}/${firstComment.commentUser.userImg}">
								</a>
								<a href="myBlogView.action?userId=${firstComment.commentUser.id}" target="_blank"
									style="display:block;text-align:center;">
									${firstComment.commentUser.nickname} </a>
							</div>
							<div class="comment_content">
								${comment.commentContent }
							</div>
							<div class="comment_option">
								<c:if test="{firstComment.commentUser.id == session.userId}">
									<a onclick="commentEvent.deleteComment('${firstComment.commentId}')">
										<span class="glyphicon glyphicon-trash"></span>
									</a>&nbsp;&nbsp;&nbsp;
								</c:if>
								<a href="javascript:;"
									onclick="commentEvent.reply(${comment.floor},
									'${firstComment.commentUser.id}','${firstComment.commentUser.nickname}');"
									class="reply"> 回复 </a>&nbsp;&nbsp;&nbsp; <span> 
									<%//<c:date name="#firstComment.commentDate" format="yyyy-MM-dd HH:mm" />%>
								</span>
							</div>
						</div>
					</h4>
				</div>
			</div>
		</div>
	</li>
</c:forEach>
