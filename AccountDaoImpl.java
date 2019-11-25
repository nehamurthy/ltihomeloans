package homeloan.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import homeloan.model.LoanAccount;

@Repository("accountdao")
public class AccountDaoImpl implements AccountDaoIntf{
	

	@PersistenceContext
	EntityManager em;
	
	
	public  LoanAccount trackAccount (int accno){
	Query query = em.createQuery("SELECT a.balance FROM LoanAccount a where a.accno=:accno");
	query.setParameter("accno", accno);
	LoanAccount loanaccount =(LoanAccount) query.getSingleResult();
	return loanaccount;
	}


	
		
	}
	
	
	
