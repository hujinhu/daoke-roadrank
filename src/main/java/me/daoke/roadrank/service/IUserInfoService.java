package me.daoke.roadrank.service;

import me.daoke.roadrank.dto.UserInfo;

public interface IUserInfoService {

	/**
	 * 根据account获取用户
	 * @param accountid
	 * @return
	 */
	UserInfo getUserByAccount(String accountid);

	/**
	 * 更新用户基本信息
	 * @param baseUserInfo
	 * @return 
	 */
	void updateUser(UserInfo baseUserInfo);

}
