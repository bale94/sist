package Wori;

public class WoriBANK {
//--memberNum/name/accountNum/PW/balance
	private int memberNum;
	private String name;
	private String id;
	private long accountNum;
	private int PW;
	private String webPW;
	private int balance;
	private String phone;
	private String cardNum;
	private String bankName;
	private String accountName;
	
	public WoriBANK() {
		
	}
	

	public WoriBANK(long accountNum, String accountName, String bankName) {
		super();
		this.accountNum = accountNum;
		this.accountName = accountName;
		this.bankName = bankName;
	}


	public WoriBANK(String id, String webPW, String name, 
			long accountNum, String phone, String cardNum) {
		super();
		this.id = id;
		this.webPW = webPW;
		this.name = name;
		this.accountNum = accountNum;
		this.phone = phone;
		this.cardNum = cardNum;
	}


	public WoriBANK(String id, String webPW, String name, long accountNum) {
		super();
		this.id = id;
		this.webPW = webPW;
		this.name = name;
		this.accountNum = accountNum;
	}



	public WoriBANK(String name, long accountNum, String webPW) {
		super();
		this.name = name;
		this.accountNum = accountNum;
		this.webPW = webPW;
	}
	


	public WoriBANK(int memberNum, String id, String webPW, String name, long accountNum) {
		super();
		this.memberNum = memberNum;
		this.id = id;
		this.webPW = webPW;
		this.name = name;
		this.accountNum = accountNum;
	}


	public WoriBANK(String name, String webPW, long accountNum) {
		super();
		this.name = name;
		this.webPW = webPW;
		this.accountNum = accountNum;
	}

	public WoriBANK(int memberNum, String name, long accountNum, int pW, int balance) {
		super();
		this.memberNum = memberNum;
		this.name = name;
		this.accountNum = accountNum;
		PW = pW;
		this.balance = balance;
	}
	
	
	
	public String getBankName() {
		return bankName;
	}


	public void setBankName(String bankName) {
		this.bankName = bankName;
	}


	public String getAccountName() {
		return accountName;
	}


	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}


	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	
	public String getPhone() {
		return phone;
	}
	
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public String getWebPW() {
		return webPW;
	}
	
	
	
	public void setWebPW(String webPW) {
		this.webPW = webPW;
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
