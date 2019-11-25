package homeloan.dao;

import homeloan.model.ApplicationStatus;

public interface LoanTrackerDaoIntf {

	public ApplicationStatus trackLoan(String applicationid);
}
