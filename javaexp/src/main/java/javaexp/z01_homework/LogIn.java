package javaexp.z01_homework;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class LogIn {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int ifpass = 0;
		System.out.println("** 로그인 **");
		System.out.println("ID를 입력하세요: ");
		Scanner sc = new Scanner(System.in);
		String id = sc.nextLine();
		System.out.println("PW를 입력하세요: ");
		String pw = sc.nextLine();
		File file = new File("C:\\a01_javaexp\\workspace\\javaexp\\src\\main\\java\\javaexp\\z01_homework\\MemberDB.txt");
		try {
			FileReader filereader = new FileReader(file);
			BufferedReader bfrd = new BufferedReader(filereader);
			String log = "";
			try {
				while((log = bfrd.readLine())!=null) {
					System.out.println(log.indexOf(id)+"\t"+log.indexOf(pw));
					int passId = log.indexOf(id);
					int passPw = log.indexOf(pw);
					if(passId != -1 && passPw != -1) {
						System.out.println("로그인 성공");
						ifpass = 1;
					}
				}
				if(ifpass==0) {
					System.out.println("로그인 실패");
				}bfrd.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}

	}

}
