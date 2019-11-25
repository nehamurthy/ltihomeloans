package homeloan.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import homeloan.model.ApplicationStatus;

@Repository("loanTrackerDao")
public class LoanTrackerDaoImpl implements LoanTrackerDaoIntf {

	@PersistenceContext
	EntityManager em;
	
	public ApplicationStatus trackLoan(String applicationid) {
		
		Query query = em.createQuery("select a from ApplicationStatus a where a.applicationid=:appid");
		query.setParameter("appid", applicationid);
		ApplicationStatus applicationStatus = (ApplicationStatus)query.getSingleResult();
		return applicationStatus;
	}

	
}
