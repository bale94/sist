package springweb.a02_mvc.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a02_mvc.a03_dao.DaoExp01;
import springweb.a02_mvc.a04_vo.DeptEmp01;
import springweb.a02_mvc.a04_vo.Emp;

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
	
	public List<Emp> getEmpJob(String job) {
		return dao2.getEmpJob(job);
	}
	
	public Boolean hasEmp() {
		return dao2.hasEmp();
	}
	
	public DeptEmp01 getDeptEmp() {
		return dao2.getDeptEmp();
	}
	
	
}
