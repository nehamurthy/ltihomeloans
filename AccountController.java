package homeloan.controller;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import homeloan.model.LoanAccount;
import homeloan.service.AccountServiceIntf;



@Controller("accountcontroller")
public class AccountController {

	@Autowired
	public AccountServiceIntf accountServiceIntf;

@RequestMapping(value = "/accountcheck", method = RequestMethod.POST)
	public ModelAndView trackAccount(HttpServletRequest request) {
		int accno=Integer.parseInt(request.getParameter("accno"));
		LoanAccount loanAccount = accountServiceIntf.trackAccount(accno);
		ModelAndView mav = new ModelAndView("accountcheck");
		mav.addObject("loanAccount",loanAccount);
mav.addObject("message","Your Account Balance Is:");
		
		return mav;
	}
}
