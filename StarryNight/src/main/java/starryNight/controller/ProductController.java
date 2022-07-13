package starryNight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	// http://localhost:7080/StarryNight/ProductDetail.do
		@RequestMapping("ProductDetail.do")
		public String ProductDetail(Model d) {
			return "WEB-INF\\views\\product\\ProductDetail.jsp";
		}
}
