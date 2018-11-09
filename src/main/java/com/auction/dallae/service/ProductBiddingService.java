package com.auction.dallae.service;

import java.util.List;

import com.auction.dallae.vo.ProductBidding;

public interface ProductBiddingService {

	public List<ProductBidding> getProductList(ProductBidding productBidding);

	public ProductBidding getProductBidding(Integer productNumber);

	public int insertProductBidding(ProductBidding ProductBidding);

	public int deleteProductBidding(Integer productNumber);

	public int updateProductBidding(ProductBidding ProductBidding);
}
