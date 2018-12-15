package shop.dallae.service;



import java.util.List;

import shop.dallae.vo.ProductBidding;

public interface ProductBiddingService {
	
	public List<ProductBidding> getBiddingList(ProductBidding productBidding);//관리자전체검색용
	
	public ProductBidding getBidding(Integer productNumber);

	public int inserBidding(ProductBidding ProductBidding);

	public int updateBidding(ProductBidding productBidding);

	public int updateBiddingEnd(ProductBidding productBidding);

	public int deleteBidding(Integer productNumber);

	

}
