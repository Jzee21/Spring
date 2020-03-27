package edu.multi.mvc;

import java.util.Map;
import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.xpath.internal.operations.Mod;

@Controller
public class CRUDController {
	
	// start()
	// list()
	// get()
	// add()
	// update()
	// delete()
	
	Map<String, String> members = new HashMap<String, String>();
	
	@RequestMapping("/crud/start")
	public void start() {
		// 회원관리
		System.out.println("==== 첫 화면입니다 ====");
		
		members.put("spring", "김사원");
		members.put("oracle", "박대리");
		members.put("mybatis", "최과장");
		
//		return "crud/start";		// WEB-INF/views/ + crud/start + .jsp
	}
	
	@RequestMapping("/crud/list")
	public ModelAndView list() {
		// 모든 회원정보
		// = String >> return "crud/list"
		ModelAndView mv = new ModelAndView();
		mv.addObject("members", members);
//		mv.setViewName("crud/list");
		
		return mv;
	}
	
	@RequestMapping("/crud/get")
	public ModelAndView get(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String id = request.getParameter("id");
//		String name = members.get(id);
//		mv.addObject("member", id + " : " + name);
		mv.addObject("member", id + " : " + members.get(id));
		
		return mv;
	}
	
	@RequestMapping("/crud/add")
	public void add() {
		// ["new" - "신입사원"] members 추가 - crud/add.jsp
		members.put("new", "신입사원");
	}
	
	@RequestMapping("/crud/delete")
	public String delete() {
		// delete ["new" - "신입회원"]
		members.remove("new");
		
		return "redirect:/crud/list";
	}
	
	@RequestMapping("/crud/update")
	public Map<String, String> update() {
		Map<String, String> informs = new HashMap<String, String>();
		informs.put("id", "수정할 id를 입력하세요");					// Model id		${id}
		informs.put("name", "수정할 이름을 입력하세요");				// Model name	${name}
		informs.put("email", "이메일 양식은 xxx@yyy.com 형식입니다.");	// Model email	${email}
		informs.put("idvalue", "spring");
		
		return informs;		// 반환형이 Model로 지정
							// 뷰 이름은 url 로 지정
	}
	
}
