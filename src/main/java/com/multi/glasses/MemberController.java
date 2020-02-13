package com.multi.glasses;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;

	//로그인 화면 보여주기(새로고침)
	@RequestMapping("/glasses/login")
	public String loginPage() {
		return "glasses/login";
	}

	//로그인 결과 처리
//	@RequestMapping("/glasses/loginprocess")
//	public String loginprocess(HttpServletRequest request, MemberVO vo) {
//
//		// ModelAndView mv = new ModelAndView();
//		vo = dao.selectMember(vo);
//		// mv.addObject("member", vo);
//		// mv.setViewName("/mybatis/loginprocess");
//		HttpSession session = request.getSession();
//		session.setAttribute("member", vo);
//		return "/glasses/loginprocess";
//	}
	
	//메인화면 보여주기
	@RequestMapping("/glasses/mainpage")
	public String getMainPage() {
		return "glasses/mainpage";
	}
	
	//로그인 실패
	@RequestMapping("/glasses/login")
	public String loginError() {
		return "/glasses/login";
	}
}
