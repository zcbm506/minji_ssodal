<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<!-- ----- CSS ----- -->
<!-- ----- common ----- -->
<link type="text/css" rel="stylesheet" href="./bundle/css/common.css" />
<!-- ----- write ----- -->
<link type="text/css" rel="stylesheet"
	href="./bundle/css/board_reply/board_reply_list.css" />
<title>board_reply_list</title>
</head>
<body>
	<div id="wrapper">
		<article id="article">
			<section id="section_reply_list">
				<div id="reply_list_wrapper">
					<ul id="reply_list">

						<c:if test="${!empty blist}">
							<c:forEach var="b" items="${blist}">

								<li>
									<hgroup>
										<h3 id="list_no">${b.board_reply_no}</h3>
										<h3 id="list_id">${b.board_reply_name}</h3>
										<c:if test="${!empty blist}">
											<forEach var="b" items="${blist}">
												<c:if test="${b.board_reply_star == 1 }">
												<h3 id="list_star">&starf;</h3>
												</c:if>
												<c:if test="${b.board_reply_star == 2 }">
												<h3 id="list_star">&starf;&starf;</h3>
												</c:if>
												<c:if test="${b.board_reply_star == 3 }">
												<h3 id="list_star">&starf;&starf;&starf;</h3>
												</c:if>
												<c:if test="${b.board_reply_star == 4 }">
												<h3 id="list_star">&starf;&starf;&starf;&starf;</h3>
												</c:if>
												<c:if test="${b.board_reply_star == 5 }">
												<h3 id="list_star">&starf;&starf;&starf;&starf;&starf;</h3>
												</c:if>
											</forEach> 
										</c:if> 
										<h3 id="list_cont">${b.board_reply_content}</h3>
										<h3 class="list_date">${b.board_reply_date}</h3>
									</hgroup>
								</li>
							</c:forEach>
						</c:if>
					</ul>
					<ul id="menu_page">
						<a href="#"><li>&lt;&lt;</li></a>
						<a href="#"><li>&lt;</li></a>
						<a href="#"><li class="selecter">1</li></a>
						<a href="#"><li>2</li></a>
						<a href="#"><li>3</li></a>
						<a href="#"><li>4</li></a>
						<a href="#"><li>5</li></a>
						<a href="#"><li>&gt;</li></a>
						<a href="#"><li>&gt;&gt;</li></a>
					</ul>
					<ul id="search_and_button_wrapper">
						<li><input type="button" name="write" id="write"
							value="Write" onclick="location.href='board_reply_write.do'" /></li>
					</ul>
				</div>
			</section>
		</article>
	</div>
</body>
</html>