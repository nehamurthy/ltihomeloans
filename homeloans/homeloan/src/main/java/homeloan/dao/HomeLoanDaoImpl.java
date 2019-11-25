package homeloan.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import homeloan.model.Applicants;
import homeloan.model.ApplicationStatus;
import homeloan.model.Documents;
import homeloan.model.IncomeSalaried;
import homeloan.model.IncomeSelfEmployed;
import homeloan.model.Loan;
import homeloan.model.Property;
import homeloan.model.Users;

@Repository("homeLoanDao")
public class HomeLoanDaoImpl implements HomeLoanDaoIntf {

	@PersistenceContext
	EntityManager em;
	
	public boolean registerUser(Users users) {
		
		 boolean flag=false;
		    try {
			   
				em.persist(users);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}
	
	public boolean addApplicationInfo(Applicants applicants) {
		
		boolean flag=false;
	    try {
		    
			em.persist(applicants);
			
			System.out.println("Done");
			flag=true;
	    }
	    catch(Exception e) { 
	    	System.out.println("Error:"+e);
	    }
	    return flag;
	}

	public Users loginProcess(Users users) {
		
		int flag = 0;
		Users u = null;
		 try {
			   
				String emailid =  users.getEmail();
				String password = users.getPassword();
				
				u = (Users)em.createQuery("select u from Users u where  u.email=:emailid").setParameter("emailid", emailid).getSingleResult();
				
				if(( u.getEmail().equals(emailid) ) && ( u.getPassword().equals(password) ) ) {
					
					flag = 1;
				}
				else flag = 0;
			
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		 if(flag == 1)
		 	return u;
		 else return null;
		}

	public boolean addIncomeSalariedInfo(IncomeSalaried incomeSalaried) {

		 boolean flag=false;
		    try {
			   
				em.persist(incomeSalaried);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}

	public boolean addIncomeSelfEmployedInfo(IncomeSelfEmployed incomeSelfEmployed) {
		 boolean flag=false;
		    try {
			   
				em.persist(incomeSelfEmployed);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}

	public boolean addPropertyInfo(Property property) {
		 boolean flag=false;
		    try {
			   
				em.persist(property);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}

	public boolean addLoanInfo(Loan loan) {
		 boolean flag=false;
		    try {
			   
				em.persist(loan);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}

	public boolean addDocuments(Documents documents) {
		 boolean flag=false;
		    try {
			   
				em.persist(documents);
				
				System.out.println("end");
				flag=true;
		    }
		    catch(Exception e) { 
		    	System.out.println("Error:"+e);
		    }
		    return flag;
	}

	public boolean addApplicationStatus(ApplicationStatus applicationStatus) {
		
		boolean flag=false;
	    try {
		   
			em.persist(applicationStatus);
			
			System.out.println("end");
			flag=true;
	    }
	    catch(Exception e) { 
	    	System.out.println("Error:"+e);
	    }
	    return flag;
	}

	
	
	/*public Users loginProcess(Users users) {
		
		//boolean result=false;
		Users u = null;
		try{
		
		//code for jpa
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("pu");
			EntityManager em = emf.createEntityManager();
		
		u=em.find(Users.class,users.getUserid());
		System.out.println(u.getUserid());
		//System.out.println(result+"1");
	
		
		if(u!=null)
		{
			if(u.getPassword().equals(users.getPassword()))
				{
				result=true;
			    
				}
		}
		
		em.close();
	}
		catch(Exception e)
		{
			System.out.println("error:"+e);
		}
		//System.out.println(result+"4");
		return u;
	}*/

	
}
