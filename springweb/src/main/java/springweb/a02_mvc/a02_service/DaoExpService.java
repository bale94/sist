package springweb.a02_mvc.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a02_mvc.a03_dao.DaoExp01;
import springweb.a02_mvc.a04_vo.DeptEmp01;

@Service
public class DaoExpService {
	@Autowired(required=false)
	public DaoExp01 dao2;
	
	public double getEmpSal() {
		return dao2.getEmpSal();
	}
	
	public double getSalSum() {
		return dao2.getSalSum();
	}
	
	public String getEmpJob() {
		return dao2.getEmpJob();
	}
	
	public Boolean hasEmp() {
		return dao2.hasEmp();
	}
	
	public DeptEmp01 getDeptEmp() {
		return dao2.getDeptEmp();
	}
	
	
}
