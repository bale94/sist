package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webprj.z01_vo.Dept;

/**
 * Servlet implementation class A06_DeptController
 */
@WebServlet(name = "mvc061.do", urlPatterns = { "/mvc061.do" })
public class A06_DeptController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private A06_DeptService service;
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	public A06_DeptController() {
		super();
		// TODO Auto-generated constructor stub
		service = new A06_DeptService();
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dname = request.getParameter("dname");
		String loc = request.getParameter("loc");
		
		request.setAttribute("deptlist", service.getDeptList(new Dept(dname,loc)));
		String page = "a04_jsp\\a06_mvc\\a02_deptList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
