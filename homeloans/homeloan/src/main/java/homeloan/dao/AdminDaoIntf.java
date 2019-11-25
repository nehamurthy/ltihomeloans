package homeloan.dao;

import java.util.List;

import homeloan.model.Admin;

public interface AdminDaoIntf {

	public boolean adminLogin(Admin admin);
	public List<Object[]> viewPendingApprovals();
}
