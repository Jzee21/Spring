package aop1;

public class Member {
	
	public void login(String id) {
		System.out.println(id + " 님이 로그인 하셨습니다.");
	}
	
	public void logout() {
		System.out.println("로그아웃 하셨습니다.");
	}
	
}
