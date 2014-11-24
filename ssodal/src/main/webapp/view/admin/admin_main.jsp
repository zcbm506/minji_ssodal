<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 메인화면</title>
		<link rel="stylesheet" type="text/css" href="./css/admin.css"/>
		<link rel="stylesheet" type="text/css" href="./admin/board.css"/>
	</head>
	<body>
	<div id="aMain_wrap">
	<!-- 관리자 메인 상단 -->
		<div id="aMain_header">
		<!-- 관리자 로고 -->
			<div id="aMain_logo">
				<a href="admin_main.do" onfocus="this.blur();">
					<img src="./images/admin/admin_logo.gif"/>
				</a>
			</div>
			<!-- 관리자 메인 상단메뉴 -->
			<div id="aMain_menu">
				<ul>
					<li>
						<a href="admin_gongji_write.do" onfocus="this.blur();" >공지사항</a>
					</li>
					<li>
						<a href="admin_board_list.do" onfocus="this.blur();">게시판</a>
					</li>
					<li>
						<a href="admin_bbs_list.do" onfocus="this.blur();">자료실</a>
					</li>
					<li>
						<a href="admin_member_list.do" onfocus="this.blur();">회원관리</a>
					</li>
				</ul>
			</div>
			<!-- 관리자 메인 우측 메뉴 -->
			<div id="aMain_right">
				<form method="post" action="admin_logout.do">
					<table id="aMainLogin_t">
						<h3 class="aRight_title">${admin_name}님 로그인을 환영
						<input type="submit" value="로그아웃" class="input_b" /></h3>
					</table>
				</form>
			</div>
		</div>
		<div class="cleat"></div>
		
		<!-- 관리자 메인 본문 -->
		<div id="aMain_cont">
			<h2 class="aMainCont_title">관리자 메인화면 입니다</h2>
		</div>
	
	<div class="clear"></div>
	
	<!-- 관리자 메인 하단 -->
	<div id="aMain_footer">
		<h2 class="aMainFooter_title">서울시 강남구 역삼동 동신빌딩</h2>
	</div>
	</div>
	</body>
</html>