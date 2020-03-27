package edu.multi.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

	@Autowired
	BoardDAO dao;
	
	//RequestMapping(name="/hello", method=RequestMethod.GET)
	//RequestMapping(name="/hello", method=RequestMethod.POST)
	@RequestMapping("/boardlist")
	public ModelAndView handleRequest(HttpServletRequest request, 
									HttpServletResponse response) throws Exception {
		
//		BoardDAO dao = new BoardDAO();
		// set Model
		ModelAndView mv = new ModelAndView();
		mv.addObject("title", "BoardList Anotation");
		mv.addObject("list", dao.getList());
		mv.setViewName("board/boardlist");
		
		return mv;
	}
	
	// 1개 게시물 저장 < 글쓰기 폼, db 저장
	// public void insetBoard(BoardVO vo) >> 2개 분할
	@RequestMapping(value="/boardinsert", method=RequestMethod.GET)
	public String insetBoardForm() {
		return "board/boradinsertform";
	}
	
	@RequestMapping(value="/boardinsert", method=RequestMethod.POST)
	public String insetBoardResult(@ModelAttribute("vo") BoardVO vo) {
		int result = dao.insertBoard(vo);
		
		if(result == 1) {
			System.out.println("정상");
		} else {
			System.out.println("비정상");
		}
		
//		return "board/boardinsertresult";
		return "redirect:/boardlist";
	}
	
	
	// 1개 게시물 조회(seq 받아서)
		// boarddetail
	@RequestMapping("/boarddetail")
	public ModelAndView boardDetail(int seq) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", dao.getBoardDetail(seq));
		mv.setViewName("board/boarddetail");
		
		return mv;
	}
	
	// 1개 게시물 수정	boardedit
		// boarddetail 에서 버튼으로 연결
	@RequestMapping(value="/boardupdate", method=RequestMethod.POST)
	public String updateBoardresult(BoardVO vo) {
		
		int result = dao.updateBoard(vo);
		
		if(result == 1) {
			System.out.println("정상");
		} else {
			System.out.println("비정상");
		}
		
		return "redirect:/boardlist";
	}
	
	// 1개 게시물 삭제	boarddelete
		// boarddetail 에서 버튼으로 연결
	@RequestMapping(value="/boarddelete", method=RequestMethod.POST)
	public String deleteBoard(int seq) {
		
		int result = dao.deleteBoard(seq);
		
		if(result == 1) {
			System.out.println("정상");
		} else {
			System.out.println("비정상");
		}
		
		return "redirect:/boardlist";
	}
	
}
