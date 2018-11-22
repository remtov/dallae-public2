package com.auction.dallae.dao;

import java.util.List;

import com.auction.dallae.vo.ProductBidding;

public interface ProductBiddingDAO {
	public List<ProductBidding> getProductBiddingList(ProductBidding ProductBidding);

	public ProductBidding getProductBidding(Integer productNumber);

	public int insertProductBidding(ProductBidding productBidding);

	public int updateProductBidding(ProductBidding productBidding);

	public int deleteProductBidding(Integer productNumber);


}
