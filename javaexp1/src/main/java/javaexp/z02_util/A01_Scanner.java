package javaexp.z02_util;

import java.util.Scanner;

public class A01_Scanner {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// # Scanner 객체
		// 1. java에서 기본적인 입력을 console을 통해 처리해주는 객체
		// 2. 사용방법
		//		1) 내장되었지만, 기본 java.lang패키지가 아니어서 import를 상단에 해주어 객체를 생성해 사용할 수 있다.
		Scanner sc = new Scanner(System.in);
		//		2) 객체를 생성할 때, 생성자의 매개변수를 java의 기본 io의 입력처리 객체인 System.in으로 할당하여야 한다.
		//		3) 객체가 생성되면 기본적으로 nextLine()메서드를 통해서 console에서 line단위로 문자열을 데이터 입력받을수 있다.
		System.out.println("이름을 입력하세요");
		String name = sc.nextLine(); // Enter키를 입력할 때 까지 문자열 데이터를 입력받는다.
		System.out.println("입력받은 이름은: "+name);
		System.out.println("사는 곳을 입력하세요");
		String loc = sc.nextLine();
		System.out.println("사는 곳은: "+loc);
	}

}
