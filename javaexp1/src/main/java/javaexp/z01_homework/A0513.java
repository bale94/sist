package javaexp.z01_homework;

import java.util.Scanner;

public class A0513 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		[1단계:개념] 1. 예외 처리의 기본 형식과 처리 순서를 기본 예제에 의해 기술하세요.
//		try{
//			예외가 일어날 수 있는 코드
//		}catch(Exception e){
//			예외가 일어날 때, 처리할 블럭
//		}finally{
//			예외가 있든없든 무조건 수행할 블럭
//		}	//과같은 형식으로 진행되고, 처리 순서는 위에서 부터 차례대로 진행된다.
			// 따라서, 기타에러를 표기하는 (Exception e)는 가장 아래 써주는 것이 좋을것이다.
		
//		[1단계:확인] 2. args를 통해서 나올 수 있는 예외를 아래에 하나씩 처리하세요
//		      1) args값을 입력하지 않았을 때.		NullPointerException
//		      2) args값의 배열의 범위를 넘어설 때.		ArrayIndexOutOfBoundsException
//		      3) args의 값 중에 숫자형 문자를 입력하여야 하는데 문자 자체를 입력했을 때.
//												
		try {
			System.out.println("1");
			System.out.println(Integer.parseInt(args[0]));
			System.out.println("2");
		}catch(NullPointerException npe) {
			System.out.println("args를 입력하지 않았음"+npe.getMessage());
		}catch(ArrayIndexOutOfBoundsException aob) {
			System.out.println("배열의 범위를 넘어섬"+aob.getMessage());
		}catch(NumberFormatException nfe) {
			System.out.println("숫자대신 문자를 입력함"+nfe.getMessage());
		}finally {
			System.out.println("예외처리 완료");
		}
		/*
		System.out.println(Integer.parseInt("이십"));
		try{
			System.out.println("첫번째 데이터: "+args[0]);
			for(int idx = 0; idx<arg.length;idx++){
				String data = args[idx];
				System.out.println(data);
				// 입력값이 모두 숫자형 문자열일때
				int num01 = Integer.parseInt(data);
			}
			for(String arg:args){
				String data = arg;	// 입력된 여러개의 데이터에 대한 처리
				System.out.println(data);
				// 입력값이 모두 숫자형 문자열일때
				int num01 = Integer.parseInt(data);
			}
		}catch(NullPointerException e){
			System.out.println("입력된 데이터가 없습니다"+e.getMessage());
		}catch(ArrayIndexOutOfBoundsException aie){
			System.out.println("배열의 범위를 넘어섬"+aie.getMessage());
		}catch(NumberFormatException nfe){
			System.out.println("입력값이 숫자가 아닐때"+nfe.getMessage());
		}catch(Exception e){
			System.out.println("기타 예외 상황: "+e.getMessage());
		}finally{
			System.out.println("예외 상관없이 처리할내용");
		}
		* */
		
//		[1단계:개념] 3. 예외 처리의 계층별 처리란 무엇인지 기술하세요.
		// 예외처리를 계층별처리한다는 것은, exception 에도 계층이 있다는 것이다.
		/* - 상위 클래스
		java.lang.Exception
			- 하위 클래스(컴파일 체크)
				ClassNotFoundingException
				InterruptedException
			- 하위 클래스(실행 체크)예외
				RuntimeException
					NullPointerException
					FormatException
					ArrayIndexOutOfBoundsException */
		// 최상위에 Exception은 기타에러들을 처리하는 용으로 가장 아랫단계에 위치시켜
		// 위에 적혀있지 않은 에러들을 처리하도록 한다.
		// 그리고 가장 하위의 에러들 부터 순차대로 catch하여 차례대로 처리한다.
		
//		[1단계:개념] 4. 예외의 위임처리하는 내용을 예제를 통해서 기술하세요.
		Meow m = new Meow();
		try {
			m.Cat1();
			m.Cat2();
			m.Cat3();
		}catch(NullPointerException npe) {
			System.out.println(npe.getMessage());
		}
		
//		[1단계:확인] 5. DBException이라는 사용자 정의 예외를 선언하고, Scanner를 통해서
//		      입력되는 값이  null이거나 공백문자일 때, 처리되게 하세요.
		Scanner sc = new Scanner(System.in);
		System.out.println("원하는것을 입력하세요: ");
		try {
			String str = sc.nextLine();
			if(str==null || str.equals("")) {
				throw new DBException();	// 사용자 정의 예외 던지기
			}
			System.out.println(str);
		}catch(DBException dbe) {
			System.out.println(dbe.getMessage());
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}finally {
			System.out.println("예외상관없이 처리할 내용");
		}
		System.out.println("프로세스 완료");
	}

}
class DBException extends Exception{

	public DBException() {
		super("입력값 예외(사용자정의)");	//생성자를 통해서 추가처리
		// TODO Auto-generated constructor stub
	}

	@Override
	public String getMessage() {	// 재정의메소드처리
		// TODO Auto-generated method stub
		return "[재정의]"+super.getMessage();
	}
	
}

class Meow{
	public void Cat1() throws NullPointerException{
		String Cat = null;
		System.out.println(Cat.toString());
	}
	public void Cat2() throws NullPointerException{
		String Cat = null;
		System.out.println(Cat.toString());
	}
	public void Cat3() throws NullPointerException{
		String Cat = null;
		System.out.println(Cat.toString());
	}
}