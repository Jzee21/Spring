package edu.multi.mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JQueryController {
	
	@Autowired
	BoardDAO dao;
	
	@RequestMapping("/jquerytest")
	public String jqueryTest() {
		
		return "jquery";
	}
	
	@RequestMapping("/ajaxtest")
	public String ajaxTest() {
		
		return "ajax";
	}
	
	@RequestMapping("/basiclogin")
	public String login(String id, String pw) {
		
//		if(id.equals("ajax") && pw.equals("ajax")) {
//			
//		}
		
		return "basicloginsuccess";
	}
	
	@RequestMapping(value="/ajaxlogin", 
			produces= {"application/json; charset=UTF-8"} )
	@ResponseBody
	public String ajaxlogin(String id, String pw) {
		
		boolean status = false;
		String logintime = "-";
		
		if(id.equals("ajax") && pw.equals("ajax")) {
			status = true;
			logintime = new java.util.Date().toLocaleString();
		}
		
		return "{ \"status\" :"  + status + ", \"time\":\"" + logintime + "\"}";
	}
	
	@RequestMapping("/ajaxboard")
	@ResponseBody	// return type : All object -> JSON
	public BoardVO ajaxboard(int seq) {
		//boarddetail?seq=1
		BoardVO vo = dao.getBoardDetail(seq);
		
		//
		//   { "seq"= 10, "status"= true }
		int seq2 = 10;
		boolean status = true;
		
		String result = "{  \"seq\"  =  " + seq2 + ",  \"status\"  = \"" + status + "  \" }";
					// \"seq\" : "seq"
		System.out.println(result);
		
		//
		return vo;
	}
	
	public void jsontset() {
		
		//   { "seq"= 10, "status"= true }
		
		int seq = 10;
		boolean status = true;
		
		String result = "{ \"seq\"=" + seq + ", status" + status + "}";
					// \"seq\" : "seq"
		System.out.println(result);
		
	}
}
