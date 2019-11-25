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
@Table(name="property")
public class Property {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int propertyid;
	@Column(length=30)
	private String propertyname;
	@Column(length=30)
	private String propertylocation;
	@Column(length=30)
	private String amount;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	public Property() {
		super();
	}

	public int getPropertyid() {
		return propertyid;
	}

	public void setPropertyid(int propertyid) {
		this.propertyid = propertyid;
	}

	public String getPropertyname() {
		return propertyname;
	}

	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}

	public String getPropertylocation() {
		return propertylocation;
	}

	public void setPropertylocation(String propertylocation) {
		this.propertylocation = propertylocation;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
}
