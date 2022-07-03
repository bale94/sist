package javaexp.z02_util;

public class A04_Args {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		main() 실행시 사용되는 메서드
		String[] args : 실행시 외부에서 받은 데이터를 배열로 받아서 처리할 때 활용된다.
		java A04_Args 사과 바나나 딸기
			위 경우에 String[] args = {"사과", "바나나", "딸기"};
			args[0] :"사과"
			args[1] :"바나나"
			args[2] :"딸기"
			
		 * */
		System.out.println("# 외부 데이터 args로 받기 #");
		System.out.println(args[0]);
		System.out.println(args[1]);
		System.out.println(args[2]);
		//java A04_Args 사과 2000 2      //eclipse를 쓰지않고 console명령어로 처리할때 이렇게처리됨
		// command창에서 데이터를 넣어주는식으로 이렇게주면 아래의코드로 사용되어 나올것이라는것
		//위 경우에 String[] args = {"사과", "2000", "2"};
		//	args[0] :"사과"
		//	args[1] :"2000"
		//	args[2] :"2"
		// args[1], args[2]는 문자열이어서 연산이 안되므로 숫자로 형변환을 필요로한다.
		String name = args[0];
		int price = Integer.parseInt(args[1]);
		int cnt = Integer.parseInt(args[2]);
		System.out.println("총비용: "+price*cnt);

	}

}
