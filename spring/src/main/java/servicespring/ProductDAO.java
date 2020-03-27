package servicespring;

import org.springframework.beans.factory.annotation.Autowired;

public class ProductDAO {
	
	@Autowired
	ProductVO vo;

	public void setVo(ProductVO vo) {
		this.vo = vo;
	}
	
	public ProductVO sell(double sale, int coupon) {
//		ProductVO vo = new ProductVO();
//		vo.setCode(100);
//		vo.setName("멀티컴퓨터");
//		vo.setPrice(100000);
		vo.setSale(sale);
		vo.setCoupon(coupon);
		
		return vo;
	}
	
}
