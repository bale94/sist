package javaexp.a07_multiObj;

import java.util.ArrayList;

import javaexp.z03_vo.BPlayer;
import javaexp.z03_vo.BTeam;
import javaexp.z03_vo.Mart;
import javaexp.z03_vo.Product;
//import javaexp.z03_vo.*;	해당패키지의 모든 클래스를 객체화하여 사용가능하게 import하는 방법

public class A10_OneVsMulti {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 1:다관계 객체 처리
		1. 프로그래밍에서 1:다관계의 내용은 자주 발생하는 프로그래밍 형태이다
		2. 하나의 클래스안에 여러개의 다중 선언된 클래스를 호출하여 선언하고 할당하는 경우를 말한다.
			1) 다른 종류의 여러가지 객체가 할당되는 경우
				ex) 컴퓨터안에 cpu, ram, hdd등 여러가지 다른 종류의 내용들이 할당되어 사용되는 경우
				class Computer{
					private String comp;
					private Cpu cpu;
					private Ram ram;
					private Hdd hdd;
					public void addCpu(Cpu cpu){
						this.cpu = cpu;
					}
					public void addRam(Ram ram){
						this.ram = ram;
					}
					..
					public void showInfo(){
						if(cpu!=null){
							cpu.showInfo();
						}else{
							System.out.println("cpu가 장착되지 않았습니다.");
						}
					}
				}
			2) 같은 종류의 여러가지 객체가 할당되는 경우
				ex) 마트안에 판매하는 여러개의 물품을 구매하는 경우
					배열, 동적배열, ArrayList<>를 통해 처리
			3) 하나의 클래스안에 같은 종류의 다중의 클래스 선언과 호출, 다른 종류의
				클래스의 선언과 호출
		3. 위 내용은 하나씩 객체를 할당하는 메서드를 사용하는 경우와 한꺼번에 할당하는 경우가 있다.
			1) 마트에서 물건을 하나씩 담는 경우
				ex)
				class Mart{
					private ArrayList<Product> plist; //다중의내용을 선언
					public Mart(String name){
						this.name = name;
						plist = new ArrayList<Product>();	//생성자를 통한 초기화 처리
					}
					//하나씩 물건을 담는 경우에는 생성자를 통하여 동적배열을 초기화 해줘야한다.
					public void buyOne(Product p){
						plist.add(p);	//1개씩 담는것
					}
				}
			2) 마트에서 세트로 물건을 바로 담는 경우
				class Mart{
					private ArrayList<Product> plist;	//다중읜용을 선언
					public void buyAll(ArrayList<Product> plist){	//리스트로담아버린다.
						this.plist = plist;
					}
				}
		4. 담은 다중의 물건을 확인할 때, 반복문을 활용한다.
			단, 이때도 조건처리로 해당 내용을 메모리로 확인하거나, 담은 갯수가 1이상인 경우로 처리하는 경우가 많다.
			public void calcuProd(){
				System.out.println(name+"마트에서 구매한 물건 계산");
				if(plist!=null && plist.size()>0){	//두가지 체크
					for(Product p:plist){
						p.showInfo();
					}				
				}
			}
		5. 구현 순서
			1) 다중으로 처리한 종속된 단위 객체를 위한 클래스 선언
			2) 해당 다중 객체를 포함할 클래스 선언
				- 필드: 사용된 속성, ArrayList<단위객체>
				- 초기 생성자 설정: 속성값 초기화, ArrayList<단위객체> 객체 생성
				- 다중의 데이터 처리할 입력 메소드 선언
				- 1:다관계로 출력하거나 리턴할 객체 선언
					if(list!=null && list.size()>0)
		
		 * 
		 * */
//		Product p = new Product("ㅅ과",3000,2);
//		System.out.println(p);
		Mart m = new Mart("행복");	//ctrl+shift+o 해서 import
		m.calcu();
		m.addCart(new Product("사과",3000,2));
		m.addCart(new Product("바나나",4000,3));
		m.addCart(new Product("딸기",12000,3));
		m.calcu();
		
		/*
		ex) BPlayer : 번호, 이름, 생년월일	show() 단위정보
			BTeam : 팀명, ArrayList<BPlayer>
				public void addPlayer(BPlayer bp)
				public void showTeamList()
				팀명과 등록된 선수 정보 출력
		1) package javaexp.z03_vo에
			BPlayer 클래스 선언
			BTeam 클래스 선언
		2) main() 호출처리
		 * */
		BTeam bt = new BTeam("두산");
		bt.showTeamList();
		//외부에서 등록할 멤버를 한번에 list형태로 만들어서 바로 할당처리 하는경우
		ArrayList<BPlayer> blist = new ArrayList<BPlayer>();
		blist.add(new BPlayer(70, "허삼영", "12432"));
		
		
		//한명씩 추가 처리하는경우
		bt.addPlayer(new BPlayer(14,"강백호","940293-1929392"));
		bt.addPlayer(new BPlayer(15,"구자욱","932293-8273626"));
		bt.addPlayer(new BPlayer(16,"김광현","923230-3143923"));
		bt.showTeamList();
		
		

	}

}
