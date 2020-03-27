package servicespring.anotaion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//@componemt : all class 권장
@Repository("dao")	// dao class만 권장
public class ProductDAO {
	
	@Autowired
	ProductVO vo;

	// replace @Autowired
//	public void setVo(ProductVO vo) {
//		this.vo = vo;
//	}
	
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
