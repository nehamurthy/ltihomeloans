package homeloan.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import homeloan.dao.AccountDaoIntf;
import homeloan.dao.LoanTrackerDaoIntf;
import homeloan.model.ApplicationStatus;
import homeloan.model.LoanAccount;

@Service("accountservice")
public class AccountServiceImpl implements AccountServiceIntf {
	
	@Autowired
	public AccountDaoIntf accountDaoIntf;

	@Transactional
	public LoanAccount trackAccount(int accno) {
		
	return  accountDaoIntf.trackAccount(accno);
	}

}
