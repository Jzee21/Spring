package nonSpring;

public class TVFactory {
	
	public TV getTV(String name) {
		if(name.equals("multi")) {
			return new MultiTV();
		}
		else if (name.equals("other")) {
			return new OtherTV();
		}
		return null;
	}

}
