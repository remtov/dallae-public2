package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.dallae.dao.UserInfoDAO;
import com.auction.dallae.service.UserInfoService;
import com.auction.dallae.vo.UserInfo;

@Repository
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoDAO userInfoDAO;

	@Override
	public List<UserInfo> getUserInfoList(UserInfo userInfo) {

		return userInfoDAO.getUserInfoList(userInfo);
	}

	@Override
	public UserInfo getUserInfo(Integer userNumber) {

		return userInfoDAO.getUserInfo(userNumber);
	}

	@Override
	public int insertUserInfo(UserInfo userInfo) {

		return userInfoDAO.insertUserInfo(userInfo);
	}

	@Override
	public int updateUserInfo(UserInfo userInfo) {

		return userInfoDAO.updateUserInfo(userInfo);
	}

	@Override
	public int deleteUserInfo(Integer userNumber) {

		return userInfoDAO.deleteUserInfo(userNumber);
	}

	@Override
	public UserInfo getId(UserInfo userInfo) {

		return userInfoDAO.getId(userInfo);
	}

	@Override
	public UserInfo getPassword(UserInfo userInfo) {

		return userInfoDAO.getPassword(userInfo);
	}

	@Override
	public UserInfo login(UserInfo userInfo) {

		return userInfoDAO.login(userInfo);
	}

}
