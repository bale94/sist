package javaexp.z02_util;

public class A05_ArgsExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		java A05_ArgsExp 학생명 국어 영어 수학
		위와 같이 학생명과 국어 영어 수학 점수를 입력받아 해당 정보를 출력하세요
		학생명: @@
		국어 : @@
		영어 : @@
		수학 : @@
		총점 : @@
		평균 : @@(소숫점이하 표기)
		
		 * */
		String name = args[0];
		int krScore = Integer.parseInt(args[1]);
		int enScore = Integer.parseInt(args[2]);
		int maScore = Integer.parseInt(args[3]);
		System.out.println("학생명 : "+name);
		System.out.println("국어 : "+krScore);
		System.out.println("수학 : "+enScore);
		System.out.println("영어 : "+maScore);
		int total = krScore+enScore+maScore;
		double avg = total/(double)3;
		System.out.println("총점: "+total);
		System.out.println("평균: "+avg);
		

	}

}
