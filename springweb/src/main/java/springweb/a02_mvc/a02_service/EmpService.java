package springweb.a02_mvc.a02_service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springweb.a02_mvc.a03_dao.DaoExp01;
import springweb.a02_mvc.a03_dao.EmpDao;
import springweb.a02_mvc.a04_vo.Dept;
import springweb.a02_mvc.a04_vo.DeptEmp01;
import springweb.a02_mvc.a04_vo.DeptMsal;
import springweb.a02_mvc.a04_vo.Emp;
import springweb.a02_mvc.a04_vo.JobAvg;
import springweb.a02_mvc.a04_vo.Salgrade;
//springweb.a02_mvc.a02_service.EmpService
@Service
public class EmpService {
	@Autowired(required = false)
	private EmpDao dao;
	
	@Autowired(required = false)
	private DaoExp01 dao2;
	
	public List<Emp> getEmpList(Emp sch){
		
		System.out.println("사원번호가 있는지?"+dao2.hasEmp());
		// mybatis 
		// dao2 = new DaoExp01Imple();
		
		DeptEmp01 de = dao2.getDeptEmp();
		System.out.println("객체 생성 여부:"+de);
		System.out.println("사원명:"+de.getEname());
		System.out.println("부서명:"+de.getDname());
		
		Salgrade sg = dao2.getSalgrade();
		System.out.println("객체 생성 여부:"+sg);
		System.out.println("grade:"+sg.getGrade());
		
		System.out.println("# 다중 행 데이터 #");
		System.out.println(dao2.getEmpnos().get(0)+"사원정보갯수: "+dao2.getEmpnos().size());
		System.out.println(dao2.getEnames().get(1)+"사원이름갯수: "+dao2.getEnames().size());
		System.out.println(dao2.getSalaries().get(2)+"사원급여갯수: "+dao2.getSalaries().size());
		
		System.out.println("데이터");
		System.out.println("사원 직급갯수:"+dao2.getJobs().size());
		
		System.out.println("부서번호30의 사원정보: "+dao2.getEmpList30().size());
		
		System.out.println("# 과제 4번 #");
		System.out.println(dao2.getEmpList().size());
		
//		System.out.println("# 과제 5번 #");
//		for(JobAvg av:dao2.getJobAvg()) {
//			System.out.println(av.getJob()+"\t"+av.getAvgsal());
//		}
//		Emp emp = dao2.getDetail(7369);
//		if(emp!=null)
//				System.out.println("사원명:"+emp.getEname());
		
		//System.out.println("#사원정보 삭제");
		//dao2.deleteEmp("사원");
		
		System.out.println("#사원직책정보");
		List<Emp> jobList = dao2.getEmpJob("관리자");
		System.out.println("관리자 데이터 건수:"+jobList.size());
		
		//System.out.println("#2/4분기 입사 사원정보 삭제");
		//dao2.deleteHiredate("2");
		
		System.out.println("# 부서별 최고급여자");
		DeptMsal maxsal = dao2.getDeptMaxSal(30);
		System.out.println(maxsal.getDeptno()+"번 부서의 최고급여:"+maxsal.getMsal());
		
		List<Emp> emschList = dao2.schEmpList02(new Emp("WARD", "SALESMAN", 1250));
		if(emschList!=null && emschList.size()>0){
			System.out.println("사원정보 검색 건수:"+emschList.size());
		}
		//System.out.println("#사원정보등록#");
		//dao2.insertEmp02(new Emp(9000, "홍길동", "대리"));
		//System.out.println("#사원정보수정#");
		//dao2.updateEmp02(new Emp("홍변경", 5555, 3333, 1001));
		
		//System.out.println("#부서정보등록");
		//dao2.insertDept(new Dept(99, "기획", "서울홍대"));
		
		Map<String, String> schMap = new HashMap<String, String>();
		schMap.put("ename", "A");
		schMap.put("job", "MAN");
		List<Emp> emplist2 = dao2.getEmpList2(schMap);
		System.out.println("사원정보조회(Map활용):"+emplist2.size());
		
		Map<String, String> dsch = new HashMap<String, String>();
		dsch.put("dname", "A");
		dsch.put("loc", "N");
		List<Dept> deptlist2 = dao2.getDeptList2(dsch);
		System.out.println("부서정보조회(Map활용):"+deptlist2.size());
		
		
		return dao.getEmpList(sch);
	}
	
	public List<Emp> getEmpJob(String job){
		return dao2.getEmpJob(job);
	}
	public Emp getDetail(int empno) {
		return dao2.getDetail(empno);
	}
	public DeptMsal getDeptMaxSal(int deptno) {
		return dao2.getDeptMaxSal(deptno);
	}
	public List<JobAvg> getJobAvg() {
		return dao2.getJobAvg();
	}
}

