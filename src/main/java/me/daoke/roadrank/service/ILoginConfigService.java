package me.daoke.roadrank.service;

import me.daoke.roadrank.dto.LoginConfig;

public interface ILoginConfigService {
	public LoginConfig getByappKey(String appKey);
}
