package com.ssodal.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssodal.bean.AdminBean;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertAdmin(AdminBean adminbean) {
		sqlSession.insert("admin_in",adminbean);
	}
}
