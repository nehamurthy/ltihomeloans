package homeloan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import homeloan.model.Admin;
import homeloan.service.AdminServiceIntf;

@Controller("adminController")
public class AdminController {

	@Autowired
	public AdminServiceIntf adminServiceIntf;
	
	@RequestMapping(value="/adminlogin", method=RequestMethod.GET)
	public ModelAndView getAdminLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("adminlogin");
		return mav;
	}
	
	@RequestMapping(value="/adminlogin", method=RequestMethod.POST)
	public ModelAndView adminLogin(HttpServletRequest request, HttpServletResponse response) {
		
		 ModelAndView mav = null;
		 Admin admin = new Admin();
		 String username = request.getParameter("username");
		 String password = request.getParameter("password");
		 
		 admin.setUsername(username);
		 admin.setPassword(password);
		 
		 boolean flag = adminServiceIntf.adminLogin(admin);
		 if(flag) {
			 
			 mav = new ModelAndView("viewapplicants");
		 }
		 else {
			 
			 mav = new ModelAndView("adminlogin");
		     mav.addObject("message", "Invalid username or password. Sign Up if not yet registered.");
		 }
		 
		 return mav;
	}
	
	@RequestMapping(value="/viewpendingapprovals", method=RequestMethod.GET)
	public ModelAndView viewPendingApprovals() {
		
		List<Object[]> pendinglist = adminServiceIntf.viewPendingApprovals();
		ModelAndView mav = new ModelAndView("viewapplicants");
		mav.addObject("pendinglist", pendinglist);
		return mav;
	}
}
