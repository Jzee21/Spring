package nonSpring;

public class Main {

	public static void main(String[] args) {
		// 객체 변경시 코드수정 불가피 = 결합도 높다
		// tv 변수 생성 객체가 MultiTV, OtherTV 중 하나
		
		// 1.
//		MultiTV tv = new MultiTV();
//		OtherTV tv = new OtherTV();
//		tv.powerOn();
//		tv.volumeUp();
//		tv.volumeDown();
//		tv.powerOff();
		
		
		// 2.
		// after implements TV
		// dependency	: 직접 객체 생성
//		TV tv = new MultiTV();
//		TV tv = new OtherTV();
		
		
		// 3.
		// after TVFactory
		// dependency	: 위임(다른 객체로부터 전달)
		TVFactory factory = new TVFactory();
//		TV tv = factory.getTV("multi");
//		TV tv = factory.getTV("other");
		TV tv = factory.getTV(args[0]);
		
		
		tv.powerOn();
		tv.soundUp();
		tv.soundDown();
		tv.powerOff();
		
		
		
	}

}
