package edu.multi.mybatis;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class EmpController {
	@Autowired
	EmpDAO dao;
	
	@RequestMapping("/mybatis/emplist")
	public ModelAndView getAllEmp() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", dao.getAllEmp());
		
		return mv;
	}
	
	@RequestMapping("/mybatis/detailemp")
	public ModelAndView detailEmp(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", dao.getOneEmp(id));
		
		return mv;
	}
	
	@RequestMapping("/mybatis/pagingemplist")
	public ModelAndView pagingEmlList(int[] page) {
		ModelAndView mv = new ModelAndView();
		int cnt = dao.cntEmp();
		int cntPerPage = 10;
		int totalPages = (cnt%cntPerPage == 0)? cnt/cntPerPage : cnt/cntPerPage + 1;
		mv.addObject("totalPage", totalPages);
		
		return mv;
	}
	
	@RequestMapping("/mybatis/pagingemplist2")
	public ModelAndView getPagingEmlList(int page) {
		/*
			int pagenum = 2;
//			int param[] = new int[2];
//			param[0] = (pagenum-1)*10+1;
//			param[1] = (pagenum)*10;
		 */
		int cntPerPage = 10;
		int param[] = new int[2];
		param[0] = (page-1) * cntPerPage + 1;
		param[1] = page*cntPerPage;
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", dao.pagingEmp(param));
		
		return mv;
	}
	
}
