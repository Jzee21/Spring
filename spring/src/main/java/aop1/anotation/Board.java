package aop1.anotation;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class Board {
	
	public Integer insertBoard(int seq) {
		System.out.println(seq + " 번째 게시물 등록");
		
		return seq;
	}
	
	public ArrayList<String> getList() {
		
		System.out.println("=== Board.getList() ===");
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("1_1번 게시물 : 스프링 수업중");
		list.add("2_2번 게시물 : 하둡 수업중");
		list.add("3_3번 게시물 : 안드로이드 수업");

		System.out.println("=======================");
		
		return list;
	}
	
}
