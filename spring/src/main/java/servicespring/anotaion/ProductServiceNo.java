package servicespring.anotaion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("service")
public class ProductServiceNo implements ProductService {

	@Autowired
	ProductDAO dao;
	
//	public void setDao(ProductDAO dao) {
//		this.dao = dao;
//	}

	@Override
	public ProductVO sell() {
		System.out.println("정상 판매중");
		
//		ProductDAO = new ProductDAO();
		return dao.sell(0.0, 5);
	}

}
