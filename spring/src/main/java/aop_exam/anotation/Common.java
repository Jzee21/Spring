package aop_exam.anotation;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class Common {
	
	@Pointcut("execution (public * aop_exam.anotation.*.lunch(..))")
	public void ani() {	}
	
	@Around("ani()")
	public void around(ProceedingJoinPoint joinpoint) {
		try {
			System.out.println("오늘 점심에 뭐 먹었어요?");
			Object returnval = (Object)joinpoint.proceed();
			System.out.println(returnval + " 먹었군요!\n");
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}

}
