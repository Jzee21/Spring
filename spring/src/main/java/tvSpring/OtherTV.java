package tvSpring;

public class OtherTV implements TV {

	// Power,Volume
// IoT
//	public void powerOn() {}
//	public void turnOn() {}
	
	// Power
//	public void turnOn() {
//		System.out.println("otherTV:전원켜다");
//	}
//	
//	public void turnOff() {
//		System.out.println("otherTV:전원끄다");
//	}
	
	// Volume
	public void soundUp() {
		System.out.println("otherTV:볼륨높이다");
	}
	
	public void soundDown() {
		System.out.println("otherTV:볼륨낮추다");
	}

	// after implements TV	
	@Override
	public void powerOn() {
//		this.turnOn();
		System.out.println("otherTV:전원켜다");
	}

	@Override
	public void powerOff() {
//		this.turnOff();
		System.out.println("otherTV:전원끄다");
	}
	
}
