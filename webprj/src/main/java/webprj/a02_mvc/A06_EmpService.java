package webprj.a02_mvc;

import java.util.ArrayList;

import webprj.dao.A04_PreDAO;
import webprj.z01_vo.Emp;

public class A06_EmpService {
	private A04_PreDAO dao;
	public A06_EmpService() {
		dao = new A04_PreDAO();
	}
	public ArrayList<Emp> getEmpList(Emp sch) {
		return dao.getEmpList2(sch);
	}
}
