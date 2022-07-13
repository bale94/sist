package springweb.a02_mvc.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springweb.a02_mvc.a02_service.EmpService;
import springweb.a02_mvc.a04_vo.Emp;

@Controller
public class EmpController {
	@Autowired(required = false)
	private EmpService service;
	// http://localhost:7080/springweb/empList.do
	@RequestMapping("empList.do")
	public String empList(Emp sch, Model d) {
		d.addAttribute("empList", service.getEmpList(sch));
		return "WEB-INF\\views\\a02_mvc\\a01_empList.jsp";
	}
	// http://localhost:7080/springweb/schJob.do
	// 직책명:[	][검색]
	// 사원명 직책명 급여
	@RequestMapping("schJob.do")
	public String jobSearch(@RequestParam(value="job", defaultValue="") String job, Model d) {
		d.addAttribute("jobList", service.getEmpJob(job));
		return "WEB-INF\\views\\a02_mvc\\a02_jobSearch.jsp";
	}
	//사원정보로 상세검색
	// http://localhost:7080/springweb/empDetail.do
	@RequestMapping("empDetail.do")
	public String empDetail(@RequestParam(value="empno", defaultValue="0") int empno, Model d) {
		d.addAttribute("emp", service.getDetail(empno));
		return "WEB-INF\\views\\a02_mvc\\a03_empDetail.jsp";
	}
	// 직책으로 평균급여검색
	// http://localhost:7080/springweb/getJobAvg.do
	@RequestMapping("getJobAvg.do")
	public String getJobAvg(@RequestParam(value="job", defaultValue="") String job, Model d) {
		d.addAttribute("jobavg", service.getJobAvg());
		return "WEB-INF\\views\\a02_mvc\\a04_getJobAvg.jsp";
	}
}
