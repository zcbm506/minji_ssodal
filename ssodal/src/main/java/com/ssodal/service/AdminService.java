package com.ssodal.service;

import com.ssodal.bean.AdminBean;

public interface AdminService {

	void insertAdmin(AdminBean adminbean);

	AdminBean adminLogin(String admin_id);

}
