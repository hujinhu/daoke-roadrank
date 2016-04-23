package me.daoke.roadrank.intercepter;

import java.io.IOException;
import java.text.SimpleDateFormat;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
/**
 * 暂时没用
 * java日期对象经过Jackson库转换成JSON日期格式化自定义类
 * @author 作者：<a href="mailto:1933549135@qq.com">胡金虎</a>
 * @version 创建时间：2016年4月21日 下午2:09:19 
 * @JsonSerialize(using = CustomDateSerializer.class)
 */
public class CustomDateSerializer extends JsonSerializer<Integer> {
	@Override
	public void serialize(Integer value, JsonGenerator jgen, SerializerProvider provider) throws IOException, JsonProcessingException {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = formatter.format(value);
		jgen.writeString(formattedDate);

	}
}