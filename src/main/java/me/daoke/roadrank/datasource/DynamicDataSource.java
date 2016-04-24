package me.daoke.roadrank.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/** 
 * 动态数据源
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月24日 上午10:18:09 
 */
public class DynamicDataSource extends AbstractRoutingDataSource{
	@Override
	protected Object determineCurrentLookupKey() {
		//return DataSourceType.LOGIN_CONFIG;
		return DataSourceContextHolder.getDataSource();
	}  

}
