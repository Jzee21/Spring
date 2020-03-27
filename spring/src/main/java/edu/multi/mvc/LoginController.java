package edu.multi.mvc;

//import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform() {
		// Mapping mothod 리턴타입이 String : View name!
		return "loginform";	// << View name
	}
	
	/*
	@RequestMapping(name="/login", method=RequestMethod.POST)
	public ModelAndView loginsuccess(HttpServletRequest request) {
	
//		try {
//			request.setCharacterEncoding("utf-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean status = false;
		if(id.equals("spring") && pw.equals("spring"))
			status = true;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("loginresult", status);
		mv.setViewName("loginsuccess");
		
		return mv;
	}
	*/
	
	/*
	@RequestMapping(name="/login", method=RequestMethod.POST)
	public ModelAndView loginsuccess
//			(HttpServletRequest request, HttpServletResponse response) {
//			(String id, String pw) {
//			(@RequestParam("id") String id2, String pw) {
//			(@RequestParam(value="id", required=true ) String id2, String pw) {
//			(@RequestParam(value="id", required=false, defaultValue = "spring" ) String id2, String pw) {
			(@RequestParam(value="id", required=true ) String id2, String pw, int age) {
	
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
		
		boolean status = false;
		if(id2.equals("spring") && pw.equals("spring"))
			status = true;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("loginresult", status);
		mv.setViewName("loginsuccess");
		
		return mv;
	}
	*/
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView loginsuccess
//			(LoginVO vo) {
			(@ModelAttribute("login") LoginVO vo) {
		
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
		
		boolean status = false;
		if(vo.getId().equals("spring") && vo.getPw().equals("spring"))
			status = true;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("loginresult", status);
		mv.setViewName("loginsuccess");
		
		return mv;
	}
}
