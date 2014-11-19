package com.ssodal.service;

import java.util.List;

import com.ssodal.bean.BoardReplyBean;

public interface BoardReplyService {

	List<BoardReplyBean> getBoardReplyList();

	void BoardReplyWrite(BoardReplyBean boardreplyBean);

	int totalCount(BoardReplyBean brb);

	int avrstars(BoardReplyBean brb);

	
}
