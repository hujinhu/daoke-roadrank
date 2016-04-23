package me.daoke.roadrank.enumeration;

public enum ErrorCode {
	
	SUCCESS("0","ok"),
	
	APPKEY_ERROR("ME01002", "appKey error"),
	TOKEN_NOT_MATCHED("ME01003", "access token not matched"),
	TOKEN_EXPIRED("ME01004", "access token expired"),
	TOKEN_ERROR("ME01005", "access token not this authorization"),
	JSON_ERROR("ME01006", "error json data!"),
	SIGN_ERROR("ME01019", "sign is not match!"),
	BODY_IS_NULL("ME01024", "http body is null!"),
	HTTP_FAILED("ME01025", "http failed!"),
	SYSTEM_BUSY("ME01026", "system is busy now !");
	
	
	
	private String code;
	private String desc;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	private ErrorCode(String code, String desc) {
		this.code = code;
		this.desc = desc;
	}
	
	
	
	public static ErrorCode fromCode(String code) {
		if(code == null) return SYSTEM_BUSY;
		
		for(ErrorCode status : ErrorCode.values()) {
			if(code.equals(status.code)) 
				return status;
		}
		return SYSTEM_BUSY;
	}

}
