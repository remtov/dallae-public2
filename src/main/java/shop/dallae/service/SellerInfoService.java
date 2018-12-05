package shop.dallae.service;

import java.util.List;

import shop.dallae.vo.SellerInfo;

public interface SellerInfoService {
	public List<SellerInfo> getSellerInfoList(SellerInfo sellerInfo);

	public SellerInfo getSellerInfo(Integer sellerInfoNumber);

	public int insertSellerInfo(SellerInfo sellerInfo);

	public int deleteSellerInfo(Integer sellerInfoNumber);


	
}
