package com.auction.dallae.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.dallae.dao.UserInfoDAO;
import com.auction.dallae.vo.UserInfo;

import lombok.extern.slf4j.Slf4j;


@Repository
@Slf4j
public class UserInfoDAOImpl implements UserInfoDAO {


	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<UserInfo> getUserInfoList(UserInfo userInfo) {
		return sqlSession.selectList("SQL.UserInfo.getUserInfoList",userInfo);
	}

	@Override
	public UserInfo getUserInfo(Integer userNumber) {
		
		return sqlSession.selectOne("SQL.UserInfo.getUserInfo",userNumber);
	}

	@Override
	public int insertUserInfo(UserInfo userInfo) {
		
		return sqlSession.insert("SQL.UserInfo.insertUserInfo",userInfo);
	}

	@Override
	public int updateUserInfo(UserInfo userInfo) {
		
		return sqlSession.update("SQL.UserInfo.updateUserInfo",userInfo);
	}

	@Override
	public int deleteUserInfo(Integer userNumber) {
		
		return sqlSession.delete("SQL.UserInfo.deleteUserInfo",userNumber);
	}

	@Override
	public UserInfo getId(UserInfo userInfo) {
		System.out.println(sqlSession.selectList("SQL.UserInfo.getUserInfoList"));
		
		System.out.println("userCnt : " + sqlSession.selectOne("SQL.UserInfo.getIdCnt",userInfo));
		return sqlSession.selectOne("SQL.UserInfo.getId",userInfo);
		
	}

	@Override
	public UserInfo getPassword(UserInfo userInfo) {
		
		return sqlSession.selectOne("SQL.UserInfo.getPassword",userInfo);
	}

	@Override
	public UserInfo login(UserInfo userInfo) {
		
		return sqlSession.selectOne("SQL.UserInfo.getLogin",userInfo);
	}



}
