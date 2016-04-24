package me.daoke.roadrank.datasource;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**
 * 切面选择,根据Datasource 注解来设置不同的数据源
 * Order(-1) 保证该AOP在@Transactional之前执行
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月24日 上午10:46:04 
 */
@Aspect
@Order(-1)
@Component
public class DataSourceAspect {

	private Logger log = LoggerFactory.getLogger(getClass());

	/**
	 *  设置切面范围
	 */
	@Pointcut("execution (* me.daoke.roadrank.service..*.*(..))")
	public void serviceExecution() {
		log.info("@Pointcut start.....");
	}

	@Before("serviceExecution()")
	public void setDynamicDataSource(JoinPoint jp) {
		log.info("@Pointcut before.....");
		DataSource dataSource = jp.getTarget().getClass().getAnnotation(DataSource.class);
		log.info("@Pointcut class DataSource:{}",dataSource!=null?dataSource.dataSource():null);
		if (dataSource == null) {
			dataSource = ((MethodSignature) jp.getSignature()).getMethod().getAnnotation(DataSource.class);
			log.info("@Pointcut method DataSource:{}",dataSource!=null?dataSource.dataSource():null);
		}
		if (dataSource != null) {
			DataSourceContextHolder.setDataSource(dataSource.dataSource());
		}
	}

	@After("serviceExecution()")
	public void setDefaultDataSource() {
		log.info("@Pointcut After.....");
		DataSourceContextHolder.clearDataSource();
	}
}