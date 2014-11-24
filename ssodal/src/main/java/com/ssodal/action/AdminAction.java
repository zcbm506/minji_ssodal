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
		
		//adminbean.setAdmin_name("관리자");
		//this.adminService.insertAdmin(adminbean);
		//return "redirect:/admin_index.do";
		

		AdminBean admin_pwd=adminService.adminLogin(adminbean.getAdmin_id());
		 if(admin_pwd == null){
	    	 out.println("<script>");
	    	 out.println("alert('관리자 정보가 없습니다!');");
	    	 out.println("history.back();");
	    	 out.println("</script>");
	     }else{
	         if(!admin_pwd.getAdmin_pwd().equals(
	        		 adminbean.getAdmin_pwd())){
	        	 out.println("<script>");
	        	 out.println("alert('관리자 비번이 다릅니다!');");
	        	 out.println("history.back();");
	        	 out.println("</script>");
	         }else{
	        	 session.setAttribute("admin_id",adminbean.getAdmin_id());
	        	 session.setAttribute("admin_name",
	        			 admin_pwd.getAdmin_name());
	        	 return "redirect:/admin_main.do";
	         }
		}
		return null;
	}
	
		@RequestMapping("admin_main")
		public String amdin_main(HttpServletResponse response, HttpServletRequest request,
				HttpSession session) throws Exception{
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			session=request.getSession();
			
			String admin_id=(String)session.getAttribute("admin_id");
			if(admin_id==null){
				out.println("<script>");
				out.println("alert('다시로그인하세요';");
				out.println("location='admin_index.do';");
				out.println("</script>");
			}else{
				return "admin/admin_main";
			}
			
			return null;
		}
}
