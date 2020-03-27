package empSpring;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EmpMain {

	public static void main(String[] args) {
		
		// Spring Bean Configuration xml	setting
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("empSpring/emp.xml");
							// spring/src/main/java/ 생력
		
		EmpDAO dao = factory.getBean("dao", EmpDAO.class);
//		dao.insertEmp();
		
		EmpDAO dao2 = factory.getBean("dao", EmpDAO.class);
		EmpDAO dao3 = factory.getBean("dao", EmpDAO.class);
		EmpDAO dao4 = factory.getBean("dao", EmpDAO.class);
		EmpDAO dao5 = factory.getBean("dao", EmpDAO.class);
		// 생성자 1번 실행
		// Spring은 객체를 Singleton 방식으로 생성, 관리!
		
	}

}
