package edu.multi.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller			// add
public class HelloController {		// delete implements

	//@Override		not need
	@RequestMapping("/hello")		// instead	<beans:prop key="/hello">hc</beans:prop>
	public ModelAndView handleRequest(HttpServletRequest request, 
									HttpServletResponse response) throws Exception {
		//
		System.out.println("[HelloController]");
		
		// set Model
		ModelAndView mv = new ModelAndView();
		mv.addObject("model", "Hello Spring Anotation임");
		
		// set View
		mv.setViewName("hello");
		
		return mv;
	}
	
	@RequestMapping("/weather2")
	public String weather2() {
		return "weather2";
	}

}
