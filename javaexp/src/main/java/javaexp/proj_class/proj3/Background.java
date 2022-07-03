package javaexp.proj_class.proj3;

public class Background {
	private String browser;
	private String PCorMob;
	private String situ;
	public Background() {
		// TODO Auto-generated constructor stub
	}
	public Background(String browser, String pCorMob, String situ) {
		this.browser = browser;
		this.PCorMob = pCorMob;
		this.situ = situ;
	}
	public void show() {
		System.out.println("browser:"+browser);
		System.out.println("PCorMob:"+PCorMob);
		System.out.println("situ:"+situ);
	}
	
	@Override
	public String toString() {
		return "Background [browser=" + browser + ", PCorMob=" + PCorMob + ", situ=" + situ + "]";
	}
	public String getBrowser() {
		return browser;
	}
	public void setBrowser(String browser) {
		this.browser = browser;
	}
	public String getPCorMob() {
		return PCorMob;
	}
	public void setPCorMob(String PCorMob) {
		this.PCorMob = PCorMob;
	}
	public String getSitu() {
		return situ;
	}
	public void setSitu(String situ) {
		this.situ = situ;
	}
	
	
}
