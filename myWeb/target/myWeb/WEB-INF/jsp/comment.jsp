<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<li class="list-group-item first" id="articleComments">查看留言</li>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/blog/frame/bootstrap/css/bootstrap.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/blog/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/blog/frame/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	$(function() {
		commentEvent.init();
	});
</script>
<c:if test="${empty articleComments}">
	<div class="panel-body">还没有留言，赶快抢沙发吧！</div>
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
								<a href="${pageContext.request.contextPath}/personalInfo/${firstComment.commentUser.id}" target="_blank">
									<img src="${pageContext.request.contextPath}/${firstComment.commentUser.userImg}">
								</a>
								<a href="${pageContext.request.contextPath}/personalInfo/${firstComment.commentUser.id}" target="_blank"
									style="display:block;text-align:center;">
									${firstComment.commentUser.nickname} </a>
							</div>
							<div class="comment_content">
								${firstComment.commentContent }
								
							</div>
							<div class="comment_option">
								<c:if test="{firstComment.commentUser.id == session.userId}">
									<a onclick="commentEvent.deleteComment('${firstComment.commentId}')">
										<span class="glyphicon glyphicon-trash"></span>
									</a>&nbsp;&nbsp;&nbsp;
								</c:if>
								<a style="font-size:10px;top=0px" href="javascript:;"
									onclick="commentEvent.reply(${comment.floor},
									'${firstComment.commentUser.id}','${firstComment.commentUser.nickname}');"
									class="reply"> 回复 </a>&nbsp;&nbsp;&nbsp; 
									<span style="font-size:10px;top=0px"> 
									<fmt:formatDate value="${firstComment.commentDate }" pattern="yyyy-MM-dd HH:MM:SS"/>
									</span>
									<a style="font-size:10px;top=0px">${firstComment.floor}楼</a>
							</div>

						</div>
							<c:if test="${!empty firstComment.secondComment}">
								<li class="list-group-item first" >楼层回复</li>
							</c:if>
							<c:forEach items="${firstComment.secondComment}" var="secondComment">
								<li class="comment_list-group-item">
									<div class="second_comment_content" >
										<div class="second_comment_user">
											<a href="${pageContext.request.contextPath}/personalInfo/${secondComment.commentUser.id}" target="_blank">
												<img src="${pageContext.request.contextPath}/${secondComment.commentUser.userImg}">
											</a>:${secondComment.commentContent }
											<a href="${pageContext.request.contextPath}/personalInfo/${firstComment.commentUser.id}" target="_blank"
											style="display:block;left:0px;">
											${secondComment.commentUser.nickname} </a>
											
											
										</div>
									</div>
									
									<a style="font-size:10px ;right: 160px;position: absolute;" href="javascript:;"
												onclick="commentEvent.reply(${comment.floor},
												'${firstComment.commentUser.id}','${firstComment.commentUser.nickname}');"
												class="reply" style="font-size:10px;top=0px"> 回复 </a>&nbsp;&nbsp;&nbsp; 
											<span style="font-size:10px;top=0px;right:0px;position: absolute;"> 
												<fmt:formatDate value="${firstComment.commentDate}"  pattern="yyyy-MM-dd HH:MM:SS"/>
											</span>
								</li>
								
							</c:forEach>
							
					</h4>
				</div>
				
			</div>
		</div>
	</li>
</c:forEach>
