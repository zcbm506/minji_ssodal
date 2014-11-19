package com.ssodal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssodal.bean.BoardReplyBean;
import com.ssodal.dao.BoardReplyDAO;

@Service
public class BoardReplyServiceImpl implements BoardReplyService {

	@Autowired
	private BoardReplyDAO boardreplyDAO;

	@Override
	public List<BoardReplyBean> getBoardReplyList() {
	
		return boardreplyDAO.getBoardReplyList();
	}

	@Override
	public void BoardReplyWrite(BoardReplyBean boardreplyBean) {
		boardreplyDAO.BoardReplyWrite(boardreplyBean);
		
	}

	@Override
	public int totalCount(BoardReplyBean brb) {
		return boardreplyDAO.totalCount(brb);
	}

	@Override
	public double avrstars(BoardReplyBean brb) {
		return boardreplyDAO.avrstars(brb);
	}




}
