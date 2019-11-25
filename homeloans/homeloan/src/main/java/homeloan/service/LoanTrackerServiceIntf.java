package homeloan.service;

import homeloan.model.ApplicationStatus;

public interface LoanTrackerServiceIntf {

	public ApplicationStatus trackLoan(String applicationid);
}
