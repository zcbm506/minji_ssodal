package com.ssodal.bean;

public class BoardReplyBean {

	private int board_reply_no;
	private String board_reply_name;
	private int board_reply_star;
	private String board_reply_content;
	private int board_reply_origin;
	private String board_reply_date;
	
	public int getBoard_reply_no() {
		return board_reply_no;
	}
	public void setBoard_reply_no(int board_reply_no) {
		this.board_reply_no = board_reply_no;
	}
	public String getBoard_reply_name() {
		return board_reply_name;
	}
	public void setBoard_reply_name(String board_reply_name) {
		this.board_reply_name = board_reply_name;
	}
	public int getBoard_reply_star() {
		return board_reply_star;
	}
	public void setBoard_reply_star(int board_reply_star) {
		this.board_reply_star = board_reply_star;
	}
	public String getBoard_reply_content() {
		return board_reply_content;
	}
	public void setBoard_reply_content(String board_reply_content) {
		this.board_reply_content = board_reply_content;
	}
	public int getBoard_reply_origin() {
		return board_reply_origin;
	}
	public void setBoard_reply_origin(int board_reply_origin) {
		this.board_reply_origin = board_reply_origin;
	}
	public String getBoard_reply_date() {
		return board_reply_date;
	}
	public void setBoard_reply_date(String board_reply_date) {
		this.board_reply_date = board_reply_date.substring(0,10);
	}
	
	
}