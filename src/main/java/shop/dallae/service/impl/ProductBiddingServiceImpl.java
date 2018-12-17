package shop.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dallae.dao.impl.ProductBiddingDAOImpl;
import shop.dallae.service.ProductBiddingService;
import shop.dallae.vo.ProductBidding;

@Service
public class ProductBiddingServiceImpl implements ProductBiddingService {

	@Autowired
	private ProductBiddingDAOImpl productBiddingDAOImpl;

	// 관리자전체검색용
	@Override
	public List<ProductBidding> getBiddingList(ProductBidding productBidding) {
		return productBiddingDAOImpl.getProductBiddingList(productBidding);
	}

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
