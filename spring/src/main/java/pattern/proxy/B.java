package pattern.proxy;

public class B implements ProxyInter {

	ProxyInter p;	// new A();	이 오게될 것
	
	public void setP(ProxyInter p) {
		this.p = p;
	}
	
	@Override
	public void action() {
		System.out.println("B class action 시작");
		p.action();
		System.out.println("B class action 종료");
	}

}
