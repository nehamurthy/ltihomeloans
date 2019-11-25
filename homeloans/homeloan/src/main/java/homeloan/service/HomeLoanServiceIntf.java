package homeloan.service;

import homeloan.model.Applicants;
import homeloan.model.ApplicationStatus;
import homeloan.model.Documents;
import homeloan.model.IncomeSalaried;
import homeloan.model.IncomeSelfEmployed;
import homeloan.model.Loan;
import homeloan.model.Property;
import homeloan.model.Users;

public interface HomeLoanServiceIntf {

	public boolean registerUser(Users users);
	public boolean addApplicationInfo(Applicants applicants);
	public Users loginProcess(Users users);
	public boolean addIncomeSalariedInfo(IncomeSalaried incomeSalaried);
	public boolean addIncomeSelfEmployedInfo(IncomeSelfEmployed incomeSelfEmployed);
	public boolean addPropertyInfo(Property property);
	public boolean addLoanInfo(Loan loan);
	public boolean addDocuments(Documents documents);
	public boolean addApplicationStatus(ApplicationStatus applicationStatus);
}
