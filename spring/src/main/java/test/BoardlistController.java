package test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class BoardlistController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, 
									HttpServletResponse response) throws Exception {
		//
		System.out.println("[BoardlistController]");
		
		BoardDAO dao = new BoardDAO();
		// set Model
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardlist", dao.getList());
		mv.setViewName("boardlist");
		
		return mv;
	}

}
