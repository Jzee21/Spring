package aop_exam;

import org.springframework.stereotype.Component;

public class Cat implements Animal {

	@Override
	public String lunch() {
		System.out.println("생선을 먹었습니다.");
		return "냥이-생선";
	}

}
