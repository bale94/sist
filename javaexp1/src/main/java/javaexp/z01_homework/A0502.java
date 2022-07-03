package javaexp.z01_homework;

public class A0502 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 배열의 속성들을 기술하고, 선언과 할당 방식을 기술하세요
		//index값을 사용하는데, array[index]의 형식으로 사용된다.
		//배열의 초기화를 통해 선언을하고, heap영역에 메모리를 할당하여 사용한다.
		
//		[1단계:개념] 2. 배열과 반복문의 관계를 기술하고, 학생 30명을 임의의 점수(0~100)로
		// 			배열에 할당/출력하세요.
		//반복문을 사용해서 배열을 쉽게 출력할 수 있다. 1차원인덱스와 2차원인덱스를
		//for loop을 통해 반복출력하기 쉽기때문이다.
		int [] students = new int[30];
		for(int idx=0;idx<students.length;idx++) {
			int score = (int)(Math.random()*100+1);
			students[idx] += score;
			System.out.println((idx+1)+"번째 학생의 점수: "+students[idx]);
		}
		
//		[1단계:응용] 3. 무지개 색상을 배열로 선언하고, 이 중에서 임의의 색상 3개를 출력하세요
		String [] rainbow = new String[7];
		rainbow[0] = "빨강";
		rainbow[1] = "주황";
		rainbow[2] = "노랑";
		rainbow[3] = "초록";
		rainbow[4] = "파랑";
		rainbow[5] = "남색";
		rainbow[6] = "보라";
		int idx1 = (int)(Math.random()*7);
		int idx2 = (int)(Math.random()*7);
		int idx3 = (int)(Math.random()*7);
		if(idx1!=idx2 && idx2!=idx3 && idx1!=idx3) {
			System.out.println(rainbow[idx1]);
			System.out.println(rainbow[idx2]);
			System.out.println(rainbow[idx3]);
		}else {
			System.out.println("누군가 같은색이 뽑힘!");
		}
		
		String []rainbow1 = {"빨", "주", "노", "초", "파", "남", "보"};
		for(int idx=0;idx<rainbow1.length;idx++) {
			System.out.println(rainbow1[idx]+",");
		}
		System.out.println();
		//임의로 나올 index만 지정되면 해당 index에 지정한 색상을 가져올수있다.
		// 0~6까지 index인데 임의값이 이 범위로 가져오면 rainbow[임의의 index번호]를 통해서 특정한 색상을 가지고 올 수 있다.
		// (int)(Math.random()*경우의수+시작수);
		// (int)(Math.random()*7);
		
		for(int cnt=1;cnt<=3;cnt++) {
			int ranIdx = (int)(Math.random()*7); //0~6까지 임의의 숫자
			System.out.println(cnt+"번째 색상: "+rainbow[ranIdx]);
		}
		// 중복제거: 배열에서 알고리즘을 활용하여 처리하는데, 이종for문 temp변수 활용하여 사용한다.
		//		ArrayList	shuffle() : 중복없이 섞어주는 처리

//		[1단계:응용] 4. 1차원 배열로 회원의 이름 5명을 선언하고 할당 출력하세요
//		String [] name = new String[5];
//		name[0] = "Han";
//		name[1] = "Kim";
//		name[2] = "Lee";
//		name[3] = "Choi";
//		name[4] = "Park";
//		for(int idx=0;idx<name.length;idx++) {
//			System.out.println(name[idx]);
//		}
//         			2차원 배열로 위 회원이름에 추가하여 나이와 사는 곳을 만들어 할당하고 출력하세요
		String [][] person = new String[5][2];
		person[0][0] = "Han";
		person[0][1] = "Seoul";
		person[1][0] = "Kim";
		person[1][1] = "Busan";
		person[2][0] = "Lee";
		person[2][1] = "Jeju";
		person[3][0] = "Choi";
		person[3][1] = "Pohang";
		person[4][0] = "Park";
		person[4][1] = "Ansan";
		for(int idx=0;idx<person.length;idx++) {
			System.out.print((idx+1)+"번째 사람의 이름과 주소: ");
			for(int jdx=0;jdx<person[idx].length;jdx++) {
				System.out.print(person[idx][jdx]+" ");
			}System.out.println();
		}
		
		//Stringp[][]members = {
//			{},{},{}, ...해서 {}안에 내용물넣으면 배열 선언및할당하기 더 쉽다.
//		};
		
		
//		[1단계:개념] 5. main(String args[])에서 args가 사용하는 방법과 내용을 기술하세요
//		java A0502 목적 메소드 기타등등
//		우클릭 후 run as에서 configuration, arguments에 외부데이터를 입력한다. 그 후 배열로 쓰면된다
		// console에 입력하면 저런식으로 입력되는데 이때 입력된 데이터들이 main에 작성해둔 코드를 통해
		// 인식되고 출력하게된다.
		//이떄 입력된 데이터들은 args[]라는 배열안에 존재하게되고, 그 배열을 꺼내 쓰는것이다.
//		String arar = args[0];
//		int number = Integer.parseInt(args[1]);
//		System.out.println(number);
		//args에있는 숫자는 문자열로 취급받는상태이므로 Interger.parseInt(args[])를 해주어서
		// 정수형과같은 숫자형으로 형변환 시켜주어야한다.
		
//		[1단계:개념] 6. args[]로 구매할 물건명 가격 갯수를 입력받아서 물건명과 총비용을 출력하세요.
		System.out.println("물건명: "+args[0]);
		System.out.println("가격: "+args[1]);
		System.out.println("갯수: "+args[2]);
		System.out.println();
		System.out.println("물건명: "+args[3]);
		System.out.println("가격: "+args[4]);
		System.out.println("갯수: "+args[5]);
		System.out.println();
		System.out.println("총 비용: "+(Integer.parseInt(args[1])+Integer.parseInt(args[4])));

	}

}
