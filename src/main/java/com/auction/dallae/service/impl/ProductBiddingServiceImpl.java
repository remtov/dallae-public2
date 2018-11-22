package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductBiddingDAOImpl;
import com.auction.dallae.fileupload.Util;
import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;

@Service
public class ProductBiddingServiceImpl implements ProductBiddingService {

	@Autowired
	private ProductBiddingDAOImpl productBiddingDAOImpl;

	@Override
	public List<ProductBidding> getProductBiddingList(ProductBidding productBidding) {
		return productBiddingDAOImpl.getProductBiddingList(productBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer productNumber) {
		return productBiddingDAOImpl.getProductBidding(productNumber);
	}

	@Override
	public int insertProductBidding(ProductBidding productBidding) {
		return productBiddingDAOImpl.insertProductBidding(productBidding);
		
	}

	@Override
	public int deleteProductBidding(Integer productNumber) {
		return productBiddingDAOImpl.deleteProductBidding(productNumber);
	}

	@Override
	public int updateProductBidding(ProductBidding ProductBidding) {
		return productBiddingDAOImpl.updateProductBidding(ProductBidding);
	}

}
