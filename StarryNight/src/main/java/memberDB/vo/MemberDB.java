package memberDB.vo;

public class MemberDB {
	private String email;
	private String pass;
	private String name;
	private String birth;
	private int phone;
	private String address;
	private String auth;
	public MemberDB() {
		// TODO Auto-generated constructor stub
	}
	public MemberDB(String email, String pass, String name, String birth, int phone, String address, String auth) {
		this.email = email;
		this.pass = pass;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.address = address;
		this.auth = auth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	
	
}
