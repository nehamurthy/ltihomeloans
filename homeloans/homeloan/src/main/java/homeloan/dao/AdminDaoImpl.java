package homeloan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import homeloan.model.Admin;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDaoIntf {

	@PersistenceContext
	EntityManager em;
	
	public boolean adminLogin(Admin admin) {
		
		boolean flag = false;
		
		Admin a = null;
		 try {
			   
				String username =  admin.getUsername();
				String password = admin.getPassword();
				
				a = (Admin)em.createQuery("select a from Admin a where a.username=:username").setParameter("username", username).getSingleResult();
				
				if(( a.getUsername().equals(username) ) && ( a.getPassword().equals(password) ) ) {
					
					flag = true;
				}
				else flag = false;
			
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		return flag;
	}

	public List<Object[]> viewPendingApprovals() {
		
		Query query = em.createQuery("");
	}

	
}
