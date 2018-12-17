package shop.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dallae.dao.impl.SellerInfoDAOImpl;
import shop.dallae.service.SellerInfoService;
import shop.dallae.vo.SellerInfo;

@Service
public class SellerInfoServiceImpl implements SellerInfoService {

	@Autowired
	private SellerInfoDAOImpl sellerInfoDAOImpl;

	@Override
	public List<SellerInfo> getSellerInfoList(SellerInfo sellerInfo) {
		return sellerInfoDAOImpl.getSellerInfoList(sellerInfo);
	}

	@Override
	public SellerInfo getSellerInfo(Integer sellerInfoNumber) {

		return sellerInfoDAOImpl.getSellerInfo(sellerInfoNumber);
	}

	@Override
	public int insertSellerInfo(SellerInfo sellerInfo) {

		return sellerInfoDAOImpl.insertSellerInfo(sellerInfo);
	}

	@Override
	public int deleteSellerInfo(Integer sellerInfoNumber) {

		return sellerInfoDAOImpl.deleteSellerInfo(sellerInfoNumber);
	}

}