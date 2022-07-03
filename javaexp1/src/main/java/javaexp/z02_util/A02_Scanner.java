package javaexp.z02_util;

import java.util.Scanner;

public class A02_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		ex) Scanner 객체 생성하고 구매할 과일명을 입력하세요
		구매할 과일 갯수를 입력하세요
		과일명 @@@, 갯수 @@개 출력
		 * */
		Scanner sc = new Scanner(System.in);
		
		System.out.println("구매할 과일명을 입력하세요");
		String fruitName = sc.nextLine();
		System.out.println("구매할 과일 갯수를 입력하세요");
		int fruitNum = sc.nextInt();
		System.out.println("과일명: "+fruitName+", 갯수: "+fruitNum+"개");
		int price = 3000;
		System.out.println("개당 가격이 "+price+"원일 때 총금액: "+fruitNum*price);
		

	}

}
