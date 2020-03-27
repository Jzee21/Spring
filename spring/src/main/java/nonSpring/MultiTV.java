package nonSpring;

public class MultiTV implements TV {
	
	// power
	public void powerOn() {
		System.out.println("멀티TV:전원켜다");
	}

	public void powerOff() {
		System.out.println("멀티TV:전원끄다");
	}
	
	// volume
//	public void volumeUp() {
//		System.out.println("멀티TV:볼륨높이다");
//	}
//	
//	public void volumeDown() {
//		System.out.println("멀티TV:볼륨낮추다");
//	}

	// after implements TV
	@Override
	public void soundUp() {
//		this.volumeUp();
		System.out.println("멀티TV:볼륨높이다");
	}

	@Override
	public void soundDown() {
//		this.volumeDown();
		System.out.println("멀티TV:볼륨낮추다");
	}
	
}
