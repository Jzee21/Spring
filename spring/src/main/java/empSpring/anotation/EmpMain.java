package empSpring.anotation;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class EmpMain {

	public static void main(String[] args) {
		
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("empSpring/anotation/emp.xml");
		
		EmpDAO dao = factory.getBean("dao", EmpDAO.class);
		dao.insertEmp();
		
	}

}
