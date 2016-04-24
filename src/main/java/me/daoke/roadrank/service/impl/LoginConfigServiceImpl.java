package me.daoke.roadrank.service.impl;

import java.util.List;

import me.daoke.roadrank.dao.LoginConfigMapper;
import me.daoke.roadrank.datasource.DataSourceType;
import me.daoke.roadrank.datasource.DataSource;
import me.daoke.roadrank.dto.LoginConfig;
import me.daoke.roadrank.dto.LoginConfigCriteria;
import me.daoke.roadrank.service.ILoginConfigService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
@DataSource(dataSource=DataSourceType.LOGIN_CONFIG)
public class LoginConfigServiceImpl  implements ILoginConfigService{

	@Autowired
	private LoginConfigMapper loginConfigMapper;

	@Override
	public LoginConfig getByappKey(String appKey) {
		LoginConfigCriteria example = new LoginConfigCriteria();
		example.createCriteria().andAppKeyEqualTo(appKey);
		List<LoginConfig> list = loginConfigMapper.selectByExample(example);
		return list.isEmpty()?null:list.get(0);
	}
	 
}
