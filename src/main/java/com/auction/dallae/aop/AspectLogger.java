package com.auction.dallae.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



@Service
@Aspect
public class AspectLogger {

	private static final Logger logger = LoggerFactory.getLogger(AspectLogger.class);        
	private long sTime;  
	@Before("execution(* com.ict.member.Controller.*.*(..))")
	public void beforeLog(JoinPoint jp) {
		logger.debug("jp=>{}",jp);//시작
		sTime=System.currentTimeMillis();
	}
	@Around("execution(* com.ict.member.Controller.*.*(..))")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable {
		String sigName=pjp.getSignature().getName();
		String targetName = pjp.getTarget().toString();
		Object[] params =pjp.getArgs();
		logger.debug("{}.{}({})",new Object[] {targetName,sigName,params});
		Object obj = pjp.proceed();
		logger.debug("result=>{}",obj);
		return obj;	
	}
	@After("execution(* com.ict.member.Controller.*.*(..))")
	public void afterLog(JoinPoint jp) {
		logger.debug("end={}",jp);//끝날때 찍는것
		logger.debug("execution time=>{}ms",(System.currentTimeMillis()-sTime));
	}
	
}
