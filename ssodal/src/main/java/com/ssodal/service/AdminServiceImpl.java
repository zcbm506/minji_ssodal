package com.ssodal.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssodal.bean.AdminBean;
import com.ssodal.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;

	@Override
	public void insertAdmin(AdminBean adminbean) {
		adminDAO.insertAdmin(adminbean);
	}

	@Override
	public AdminBean adminLogin(String admin_id) {
		return adminDAO.adminLogin(admin_id);
	}
}
