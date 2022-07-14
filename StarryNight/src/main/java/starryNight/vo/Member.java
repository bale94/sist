package starryNight.vo;

import java.util.Date;

public class Member {
	/*
	CREATE TABLE member (
	member_no NUMBER NOT NULL,  회원번호 
	email VARCHAR2(100), 이메일 
	pswd VARCHAR2(100),  비밀번호 
	name VARCHAR2(100),  이름 
	birthDate DATE,  생년월일 
	contact VARCHAR2(20),  연락처 
	address VARCHAR2(200),  주소 
	auth CHAR(1)  권한 
);
	 * */
	private int member_no;
	private String email;
	private String pswd;
	private String name;
	private Date birthDate;
	private String contact;
	private String address;
	private char auth;
	public Member() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Member(String email, String pswd, String name, Date birthDate, String contact, String address) {
		this.email = email;
		this.pswd = pswd;
		this.name = name;
		this.birthDate = birthDate;
		this.contact = contact;
		this.address = address;
	}


	public Member(int member_no, String email, String pswd, String name, Date birthDate, String contact, String address,
			char auth) {
		this.member_no = member_no;
		this.email = email;
		this.pswd = pswd;
		this.name = name;
		this.birthDate = birthDate;
		this.contact = contact;
		this.address = address;
		this.auth = auth;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public char getAuth() {
		return auth;
	}
	public void setAuth(char auth) {
		this.auth = auth;
	}
	
	
}
