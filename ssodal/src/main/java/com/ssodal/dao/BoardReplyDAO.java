package com.ssodal.dao;

import java.util.List;

import com.ssodal.bean.BoardReplyBean;

public interface BoardReplyDAO {

	List<BoardReplyBean> getBoardReplyList();

	void BoardReplyWrite(BoardReplyBean boardreplyBean);

	int totalCount(BoardReplyBean brb);

	int avrstars(BoardReplyBean brb);

	

}
