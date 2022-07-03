package javaexp.z01_homework;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class Project {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		//회원가입
		File file = new File("C:\\a01_javaexp\\workspace\\javaexp\\src\\main\\java\\javaexp\\z01_homework\\MemberDB.txt");
		try {
			FileWriter filewriter = new FileWriter(file, true);
			if(file.isFile() && file.canWrite()) {
				System.out.println("** 회원가입 **");
				System.out.println("사용할ID: ");
				filewriter.append(sc.nextLine());
				filewriter.append("\t");
				System.out.println("사용할PW: ");
				filewriter.append(sc.nextLine());
				filewriter.append("\t");
				System.out.println("사용할email: ");
				filewriter.append(sc.nextLine());
				filewriter.append("\t");
				System.out.println("사용할휴대폰번호: ");
				filewriter.append(sc.nextLine());
				filewriter.append("\r");
				System.out.println("회원가입 완료");
			}
			filewriter.close();
		}catch(IOException e) {
			e.printStackTrace();
		}

	}

}


