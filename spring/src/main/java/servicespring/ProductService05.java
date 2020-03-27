package servicespring;

public class ProductService05 implements ProductService {

	ProductDAO dao;
	
	public void setDao(ProductDAO dao) {
		this.dao = dao;
	}

	@Override
	public ProductVO sell() {
		System.out.println("5월 30% 세일중");
		
//		ProductDAO = new ProductDAO();
		return dao.sell(0.3, 1);
	}

}
