package homeloan.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import homeloan.model.ApplicationStatus;
import homeloan.service.LoanTrackerServiceIntf;

@Controller("loanTrackerController")
public class LoanTrackerController {

	@Autowired
	public LoanTrackerServiceIntf loanTrackerServiceIntf;
	
	@RequestMapping(value="/trackapp", method=RequestMethod.POST)
	public ModelAndView trackLoan(HttpServletRequest request, HttpServletResponse response) {
		
		String applicationid = request.getParameter("appid");
		ApplicationStatus applicationStatus = loanTrackerServiceIntf.trackLoan(applicationid);
		
		
		if(applicationStatus != null) {
			
			ModelAndView mav = new ModelAndView("loantracker");
			mav.addObject("appid",applicationid);
			mav.addObject("applicationstatus", applicationStatus);
			return mav;
		}
		
		else {
			
			ModelAndView mav = new ModelAndView("home");
			return mav;
		}
		
	}
}
