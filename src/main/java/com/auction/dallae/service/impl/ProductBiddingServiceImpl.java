package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductBiddingDAOImpl;
import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;

@Service
public class ProductBiddingServiceImpl implements ProductBiddingService{
	
	@Autowired
	private ProductBiddingDAOImpl productBiddingDAOImpl;

	@Override
	public List<ProductBidding> getProductList(ProductBidding productBidding) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.getProductBiddingList(productBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer productNumber) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.get;
	}

	@Override
	public int insertProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProductBidding(Integer productNumber) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return 0;
	}



	

}
