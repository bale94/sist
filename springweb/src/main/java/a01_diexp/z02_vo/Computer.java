package a01_diexp.z02_vo;

public class Computer {
	private String kind;
	private Cpu cpu;
	public Computer() {
		// TODO Auto-generated constructor stub
	}
	public Computer(String kind) {
		this.kind = kind;
	}
	
	public void checkComInfo() {
		System.out.println(kind+" 정보");
		if(cpu!=null) {
			System.out.println("Cpu정보:"+cpu.getSpec());
			System.out.println("제조사정보:"+cpu.getComp());
		}else {
			System.out.println("컴퓨터 정보 없음");
		}
	}
	
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public Cpu getCpu() {
		return cpu;
	}
	public void setCpu(Cpu cpu) {
		this.cpu = cpu;
	}
	
	

}
