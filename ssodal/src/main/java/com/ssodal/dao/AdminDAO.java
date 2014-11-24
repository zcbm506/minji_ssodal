package com.ssodal.dao;

import com.ssodal.bean.AdminBean;

public interface AdminDAO {

	void insertAdmin(AdminBean adminbean);

	AdminBean adminLogin(String admin_id);

}
