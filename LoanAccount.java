package homeloan.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table( name="loanaccount")
public class LoanAccount {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int accno;
	private double balance;
	
	@OneToOne
	@JoinColumn(name="userid")
	
	private Users user;
	public LoanAccount() {
		super();
	}

	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}

	
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	
	

	
	

}
