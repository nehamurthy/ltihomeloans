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
@Table(name="incomesalaried")
public class IncomeSalaried {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int srno;
	private int retirementage;
	@Column(length=50)
	private String monthlysalary;
	@Column(length=50)
	private String organization;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	public IncomeSalaried() {
		super();
	}

	public int getSrno() {
		return srno;
	}

	public void setSrno(int srno) {
		this.srno = srno;
	}

	public int getRetirementage() {
		return retirementage;
	}

	public void setRetirementage(int retirementage) {
		this.retirementage = retirementage;
	}

	public String getMonthlysalary() {
		return monthlysalary;
	}

	public void setMonthlysalary(String monthlysalary) {
		this.monthlysalary = monthlysalary;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
}
