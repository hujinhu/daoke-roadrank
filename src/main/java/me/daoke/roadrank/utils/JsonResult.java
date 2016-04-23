package me.daoke.roadrank.utils;

import me.daoke.roadrank.enumeration.ErrorCode;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

/**
 * $.ajax后需要接受的JSON
 */
@JsonSerialize
@JsonInclude(Include.NON_NULL)
public class JsonResult {

	@JsonProperty("ERRCODE")
	private String errcode;// 提示信息

	@JsonProperty("RESULT")
	private Object result = null;// 其他信息

	public static JsonResult failure(ErrorCode error) {
		return new JsonResult(error.getCode(), error.getDesc());
	}

	public static JsonResult success(Object obj) {
		return new JsonResult(ErrorCode.SUCCESS.getCode(), obj);
	}
	public static JsonResult success() {
		return new JsonResult(ErrorCode.SUCCESS.getCode(), ErrorCode.SUCCESS.getDesc());
	}
	public JsonResult() {
		super();
	}

	public String getERRCODE() {
		return errcode;
	}

	public void setERRCODE(String eRRCODE) {
		errcode = eRRCODE;
	}

	public Object getRESULT() {
		return result;
	}

	public void setRESULT(Object rESULT) {
		result = rESULT;
	}

	public JsonResult(String eRRCODE, Object rESULT) {
		super();
		errcode = eRRCODE;
		result = rESULT;
	}
	
	@Override
	public String toString() {
		
		return JsonUtil.nonDefaultMapper().toJson(this);
	}
	
}
