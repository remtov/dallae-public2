package shop.dallae.dao;


import shop.dallae.vo.ProductBidding;

public interface ProductBiddingDAO {
	public ProductBidding getBidding(Integer productNumber);

	public int inserBidding(ProductBidding ProductBidding);

	public int updateBidding(ProductBidding productBidding);

	public int updateBiddingEnd(ProductBidding productBidding);

	public int deleteBidding(Integer productNumber);



}
