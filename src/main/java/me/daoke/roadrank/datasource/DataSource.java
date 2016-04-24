package me.daoke.roadrank.datasource;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月24日 上午10:54:09 
 */
@Target({ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataSource {
	//public DataSourceType dataSource() default DataSourceType.WEME_CAR;
	public DataSourceType dataSource();
}
