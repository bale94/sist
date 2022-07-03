package javaexp.Wori_transfer.vo;

public class WoriBANK {
//--memberNum/name/accountNum/PW/balance
	private int memberNum;
	private String name;
	private long accountNum;
	private int PW;
	private String PWs;
	private int balance;
	
	public WoriBANK() {
		
	}
	



	public WoriBANK(String name, long accountNum, String pWs) {
		super();
		this.name = name;
		this.accountNum = accountNum;
		this.PWs = pWs;
	}




	public String getPWs() {
		return PWs;
	}



	public void setPWs(String pWs) {
		this.PWs = pWs;
	}



	public WoriBANK(int memberNum, String name, long accountNum, int pW, int balance) {
		super();
		this.memberNum = memberNum;
		this.name = name;
		this.accountNum = accountNum;
		PW = pW;
		this.balance = balance;
	}



	public int getMemberNum() {
		return memberNum;
	}

	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public long getAccountNum() {
		return accountNum;
	}



	public void setAccountNum(long accountNum) {
		this.accountNum = accountNum;
	}



	public int getPW() {
		return PW;
	}

	public void setPW(int pW) {
		PW = pW;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}
	
	
	
	
	

}
