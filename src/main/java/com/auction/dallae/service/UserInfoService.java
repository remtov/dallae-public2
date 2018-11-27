package com.auction.dallae.service;

import java.util.List;

import com.auction.dallae.vo.UserInfo;

public interface UserInfoService {

	public List<UserInfo> getUserInfoList(UserInfo userInfo);

	public UserInfo getUserInfo(Integer userNumber);// 관리자가 회원을 보는 뷰페이지로

	public int insertUserInfo(UserInfo userInfo);

	public int updateUserInfo(UserInfo userInfo);

	public int deleteUserInfo(Integer userNumber);

	public UserInfo getId(UserInfo userInfo);

	public int getPassword(UserInfo userInfo);

	public UserInfo login(UserInfo userInfo);
	public int checkId(UserInfo userInfo);

}
