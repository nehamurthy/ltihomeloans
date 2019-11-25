package homeloan.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import homeloan.dao.HomeLoanDaoIntf;
import homeloan.model.Applicants;
import homeloan.model.ApplicationStatus;
import homeloan.model.Documents;
import homeloan.model.IncomeSalaried;
import homeloan.model.IncomeSelfEmployed;
import homeloan.model.Loan;
import homeloan.model.Property;
import homeloan.model.Users;

@Service("homeLoanService")
public class HomeLoanServiceImpl implements HomeLoanServiceIntf {

	@Autowired
	public HomeLoanDaoIntf homeLoanDaoIntf;
	
	@Transactional
	public boolean registerUser(Users users) {
		
		return homeLoanDaoIntf.registerUser(users);
	}
	
	@Transactional
	public boolean addApplicationInfo(Applicants applicants) {
		
		return homeLoanDaoIntf.addApplicationInfo(applicants);
	}

	@Transactional
	public Users loginProcess(Users users) {

		return homeLoanDaoIntf.loginProcess(users);
	}

	@Transactional
	public boolean addIncomeSalariedInfo(IncomeSalaried incomeSalaried) {
		return homeLoanDaoIntf.addIncomeSalariedInfo(incomeSalaried);
	}

	@Transactional
	public boolean addIncomeSelfEmployedInfo(IncomeSelfEmployed incomeSelfEmployed) {
		return homeLoanDaoIntf.addIncomeSelfEmployedInfo(incomeSelfEmployed);
	}

	@Transactional
	public boolean addPropertyInfo(Property property) {
		return homeLoanDaoIntf.addPropertyInfo(property);
	}

	@Transactional
	public boolean addLoanInfo(Loan loan) {
		return homeLoanDaoIntf.addLoanInfo(loan);
	}

	@Transactional
	public boolean addDocuments(Documents documents) {
		return homeLoanDaoIntf.addDocuments(documents);
	}

	@Transactional
	public boolean addApplicationStatus(ApplicationStatus applicationStatus) {
		return homeLoanDaoIntf.addApplicationStatus(applicationStatus);
	}
	
	
	
}
