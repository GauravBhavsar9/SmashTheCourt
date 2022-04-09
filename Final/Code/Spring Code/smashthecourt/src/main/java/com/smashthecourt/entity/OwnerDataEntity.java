package com.smashthecourt.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="owner_info_table")
public class OwnerDataEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="owner_id")
	private int ownerId;
	
	
	@OneToMany(cascade = CascadeType.ALL)
    private List<ClubDetailsEntity> ob;
	

	@Column(name="owner_first_name")
	private String firstName;

	@Column(name="owner_last_name")
	private String lastName;

	@Column(name="owner_email")
	private String email;

	@Column(name="owner_password")
	private String password;

	@Column(name="owner_moblie_no")
	private String mobileNo;

	@Column(name="owner_security_que")
	private String question;

	@Column(name="owner_security_ans")
	private String questionAns;

	@Column(name="owner_isactive")
	private boolean isActive;

	public OwnerDataEntity() {
		super();
	}

	public OwnerDataEntity(int ownerId, String firstName, String lastName, String email,
			String password, String mobileNo, String question, String questionAns, boolean isActive) {
		super();
		this.ownerId=ownerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.mobileNo = mobileNo;
		this.question = question;
		this.questionAns = questionAns;
		this.isActive = isActive;
	}

	public OwnerDataEntity( String firstName, String lastName, String email,
			String password, String mobileNo, String question, String questionAns, boolean isActive) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.mobileNo = mobileNo;
		this.question = question;
		this.questionAns = questionAns;
		this.isActive = isActive;
	}
	
	public int getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(int ownerId) {
		this.ownerId = ownerId;
	}


	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQuestionAns() {
		return questionAns;
	}

	public void setQuestionAns(String questionAns) {
		this.questionAns = questionAns;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	@Override
	public String toString() {
		return "OwnerDataEntity [ownerId=" + ownerId + ", ob=" + ob + ", firstName=" + firstName + ", lastName="
				+ lastName + ", email=" + email + ", password=" + password + ", mobileNo=" + mobileNo + ", question="
				+ question + ", questionAns=" + questionAns + ", isActive=" + isActive + "]";
	}
	


}