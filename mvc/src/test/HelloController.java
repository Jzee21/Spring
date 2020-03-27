package test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("[HelloController]");
		
		request.setAttribute("model", "Hello Spring");
		
		return "/hello.jsp";
			//request.getAttribute("model");
			//${model}
	}

}
