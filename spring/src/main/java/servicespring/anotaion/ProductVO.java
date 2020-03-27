package servicespring.anotaion;

//import org.springframework.stereotype.Component;

//@Component("vo")
public class ProductVO {
	
	int code;
	String name;
	int price;
	int coupon;
	double sale;
	
	// getter / setter
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCoupon() {
		return coupon;
	}
	public void setCoupon(int coupon) {
		this.coupon = coupon;
	}
	public double getSale() {
		return sale;
	}
	public void setSale(double sale) {
		this.sale = sale;
	}
	
	@Override
	public String toString() {
		return "Product [code : " + code + ", name : " + name + 
				", price : " + price + ", sale : " + price*(1-sale) + 
				", coupon : " + coupon + "]";
	}
	
}
