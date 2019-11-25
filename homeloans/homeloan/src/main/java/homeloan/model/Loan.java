package homeloan.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="loan")
public class Loan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int loanid;
	@Column(length=30)
	private String loanamount;
	@Column(length=30)
	private String tenure;
	@Column(length=30)
	private String downpayment;
	@Column(length=30)
	private String downpayment_pct;
	@Column(length=30)
	private String emiamount;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	public Loan() {
		super();
	}

	public int getLoanid() {
		return loanid;
	}

	public void setLoanid(int loanid) {
		this.loanid = loanid;
	}

	public String getLoanamount() {
		return loanamount;
	}

	public void setLoanamount(String loanamount) {
		this.loanamount = loanamount;
	}

	public String getTenure() {
		return tenure;
	}

	public void setTenure(String tenure) {
		this.tenure = tenure;
	}

	public String getDownpayment() {
		return downpayment;
	}

	public void setDownpayment(String downpayment) {
		this.downpayment = downpayment;
	}

	public String getDownpayment_pct() {
		return downpayment_pct;
	}

	public void setDownpayment_pct(String downpayment_pct) {
		this.downpayment_pct = downpayment_pct;
	}

	public String getEmiamount() {
		return emiamount;
	}

	public void setEmiamount(String emiamount) {
		this.emiamount = emiamount;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
}
