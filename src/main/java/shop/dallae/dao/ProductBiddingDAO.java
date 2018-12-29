package shop.dallae.dao;

import java.util.List;

import shop.dallae.vo.ProductBidding;

public interface ProductBiddingDAO {
	List<ProductBidding> getProductBiddingList(ProductBidding productBidding);

	public ProductBidding getBidding(Integer productNumber);

	public int inserBidding(ProductBidding ProductBidding);

	public int updateBidding(ProductBidding productBidding);

	public int updateBiddingEnd(ProductBidding productBidding);

	public int deleteBidding(Integer productNumber);

}
