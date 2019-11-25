package homeloan.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import homeloan.model.Applicants;
import homeloan.model.ApplicationStatus;
import homeloan.model.Documents;
import homeloan.model.IncomeSalaried;
import homeloan.model.IncomeSelfEmployed;
import homeloan.model.Loan;
import homeloan.model.Property;
import homeloan.model.Users;
import homeloan.service.HomeLoanServiceIntf;

@Controller("homeLoanController")
public class HomeLoanController {

	@Autowired
	public HomeLoanServiceIntf homeLoanServiceIntf;
	
	/*
	 * Method to access the registration page (i.e. rendering on the browser)
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	  public ModelAndView getRegisterUserPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("registration");
        mav.addObject("user", new Users());
        return mav;		
	}
	
	/*
	 * Method to be executed after registration form submission
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	 public ModelAndView registerUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") Users users) {
			
		//System.out.println(users.getFirstname());
		//long id =new Date().getTime();
		boolean flag = homeLoanServiceIntf.registerUser(users);
		if(flag) {
		    ModelAndView mav = new ModelAndView("login");
		    mav.addObject("login", new Users());
		    return mav;
		    }
		    else {
		    	ModelAndView mav = new ModelAndView("UserRegister");
		        mav.addObject("user", new Users());
		        //mav.addObject("status","Sorry! Registration in incomplete");
		        return mav;	
		    }
	  }
	
	/*
	 * Method to access the login page (i.e. rendering on the browser)
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView getLoginPage(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") Users users) {
		ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new Users());
      return mav;		
	}
	
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		 
	    ModelAndView mav = null;
	    String email = request.getParameter("email");
	    String password = request.getParameter("pwd");
	    Users user1 = new Users();
	    user1.setEmail(email);
	    user1.setPassword(password);
	    Users u = homeLoanServiceIntf.loginProcess(user1);
	    if(u != null) {
	    int userid = u.getUserid();
	   // System.out.println(flag);
	    String firstname = u.getFirstname().toUpperCase();
	    String lastname = u.getLastname().toUpperCase();
	    	session.setAttribute("userid", userid);
	    	session.setAttribute("firstname", firstname);
	    	session.setAttribute("lastname", lastname);
	      mav = new ModelAndView("applicationform");
	    }
	    else {
	      mav = new ModelAndView("login");
	      mav.addObject("message", "Invalid username or password. Sign Up if not yet registered.");
	    }
	    return mav;
	  }
	
	/*
	 * Method to access the application form page (i.e. rendering on the browser)
	 */
	/*@RequestMapping(value = "/getapplication", method = RequestMethod.POST)
	  public ModelAndView getApplicationFormPage(HttpSession session) {
		
		
		session.setAttribute("userid", 47);
		
		ModelAndView mav = new ModelAndView("applicationform");
      mav.addObject("applicants", new Applicants());
      return mav;		
	}*/
	
	
	/*
	 * Method to be executed after Personal Details form submission
	 */
	@RequestMapping(value = "/application", method = RequestMethod.POST)
	 public ModelAndView addApplicationInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam("file") MultipartFile files[]) throws ParseException {
		Integer userid=(Integer)session.getAttribute("userid");
		String firstname = (String)session.getAttribute("firstname");
		String lastname = (String)session.getAttribute("lastname");
		
		/*
		 * Store personal details
		 */
		System.out.println("Controller for application form called");
		String phone = request.getParameter("phone");
		String dob = request.getParameter("dob");
		String gender = request.getParameter("gender");
		String nationality = request.getParameter("nationality");
		String aadharno = request.getParameter("aadharno");
		String panno = request.getParameter("panno");
		//System.out.println(phone+"\t"+dob);
		Applicants applicants = new Applicants();
		applicants.setPhone(phone);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = sdf.parse(dob);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
 			
 		
		applicants.setDob(cal);
		applicants.setGender(gender);
		applicants.setNationality(nationality);
		applicants.setAadharno(aadharno);
		applicants.setPanno(panno);
		Users user = new Users();
		user.setUserid(userid);
		applicants.setUsers(user);
		
		/*
		 * Store income details
		 */
		
		IncomeSalaried incomeSalaried = new IncomeSalaried();
		IncomeSelfEmployed incomeSelfEmployed = new IncomeSelfEmployed();
		
		String typeofemp = request.getParameter("typeofemp");
		
		
		
		if(typeofemp.equals("salaried")) {
			
			Integer retirementage = Integer.parseInt(request.getParameter("retire"));
			String monthlysalary = request.getParameter("msal");
			String otype = request.getParameter("otype");
			incomeSalaried.setRetirementage(retirementage);
			incomeSalaried.setMonthlysalary(monthlysalary);
			incomeSalaried.setOrganization(otype);
			user.setUserid(userid);
			incomeSalaried.setUsers(user);
		}
		else if(typeofemp.equals("self-employed")) {
			
			String turnover = request.getParameter("turnover");
			String natureofbusiness = request.getParameter("nob");
			String vintage = request.getParameter("vintage");
			incomeSelfEmployed.setTurnover(turnover);
			incomeSelfEmployed.setNatureofbusiness(natureofbusiness);
			incomeSelfEmployed.setBusinessvintage(vintage);
			user.setUserid(userid);
			incomeSelfEmployed.setUsers(user);
		}
		
		/*
		 * Store property details
		 */
		String isProp = request.getParameter("prop");
		System.out.println("IsProp: "+isProp);
		String propertylocation = request.getParameter("ploc");
		String propertyname = request.getParameter("pname");
		String amount = request.getParameter("eamt");
		
		Property property = new Property();
		property.setPropertylocation(propertylocation);
		property.setPropertyname(propertyname);
		property.setAmount(amount);
		
		user.setUserid(userid);
		property.setUsers(user);
		
		/*
		 * Store loan details
		 */
		String loanamount = request.getParameter("lamt");
		String tenure = request.getParameter("tenure");
		String downpayment = request.getParameter("downpayment");
		String downpayment_pct = request.getParameter("downpayment_pct");
		
		Loan loan = new Loan();
		loan.setLoanamount(loanamount);
		loan.setTenure(tenure);
		loan.setDownpayment(downpayment);
		loan.setDownpayment_pct(downpayment_pct);
		user.setUserid(userid);
		loan.setUsers(user);
		
		/*
		 * Documents upload
		 */
		Documents documents = new Documents();
		for (int i = 0; i < files.length; i++) {
			String filename="";
			if(i==0)
				filename=userid+"idproof"+".pdf";
				else if(i==1)
					filename=userid+"ageproof"+".pdf";
				else if(i==2)
					filename=userid+"addressproof"+".pdf";
				else if(i==3)
					filename=userid+"incomeproof"+".pdf";
				else if(i==4)
					filename=userid+"propertyproof"+".pdf";
			MultipartFile file = files[i];
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()+ File.separator + filename);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				
				if(i==0)
					documents.setIdproof(filename);
				else if(i==1)
					documents.setAgeproof(filename);
				else if(i==2)
					documents.setAddressproof(filename);
				else if(i==3)
					documents.setIncomeproof(filename);
				else if(i==4)
					documents.setPropertyproof(filename);
				//user.setStatus("N");
				
				System.out.println("Server File Location="+ serverFile.getAbsolutePath());
				} catch (Exception e) {
				System.out.println( "You failed to upload " + filename + " => " + e.getMessage());
			}
		}
		user.setUserid(userid);
		documents.setUsers(user);
		
		/*
		 * Generate Application ID
		 */
		String lastTwoChars = firstname.substring(firstname.length() - 2);
		String firstTwoChars = lastname.substring(0, 2);
		String applicationid = lastTwoChars + userid + firstTwoChars;
		
		int noOfDays = 14; 
	     Calendar cal1 = Calendar.getInstance();
	     Date cdate = cal1.getTime();
	     cal1.add(Calendar.DAY_OF_YEAR, noOfDays);
	     
	     ApplicationStatus applicationStatus = new ApplicationStatus();
	     applicationStatus.setApplicationid(applicationid);
	     applicationStatus.setAppointmentdate(cal1);
	     applicationStatus.setStatus("NV");
	     
	     user.setUserid(userid);
	     applicationStatus.setUsers(user); 
		
		
		boolean flag1 = homeLoanServiceIntf.addApplicationInfo(applicants);
		boolean flag2 = homeLoanServiceIntf.addIncomeSalariedInfo(incomeSalaried);
		boolean flag3 = homeLoanServiceIntf.addIncomeSelfEmployedInfo(incomeSelfEmployed);
		boolean flag4 = homeLoanServiceIntf.addPropertyInfo(property);
		boolean flag5 = homeLoanServiceIntf.addLoanInfo(loan);
		boolean flag6 = homeLoanServiceIntf.addDocuments(documents);
		boolean flag7 = homeLoanServiceIntf.addApplicationStatus(applicationStatus);
		
		if(flag1 && flag2 && flag3 && flag4 && flag5 && flag6 && flag7) {
		    ModelAndView mav = new ModelAndView("welcomeuser");
		    mav.addObject("applicationid", applicationid);
		   // mav.addObject("login", new Users());
		    return mav;
		    }
		    else {
		    	ModelAndView mav = new ModelAndView("applicationform");
		    	
		        mav.addObject("user", new Users());
		        //mav.addObject("status","Sorry! Registration in incomplete");
		        return mav;	
		    }
	  }
	
	@RequestMapping(value = "/calculator", method = RequestMethod.GET)
	  public ModelAndView getLoginPage(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("calculator");
     // mav.addObject("user", new Users());
    return mav;		
	}
}
