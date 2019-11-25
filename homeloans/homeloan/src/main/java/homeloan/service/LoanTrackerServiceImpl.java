package homeloan.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import homeloan.dao.LoanTrackerDaoIntf;
import homeloan.model.ApplicationStatus;

@Service("loanTrackerService")
public class LoanTrackerServiceImpl implements LoanTrackerServiceIntf {
	
	@Autowired
	public LoanTrackerDaoIntf loanTrackerDaoIntf;

	@Transactional
	public ApplicationStatus trackLoan(String applicationid) {
		
		return loanTrackerDaoIntf.trackLoan(applicationid);
	}

	
}
