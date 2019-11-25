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
@Table(name="incomeselfemployed")
public class IncomeSelfEmployed {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int srno;
	@Column(length=50)
	private String turnover;
	@Column(length=50)
	private String natureofbusiness;
	@Column(length=50)
	private String businessvintage;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	public IncomeSelfEmployed() {
		super();
	}

	public int getSrno() {
		return srno;
	}

	public void setSrno(int srno) {
		this.srno = srno;
	}

	public String getTurnover() {
		return turnover;
	}

	public void setTurnover(String turnover) {
		this.turnover = turnover;
	}

	public String getNatureofbusiness() {
		return natureofbusiness;
	}

	public void setNatureofbusiness(String natureofbusiness) {
		this.natureofbusiness = natureofbusiness;
	}

	public String getBusinessvintage() {
		return businessvintage;
	}

	public void setBusinessvintage(String businessvintage) {
		this.businessvintage = businessvintage;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
}
