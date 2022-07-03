package javaexp.a04_process;

public class A03_Switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# switch문
		1. 변수나 연산식의 값에 따라 실행문 선택할 때 사용한다.
		2. 기본 형식
			switch(변수){
				case 값1: 
					처리할 내용
					break;
				case 값2:
					처리할 내용
					break;
				default:
					상단에 선언한 값이 아닌경우.
			}
		 * */
		int btnNum = 1; //특정한 공간에 스위치버튼 클릭
		switch(btnNum) {
			case 1:
				System.out.println("A구역에 불이 켜졌습니다.");
				break;
			case 2:
				System.out.println("B구역에 불이 켜졌습니다.");
			case 3:
				System.out.println("C구역에 불이 켜졌습니다.");
			default:
				System.out.println("해당 버튼은 지정된 버튼이 아닙니다.");
		}
		/*
		 ex) 주사위 번호를 변수로 선언해서 1,3은 빙고, 2,4는 행운의 번호, 5,6은 gogo!라고 출력.
		 	그외는 주사위번호가 아닙니다. 라고출력처리.
		 * */
		int diceNum=5;
		switch(diceNum) {
			case 1:
				System.out.println("빙고"); //만약 여기에 break를 쓰지않으면 아래 케이스의 출력값을 출력시킬수있다.
				break;
			case 2:
				System.out.println("행운의 번호");
				break;
			case 3:
				System.out.println("빙고");
				break;
			case 4:
				System.out.println("행운의 번호");
				break;
			case 5:
				System.out.println("gogo!");
				break;
			case 6:
				System.out.println("gogo!");
				break;
			default:
				System.out.println("주사위의 번호가 아닙니다.");
		}
		
		
		

	}

}
