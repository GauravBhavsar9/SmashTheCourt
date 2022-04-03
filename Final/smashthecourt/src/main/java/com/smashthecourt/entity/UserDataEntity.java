package com.smashthecourt.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
//Done 27/02
@Entity
@Table(name="user_info_table")
public class UserDataEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userId;
	@Column(name = "user_first_name")
	private String firstName;
	@Column(name = "user_last_name")
	private String lastName;
	@Column(name = "user_email")
	private String email;
	@Column(name = "user_password")
	private String password;
	@Column(name = "user_moblie_no")
	private String mobileNo;
	@Column(name = "user_gender")
	private String gender;
	@Column(name = "user_address")
	private String address;
	@Column(name = "user_security_que")
	private String question;
	@Column(name = "user_security_ans")
	private String answer;
	
	
	public UserDataEntity() {
		super();
	}


	public UserDataEntity( String firstName, String lastName, String email, String password, String mobileNo,
			String gender, String address, String question, String answer) {
		super();
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.mobileNo = mobileNo;
		this.gender = gender;
		this.address = address;
		this.question = question;
		this.answer = answer;
	}

	public UserDataEntity(  int userId,String firstName, String lastName, String email, String password, String mobileNo,
			String gender, String address, String question, String answer) {
		super();
		this.userId=userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.mobileNo = mobileNo;
		this.gender = gender;
		this.address = address;
		this.question = question;
		this.answer = answer;
	}

	public int getUserId() {
		return userId;
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


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	@Override
	public String toString() {
		return "UserDataEntity [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", password=" + password + ", mobileNo=" + mobileNo + ", gender=" + gender + ", address="
				+ address + ", question=" + question + ", answer=" + answer + "]";
	}

	

	
	
	
}
