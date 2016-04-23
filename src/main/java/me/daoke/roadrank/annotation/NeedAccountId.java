package me.daoke.roadrank.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/** 
* @author 作者：<a href="mailto:hjh@51box.cn">胡金虎</a>
* @version 创建时间：2016年4月22日 上午11:25:58 
*/
@Retention(RetentionPolicy.RUNTIME)  
@Target({ElementType.METHOD, ElementType.TYPE}) 
public @interface NeedAccountId {
	public boolean value() default true;

}
