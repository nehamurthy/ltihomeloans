package homeloan.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="applicants")
public class Applicants {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int applicantid;
	@Column(length=10)
	private String phone;
	@Temporal(TemporalType.DATE)
	private Calendar dob;
	@Column(length=15)
	private String gender;
	@Column(length=15)
	private String nationality;
	@Column(length=12)
	private String aadharno;
	@Column(length=10)
	private String panno;
	
	@OneToOne
	@JoinColumn(name="userid")
	private Users users;

	//A no-arg constructor
	public Applicants() {
		super();
	}

	public int getApplicantid() {
		return applicantid;
	}


	public void setApplicantid(int applicantid) {
		this.applicantid = applicantid;
	}


	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Calendar getDob() {
		return dob;
	}

	public void setDob(Calendar dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getAadharno() {
		return aadharno;
	}

	public void setAadharno(String aadharno) {
		this.aadharno = aadharno;
	}

	public String getPanno() {
		return panno;
	}

	public void setPanno(String panno) {
		this.panno = panno;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}
	
	
	
}
