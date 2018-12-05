package shop.dallae.dao;

import java.util.List;

import shop.dallae.vo.UserInfo;

public interface UserInfoDAO {

	public List<UserInfo> getUserInfoList(UserInfo userInfo);

	public UserInfo getUserInfo(Integer userNumber);

	public int insertUserInfo(UserInfo userInfo);

	public int updateUserInfo(UserInfo userInfo);

	public int deleteUserInfo(Integer userNumber);

	public UserInfo getId(UserInfo userInfo);

	public int getPassword(UserInfo userInfo);

	public UserInfo login(UserInfo userInfo);
	
	public int checkId(UserInfo userInfo);
}
