package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.SellerInfoDAOImpl;
import com.auction.dallae.service.SellerInfoService;
import com.auction.dallae.vo.SellerInfo;



@Service
public class SellerInfoServiceImpl implements SellerInfoService{

	@Autowired
	private SellerInfoDAOImpl sellerInfoDAOImpl;
	@Override
	public List<SellerInfo> getSellerInfoList(SellerInfo sellerInfo) {
		// TODO Auto-generated method stub
		return sellerInfoDAOImpl.getSellerInfoList(sellerInfo);
	}

	@Override
	public SellerInfo getSellerInfo(Integer sellerInfoNumber) {
		// TODO Auto-generated method stub
		return sellerInfoDAOImpl.getSellerInfo(sellerInfoNumber);
	}

	@Override
	public int insertSellerInfo(SellerInfo sellerInfo) {
		// TODO Auto-generated method stub
		return sellerInfoDAOImpl.insertSellerInfo(sellerInfo);
	}

	@Override
	public int deleteSellerInfo(Integer sellerInfoNumber) {
		// TODO Auto-generated method stub
		return sellerInfoDAOImpl.deleteSellerInfo(sellerInfoNumber);
	}

	


	
	
}