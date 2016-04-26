package me.daoke.roadrank.pojo;

import net.sf.json.JSONObject;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(Include.ALWAYS)
public class BaseLoginInfo {

	private String accountID;
	private String token;
	private String msgToken;
	private UserInfo userInfo;
	private JSONObject base;
	private JSONObject roadRank;

	public String getAccountID() {
		return accountID;
	}

	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getMsgToken() {
		return msgToken;
	}

	public void setMsgToken(String msgToken) {
		this.msgToken = msgToken;
	}

	public JSONObject getBase() {
		return base;
	}

	public void setBase(JSONObject base) {
		this.base = base;
	}

	public JSONObject getRoadRank() {
		return roadRank;
	}

	public void setRoadRank(JSONObject roadRank) {
		this.roadRank = roadRank;
	}

	public class UserInfo {
		@JsonProperty("cityName")
		private String city;
		@JsonProperty("sex")
		private Byte gender;
		@JsonProperty("headerUrl")
		private String headName;
		@JsonProperty("nickName")
		private String nickname;

		public String getCity() {
			return city;
		}

		public void setCity(String city) {
			this.city = city;
		}

		public Byte getGender() {
			return gender;
		}

		public void setGender(Byte gender) {
			this.gender = gender;
		}

		public String getHeadName() {
			return headName;
		}

		public void setHeadName(String headName) {
			this.headName = headName;
		}

		public String getNickname() {
			return nickname;
		}

		public void setNickname(String nickname) {
			this.nickname = nickname;
		}

	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public BaseLoginInfo() {
		super();
		this.userInfo = new UserInfo();
	}

}
