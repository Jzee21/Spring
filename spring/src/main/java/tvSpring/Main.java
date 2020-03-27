package tvSpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {

	public static void main(String[] args) {

		// nonSpring
		// 3.
		// after TVFactory
		// dependency	: 위임(다른 객체로부터 전달)
//		TVFactory factory = new TVFactory();
//		TV tv = factory.getTV("multi");
//		TV tv = factory.getTV("other");
//		TV tv = factory.getTV(args[0]);
		

		// 4.
		// DI - 1. 생성자
		// dependency	: 위임(Spring)
		// Application Context
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("tvSpring/tv.xml");
		
		// <bean id="tv" class="tvSpring.MultiTV" />
		TV tv = factory.getBean("tv", TV.class);
//		tv = factory.getBean("tv2", TV.class);
		
		tv.powerOn();
		tv.soundUp();
		tv.soundDown();
		tv.powerOff();
		
		
		
	}

}
