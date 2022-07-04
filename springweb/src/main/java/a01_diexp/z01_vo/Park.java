package a01_diexp.z01_vo;

public class Park {
	private String name;
	private Visitor visitor;
	public Park() {
		// TODO Auto-generated constructor stub
	}
	public Park(String name) {
		this.name = name;
	}
	public void visiting() {
		if(visitor!=null) {
			System.out.println(name+"에 "+visitor.getGender()+"인 "+visitor.getName()+"이 방문했다");
		}else {
			System.out.println("정보없음");
		}
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Visitor getVisitor() {
		return visitor;
	}
	public void setVisitor(Visitor visitor) {
		this.visitor = visitor;
	}
	
}
