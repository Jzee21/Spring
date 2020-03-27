package servicespring.anotaion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service05")		// @service = @service("productService05")
public class ProductService05 implements ProductService {

	@Autowired
	ProductDAO dao;
	
//	public void setDao(ProductDAO dao) {
//		this.dao = dao;
//	}

	@Override
	public ProductVO sell() {
		System.out.println("5월 30% 세일중");
		
//		ProductDAO = new ProductDAO();
		return dao.sell(0.3, 1);
	}

}
