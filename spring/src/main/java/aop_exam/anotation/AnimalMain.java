package aop_exam.anotation;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AnimalMain {

	public static void main(String[] args) {
		
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("aop_exam/anotation/animal.xml");
		
		Animal[] ani = new Animal[3];
		ani[0] = (Animal) factory.getBean("cat");
		ani[1] = (Animal) factory.getBean("dog");
		ani[2] = (Animal) factory.getBean("rabbit");

//		ani[0] = new Cat();
//		ani[1] = new Dog();
//		ani[2] = new Rabbit();
		
		for (Animal a : ani) {
			a.lunch();
		}
	}

}
