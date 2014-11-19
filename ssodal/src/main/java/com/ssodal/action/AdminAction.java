package com.ssodal.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssodal.bean.AdminBean;
import com.ssodal.service.AdminService;

@Controller
public class AdminAction {

	@Autowired
	private AdminService adminService;
	
	//로그인폼
	@RequestMapping("/admin_index.do")
	public String admin_index(){
		return "admin/admin_index";
	}
	
	
	//관리자 로그인 인증,비번저장
	@RequestMapping("/admin_login_ok")
	public String admin_login_ok(@ModelAttribute AdminBean adminbean,
			HttpServletResponse response, HttpServletRequest request,
			HttpSession session) throws Exception {
		
		response.setContentType("text/thml;charset=UTF-8");
		PrintWriter out=response.getWriter();
		session=request.getSession();
		
		this.adminService.insertAdmin(adminbean);
		return "redirect:/admin_index.do";
	}
}
