package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductBiddingDAOImpl;
import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.utils.fileupload.Util;
import com.auction.dallae.vo.ProductBidding;

@Service
public class ProductBiddingServiceImpl implements ProductBiddingService {

	@Autowired
	private ProductBiddingDAOImpl productBiddingDAOImpl;


	@Override
	public ProductBidding getBidding(Integer productNumber) {
		return productBiddingDAOImpl.getBidding(productNumber);
	}

	@Override
	public int inserBidding(ProductBidding ProductBidding) {
		return productBiddingDAOImpl.inserBidding(ProductBidding);
	}

	@Override
	public int updateBidding(ProductBidding productBidding) {
		return productBiddingDAOImpl.updateBidding(productBidding);
	}

	@Override
	public int updateBiddingEnd(ProductBidding productBidding) {
		return productBiddingDAOImpl.updateBiddingEnd(productBidding);
	}

	@Override
	public int deleteBidding(Integer productNumber) {
		return productBiddingDAOImpl.deleteBidding(productNumber);
	}

}
