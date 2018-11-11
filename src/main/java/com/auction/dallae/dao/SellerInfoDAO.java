package com.auction.dallae.dao;

import java.util.List;

import com.auction.dallae.vo.SellerInfo;

public interface SellerInfoDAO {
	public List<SellerInfo> getSellerInfoList(SellerInfo sellerInfo);

	public SellerInfo getSellerInfo(Integer sellerInfoNumber);

	public int insertSellerInfo(SellerInfo sellerInfo);

	public int updateSellerInfo(SellerInfo sellerInfo);

	public int deleteSellerInfo(Integer sellerInfoNumber);
}
