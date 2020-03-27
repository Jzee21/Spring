package aop_exam;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

public class Common {
	
	public void around(ProceedingJoinPoint joinpoint) {
		try {
			System.out.println("오늘 점심에 뭐 먹었어요?");
			Object returnval = (Object)joinpoint.proceed();
			System.out.println(returnval + " 먹었군요!\n");
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}
	
	public void before() {
		System.out.println("b]오늘 점심에 뭐 먹었어요?");
	}
	
	public void after(Object ret) {
		System.out.println("a]" + ret + " 먹었군요!\n");
	}

}
