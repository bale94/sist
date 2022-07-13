package springweb.a02_mvc.a04_vo;

public class JobAvg {
	public String job;
	public double avgsal;
	public JobAvg() {
		// TODO Auto-generated constructor stub
	}
	public JobAvg(String job, double avgsal) {
		this.job = job;
		this.avgsal = avgsal;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public double getAvgsal() {
		return avgsal;
	}
	public void setAvgsal(double avgsal) {
		this.avgsal = avgsal;
	}
	
}
