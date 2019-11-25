package homeloan.service;

import java.util.List;

import homeloan.model.Admin;

public interface AdminServiceIntf {

	public boolean adminLogin(Admin admin);
	public List<Object[]> viewPendingApprovals();
	
}
