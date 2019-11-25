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
@Table(name="documents")
public class Documents {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int srno;
	@Column(length=90)
	private String idproof;
	@Column(length=90)
	private String ageproof;
	@Column(length=90)
	private String addressproof;
	@Column(length=90)
	private String incomeproof;
	@Column(length=90)
	private String propertyproof;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	public Documents() {
		super();
	}

	public int getSrno() {
		return srno;
	}

	public void setSrno(int srno) {
		this.srno = srno;
	}

	public String getIdproof() {
		return idproof;
	}

	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}

	public String getAgeproof() {
		return ageproof;
	}

	public void setAgeproof(String ageproof) {
		this.ageproof = ageproof;
	}

	public String getAddressproof() {
		return addressproof;
	}

	public void setAddressproof(String addressproof) {
		this.addressproof = addressproof;
	}

	public String getIncomeproof() {
		return incomeproof;
	}

	public void setIncomeproof(String incomeproof) {
		this.incomeproof = incomeproof;
	}

	public String getPropertyproof() {
		return propertyproof;
	}

	public void setPropertyproof(String propertyproof) {
		this.propertyproof = propertyproof;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
}
