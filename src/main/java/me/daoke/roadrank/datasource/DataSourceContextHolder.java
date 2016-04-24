package me.daoke.roadrank.datasource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.Assert;

/**
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月24日 上午10:19:25 
 */
public class DataSourceContextHolder {
	private static Logger log = LoggerFactory.getLogger(DataSourceContextHolder.class);
	private static final ThreadLocal<DataSourceType> contextHolder = new ThreadLocal<DataSourceType>();

	public static void setDataSource(DataSourceType dataSourceType) {
		Assert.notNull(dataSourceType, "必须指定DataSource");
		log.info("setDataSource:{}",dataSourceType);
		contextHolder.set(dataSourceType);
	}
	public static DataSourceType getDataSource() {
		return contextHolder.get();
	}
	public static void clearDataSource() {
		contextHolder.remove();
	}
}
