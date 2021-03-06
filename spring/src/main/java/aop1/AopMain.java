package aop1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AopMain {

	public static void main(String[] args) {
		
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("aop1/aop.xml");
		
		Member m = factory.getBean("member", Member.class);
		Board b = factory.getBean("board", Board.class);
		
		// 공통관심 = 횡단관심 = aspect class
		// Spring auto made
		//Common c = factory.getBean("common", Common.class);
		
		
		// add common
		// c.a()
		m.login("Spring");
		
		b.insertBoard(100);
		
		b.getList();
		
		m.logout();
		
		
		// before
//		m.login("Spring");
//		b.insertBoard(100);
//		b.getList();
//		m.logout();
	}

}
