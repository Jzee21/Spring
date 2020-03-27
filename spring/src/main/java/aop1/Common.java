package aop1;

import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;

public class Common {
	
	long starttime = System.currentTimeMillis();
	long endtime;
	
	// before
	public void a() {
//		starttime = System.currentTimeMillis();	// now time : 1/1000 sec
		System.out.println("[ method 호출시각 : " + new Date(starttime) + " ]");
	}
	
	// after
	public void b() {
		endtime = System.currentTimeMillis();
		System.out.println("[ method 소요시간(1/1000s) : " + (endtime-starttime) + " ]");
	}
	
	// around : before + (target method) + after
	public void c(ProceedingJoinPoint joinpoint) {
		try {
			System.out.println("=== Before Method ===");
			Object returnval = (Object)joinpoint.proceed();	// 핵심관심 메소드
			System.out.println("result : " + returnval);
			System.out.println("getTarget() : " + joinpoint.getTarget());
			System.out.println("getArgs() : " + joinpoint.getArgs());
			System.out.println("toLongString() : " + joinpoint.toLongString());
			System.out.println("=== After  Method ===");
		} catch (Throwable e) {
			e.printStackTrace();
		}
	}
	
	
	
}
