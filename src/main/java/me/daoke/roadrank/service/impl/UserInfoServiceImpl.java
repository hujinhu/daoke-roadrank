package me.daoke.roadrank.service.impl;

import java.util.List;

import me.daoke.roadrank.dao.UserInfoMapper;
import me.daoke.roadrank.dto.UserInfo;
import me.daoke.roadrank.dto.UserInfoCriteria;
import me.daoke.roadrank.service.IUserInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserInfoServiceImpl  implements IUserInfoService{

	@Autowired
	private UserInfoMapper userInfoMapper;
	@Override
	public UserInfo getUserByAccount(String accountid) {
		UserInfoCriteria example = new UserInfoCriteria();
		example.createCriteria().andAccountIDEqualTo(accountid);
		List<UserInfo> userInfoList = userInfoMapper.selectByExample(example);
		return userInfoList.isEmpty()?null:userInfoList.get(0);
	}
	@Override
	public void updateUser(UserInfo baseUserInfo) {
		userInfoMapper.updateByPrimaryKeySelective(baseUserInfo);
	}

}
