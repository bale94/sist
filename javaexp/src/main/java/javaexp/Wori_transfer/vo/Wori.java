package javaexp.Wori_transfer.vo;

public class Wori {

	private int serial;
	private int bankserial;
	private int account;
	private String name;
	private int balance;
	public Wori() {
		// TODO Auto-generated constructor stub
	}
	public Wori(int serial, int bankserial, int account, String name, int balance) {
		super();
		this.serial = serial;
		this.bankserial = bankserial;
		this.account = account;
		this.name = name;
		this.balance = balance;
	}
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public int getBankserial() {
		return bankserial;
	}
	public void setBankserial(int bankserial) {
		this.bankserial = bankserial;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	
}
