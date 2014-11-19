<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		
    <!-- ----- CSS ----- -->
		<!-- ----- common ----- -->
		<link type="text/css" rel="stylesheet" href="../../bundle/css/common.css" />
		<!-- ----- write ----- -->
		<link type="text/css" rel="stylesheet" href="../../bundle/css/board/admin_index.css" />

	<!-- ----- Javascript ----- -->
		<!-- ----- JQuery ----- -->
		<script type="text/javascript" src="../../bundle/js/jquery-1.11.1.js"></script>
		<script>
			function admin_check(){
				if($.trim($("#admin_id").val())==""){
					alert("관리자 아이디를 입력하시오");
					$("#admin_id").val("").focus();
					return false;
				}
				if($.trim($("#admin_pwd").val())==""){
					alert("관리자 비번을 입력하시오");
					$("#admin_pwd").val("").focus();
					return false;
				}
			}
		</script>
		<title>SSODAL</title>
	</head>
	<body>
		<div id="wrapper">
			<form method="post" action="admin_login_ok.do" onsubmit="return admin_check();">
		    <article id="article">
		    	<section id="section_private">
		    		<div id="private_wrapper">
		    			<h3>ID</h3>
		    			<input name="admin_id" id="admin_id" placeholder="ID" />
		    			<h3>Password</h3>
		    			<input type="password" name="admin_pwd" id="admin_pwd" placeholder="Password" />
		    			<input type="submit" name="admin_login" id="private_send" value="Login" />
		    		</div>
		    	</section>
		    </article>
		    </form>
		</div>
	</body>
</html>