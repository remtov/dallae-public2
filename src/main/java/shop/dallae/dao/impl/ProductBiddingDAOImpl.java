package shop.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.dallae.dao.ProductBiddingDAO;
import shop.dallae.vo.ProductBidding;
@Repository
public class ProductBiddingDAOImpl implements ProductBiddingDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	// 관리자용 전체검색
	@Override
	public List<ProductBidding> getProductBiddingList(ProductBidding productBidding) {
		
		return sqlSessionTemplate.selectList("SQL.BiddingSQL.getProductBiddingList", productBidding);
	}
	
	@Override
	public ProductBidding getBidding(Integer productNumber) {
		return sqlSessionTemplate.selectOne("SQL.BiddingSQL.getBidding", productNumber);
	}

	@Override
	public int inserBidding(ProductBidding ProductBidding) {
		return sqlSessionTemplate.insert("SQL.BiddingSQL.inserBidding", ProductBidding);
	}

	@Override
	public int updateBidding(ProductBidding productBidding) {
		return sqlSessionTemplate.update("SQL.BiddingSQL.updateBidding", productBidding);
	}

	@Override
	public int updateBiddingEnd(ProductBidding productBidding) {
		return sqlSessionTemplate.update("SQL.BiddingSQL.updateBiddingEnd", productBidding);
	}

	@Override
	public int deleteBidding(Integer productNumber) {
		return sqlSessionTemplate.delete("SQL.BiddingSQL.deleteBidding", productNumber);
	}

	



}
