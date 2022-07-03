package javaexp.a05_reference;

public class A05_MultiArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		# 다차원 배열
		1. 2차원 배열 이상의 배열
		2. 자바는 1차원 배열을 이용하여 2차원 이상의 배열을 구현할 수 있다.
			int[][] 배열명 = new int[크기1][크기2];
		 * 
		 * */
		
		int[][] multiArry = new int[3][2];
		// cf) 기차로 비유하면 3개의 호차가 있고, 각 호차 안에 좌석 2개가 있는 경우
		System.out.println("상위 차원의 크기: "+multiArry.length);
		System.out.println("하위 차원의 크기: "+multiArry[0].length);
		
		// 배열명[바깥쪽상위데이터index][안쪽데이터index]
		multiArry[0][0] = 25;
		multiArry[0][1] = 55;
		multiArry[1][0] = 35;
		multiArry[1][1] = 45;
		multiArry[2][0] = 65;
		multiArry[2][1] = 75;
		
		for(int idx=0;idx<multiArry.length;idx++) {
			for(int jdx=0;jdx<multiArry[idx].length;jdx++) {
				System.out.println("행렬["+idx+"]["+jdx+"]:"+multiArry[idx][jdx]);
			}
		}
		//ex) 2차원 배열로 번호별로 국어/영어/수학점수를 할당했을때 3명의 국어/영어/수학 출력하세요
		int[][] arry01 = new int[3][3];
		arry01[0][0] = 50;
		arry01[0][1] = 60;
		arry01[0][2] = 60;
		arry01[1][0] = 40;
		arry01[1][1] = 30;
		arry01[1][2] = 70;
		arry01[2][0] = 80;
		arry01[2][1] = 40;
		arry01[2][2] = 70;
		//1번방법 - 2차원배열 중 한차원을 상수로 표기하여 계산
		for(int idx=0; idx<arry01.length;idx++) {
			System.out.println((idx+1)+"번학생의 점수 ");
			System.out.println("국어점수: "+arry01[idx][0]+" / 영어점수: "+arry01[idx][1]+" / 수학점수: "+arry01[idx][2]);
		}
		
		//2번방법 - 2차원배열 모두를 for문으로 돌려 출력 -> 1번방법처럼 과목별로 몇점 해서 뽑아내긴 힘들다
		for(int idx=0; idx<arry01.length;idx++) {
			System.out.println("\n"+(idx+1)+"번학생의 점수");
			System.out.print("국어/영어/수학: ");
			for(int jdx=0;jdx<arry01[idx].length;jdx++) {
				if(jdx==arry01[idx].length-1) {
					System.out.print(arry01[idx][jdx]+"점");
				}else {
					System.out.print(arry01[idx][jdx]+"점/");					
				}
			}
		}System.out.println();
		
		//강사님의 답안-----------------------------------------------------------
		int[][]records1 = {
				{80,90,90},	//한명당 데이터 국어,영어,수학 할당
				{70,80,90},
				{70,70,80}
				
		};
		System.out.println("1차원(밖에있는 데이터 크기): "+records1.length);
		System.out.println("2차원(안에있는 데이터 크기): "+records1[0].length);
		System.out.println("첫번째의 첫번째데이터: "+records1[0][0]);
		System.out.println("세번째의 두번째데이터: "+records1[2][1]);
		
		for(int idx=0;idx<records1.length;idx++) {
			System.out.println(idx+1+"번째 학생의 성적");
			for(int jdx=0;jdx<records1[idx].length;jdx++) {
				System.out.println("\t"+(jdx+1)+"번째 과목 점수: "+records1[idx][jdx]);
			}
		}
		
		
		
		
		int[][]records2 = new int[3][3];
		records2[0][0] = 80;
		records2[0][1] = 90;
		records2[0][2] = 90;
		// ------
		records2[1][0] = 70;
		records2[1][1] = 80;
		records2[1][2] = 90;
		// ------
		records2[2][0] = 70;
		records2[2][1] = 70;
		records2[2][2] = 80;
		
		
		
		
	}

}
