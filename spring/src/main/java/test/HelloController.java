package test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
									HttpServletResponse response) throws Exception {
		//
		System.out.println("[HelloController]");
		
		// set Model
		ModelAndView mv = new ModelAndView();
		mv.addObject("model", "Hello Spring");
//		=
//		request.setAttribute("model", "Hello Spring");
		
		// set View
		mv.setViewName("hello");	// /hello.jsp
		
		return mv;
	}

//	@Override
//	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
//		
//		System.out.println("[HelloController]");
//		
//		request.setAttribute("model", "Hello Spring");
//		
//		return "/hello.jsp";
//			//request.getAttribute("model");
//			//${model}
//	}

}
