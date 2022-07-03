package webprj.a02_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A04_Controller
 */
@WebServlet(name = "mvc04.do", urlPatterns = { "/mvc04.do" })
public class A04_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		String cnt = request.getParameter("cnt");
		A04_Model m04 = new A04_Model();
		// mvc04.do?pname="사과"&price=2000&cnt=2
		// -> input으로 해도 ?뒤에 입력되는방식이므로 결국 같은 결과값을 얻을수있다
		request.setAttribute("model04", m04.getProduct(pname,price,cnt));
		String viewPage="a04_jsp/a06_mvc/a04_view.jsp";
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}

}
