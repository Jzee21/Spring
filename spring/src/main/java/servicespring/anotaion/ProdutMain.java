package servicespring.anotaion;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ProdutMain {

	public static void main(String[] args) {
		
		ApplicationContext factory = 
				new ClassPathXmlApplicationContext("servicespring/anotaion/product.xml");
		
		ProductService service;
		ProductVO vo;
		
		service = factory.getBean("service", ProductService.class);
		vo = service.sell();
		System.out.println(vo);

		service = factory.getBean("service05", ProductService.class);
		vo = service.sell();
		System.out.println(vo);
		
		service = factory.getBean("service12", ProductService.class);
		vo = service.sell();
		System.out.println(vo);
	}

}
