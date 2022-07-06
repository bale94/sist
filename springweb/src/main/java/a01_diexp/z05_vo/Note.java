package a01_diexp.z05_vo;

public class Note {
	private String comp;
	private Pen pen;
	public Note() {
		// TODO Auto-generated constructor stub
	}
	public Note(String comp) {
		this.comp = comp;
	}
	public void writing() {
		if(pen!=null) {
			System.out.println(comp+"산 노트에 "+pen.getComp()+"에서 만든 연필 "+pen.getName()+"로 쓴다");			
		}else {
			System.out.println("정보없음");
		}
	}
	
	public String getComp() {
		return comp;
	}
	public void setComp(String comp) {
		this.comp = comp;
	}
	public Pen getPen() {
		return pen;
	}
	public void setPen(Pen pen) {
		this.pen = pen;
	}
	
}
