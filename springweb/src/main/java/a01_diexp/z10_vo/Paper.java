package a01_diexp.z10_vo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("paper")
public class Paper {
	private String comp;
	@Autowired(required = false)
	private Pen pen;
	public Paper() {
		// TODO Auto-generated constructor stub
	}
	public void checkPaperInfo() {
		System.out.println(comp+" 정보");
		if(comp!=null) {
			System.out.println("제조사정보:"+pen.getComp());
			System.out.println("가격정보:"+pen.getPrice());
		}else {
			System.out.println("컴퓨터 정보 없음");
		}
	}
	public Paper(String comp) {
		this.comp = comp;
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
