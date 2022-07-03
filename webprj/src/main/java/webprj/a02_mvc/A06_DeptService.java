package webprj.a02_mvc;

import java.util.ArrayList;

import webprj.dao.A04_PreDAO;
import webprj.z01_vo.Dept;

public class A06_DeptService {
	private A04_PreDAO dao;
	public A06_DeptService() {
		dao = new A04_PreDAO();
	}
	public ArrayList<Dept> getDeptList(Dept sch) {
		return dao.getDeptList(sch);
	}
}
