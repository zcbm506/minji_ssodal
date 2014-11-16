<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        
    <!-- ----- CSS ----- -->
        <!-- ----- common ----- -->
        <link type="text/css" rel="stylesheet" href="./bundle/css/common.css" />
        <!-- ----- write ----- -->
        <link type="text/css" rel="stylesheet" href="./bundle/css/board_reply/board_reply_write.css" />
        <script src="./bundle/js/jquery-1.11.1.js"></script>
        <title>board_reply_write</title>
    </head>
    <body>
        <div id="wrapper">
            <article id="article">
                <section id="section_board_reply">
                    <div id="board_reply_wrapper">
                        <form method="post" action="board_reply_write_ok.do" onsubmit="return check_write">
                            <ul>
                                <li>
                                    <h3>Content</h3>
                                    <textarea name="board_reply_content" id="board_reply_content" placeholder="input"></textarea>
                                </li>
                            </ul>
                            <select name="board_reply_star" id="board_reply_star">
								<option value="1">&starf;&star;&star;&star;&star;</option>
								<option value="2">&starf;&starf;&star;&star;&star;</option>
								<option value="3">&starf;&starf;&starf;&star;&star;</option>
								<option value="4">&starf;&starf;&starf;&starf;&star;</option>
								<option value="5">&starf;&starf;&starf;&starf;&starf;</option>
							</select>
                            <div id="menu_wrapper">
                                <input type="submit" name="submit" id="submit" value="Write" />
                                <input type="reset" name="reset" id="reset" value="Reset" onclick="$('#board_reply_content').focus();"/>
                                <input type="button" name="list" id="list" value="List" onclick="location='board_reply_list.do?page=${page}';"/>
                            </div>
                        </form>
                    </div>
                </section>
            </article>
        </div>
    </body>
</html>