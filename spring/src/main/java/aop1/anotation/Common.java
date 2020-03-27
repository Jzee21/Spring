package aop1.anotation;

import java.util.Date;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component		// <bean id="common"
@Aspect			// <aop:aspect id="c" ref="common"
public class Common {
	
	long starttime = System.currentTimeMillis();
	long endtime;
	
	// <aop:pointcut expression="execution (public * aop1.anotation.*.*(..))" id="pc"/>
	@Pointcut("execution (public * aop1.anotation.*.*(..))")
	public void pc() {	}	// body에는 target method가 위치
	
	// before
	@Before("pc()")
	public void a() {
		System.out.println("[ method 호출시각 : " + new Date(starttime) + " ]");
	}
	
	// after
	//@After("pc()")
	public void b() {
		endtime = System.currentTimeMillis();
		System.out.println("[ method 소요시간(1/1000s) : " + (endtime-starttime) + " ]");
	}
	
	// around : before + (target method) + after
	//@Around("pc()")
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
