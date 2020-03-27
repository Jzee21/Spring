package edu.multi.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired
	MemberDAO dao;
	
	// Sign Up
	@RequestMapping(value="/mybatis/insertmember", method=RequestMethod.GET)
	public String signUpForm() {
		return "/mybatis/insertmember";
	}
	
	@RequestMapping(value="/mybatis/insertmember", method=RequestMethod.POST)
	public ModelAndView signUpInsert(MemberVO member) {
		
		ModelAndView mv = new ModelAndView();
		
		if(dao.idCheck(member) == 0) {
			if(dao.insertMember(member) == 1) {				
				mv.setViewName("/mybatis/login");
			}
		} else {
			mv.setViewName("/mybatis/inserterror");
		}
		
		return mv;
	}
	
	// Login
	@RequestMapping("/session/login")
	public String login() {
		return "/mybatis/login";
	}
	
	// Login Check - Session
	@RequestMapping("/session/loginprocess")
	public String loginPorcess(HttpServletRequest request, MemberVO member) {
//		ModelAndView mv = new ModelAndView();
		
		member = dao.selectMember(member);
		
		String userid = (String)request.getAttribute("userid");
		
		HttpSession session = request.getSession();
		session.setAttribute("member", member);
		
//		mv.addObject("member", member);		// setViewName 에서 지정한 뷰에서 1번 사용
//		mv.setViewName("mybatis/loginprocess");
		
		return "/mybatis/loginprocess";
	}
	
	@RequestMapping("/session/mypage")
	public String getMyPage() {
		
		
		return "/mybatis/mypage";
	}
	
	// Logout
	@RequestMapping("/session/logout")
	public String logout(HttpSession session) {
//		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/mybatis/login";
	}
	
	@RequestMapping("/mybatis/inserterror")
	public String signUpError() {
		return "/mybatis/inserterror";
	}
	
	

}
