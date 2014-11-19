<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<link type="text/css" rel="stylesheet" href="./bundle/css/common.css" />
		<link type="text/css" rel="stylesheet" href="./bundle/css/board_reply/board_reply.css" />
		<title>board_reply</title>
	</head>
	<body>
		<div id="wrapper">
			<article id="article">
				<section id="section_board_reply">
					<div id="reply_wrapper">
						<ul id="total_comment">
							<li><h3 id="comment">Total Comment=${totalCount}</h3></li>
						</ul>
						<ul id="avg_stars">
							<li><h3 id="stars">AVERAGE STAR=${avrstars}</h3></li>
						</ul>
						<ul id="button_wrapper">
							<li><input type="button" name="reply_list" id="reply_list" value="List" 
							onclick="location='board_reply_list.do'"/></li>
						</ul>
					</div>
				</section>
			</article>
		</div>
	</body>
</html>