package com.ssodal.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssodal.bean.BoardReplyBean;

@Repository
public class BoardReplyDAOImpl implements BoardReplyDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<BoardReplyBean> getBoardReplyList() {
		
		return sqlSession.selectList("reply_list");
	}

	@Override
	public void BoardReplyWrite(BoardReplyBean boardreplyBean) {
		sqlSession.insert("reply_write",boardreplyBean);
		
	}
	
	
}
