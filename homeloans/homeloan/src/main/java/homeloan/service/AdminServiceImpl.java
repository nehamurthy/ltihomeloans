package homeloan.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import homeloan.dao.AdminDaoIntf;
import homeloan.model.Admin;

@Service("adminService")
public class AdminServiceImpl implements AdminServiceIntf {

	@Autowired
	public AdminDaoIntf adminDaoIntf;
	
	@Transactional
	public boolean adminLogin(Admin admin) {
		
		return adminDaoIntf.adminLogin(admin);
	}

	@Transactional
	public List<Object[]> viewPendingApprovals() {
		
		return adminDaoIntf.viewPendingApprovals();
	}

	
	
}
