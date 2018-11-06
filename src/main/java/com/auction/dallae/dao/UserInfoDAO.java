package com.auction.dallae.dao;

import java.util.List;

import com.auction.dallae.vo.UserInfo;

public interface UserInfoDAO {

	public List<UserInfo> getUserInfoList(UserInfo userInfo);

	public UserInfo getUserInfo(Integer userNumber);

	public int insertUserInfo(UserInfo userInfo);

	public int updateUserInfo(UserInfo userInfo);

	public int deleteUserInfo(Integer userNumber);

	public UserInfo getId(UserInfo userInfo);

	public UserInfo getPassword(UserInfo userInfo);

	public UserInfo login(UserInfo userInfo);
}
