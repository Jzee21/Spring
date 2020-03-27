package servicespring.anotaion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service12")
public class ProductService12 implements ProductService {

	@Autowired
	ProductDAO dao;
	
//	public void setDao(ProductDAO dao) {
//		this.dao = dao;
//	}

	@Override
	public ProductVO sell() {
		System.out.println("12월 50% 세일중");
		
//		ProductDAO = new ProductDAO();
		return dao.sell(0.5, 0);
	}

}
