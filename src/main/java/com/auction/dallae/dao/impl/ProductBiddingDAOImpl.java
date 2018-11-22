package com.auction.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.dallae.dao.ProductBiddingDAO;
import com.auction.dallae.vo.ProductBidding;
@Repository
public class ProductBiddingDAOImpl implements ProductBiddingDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public List<ProductBidding> getProductBiddingList(ProductBidding ProductBidding) {
		return sqlSessionTemplate.selectList("SQL.ProductBiddingSQL.getProductBiddingList", ProductBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer productNumber) {
		return sqlSessionTemplate.selectOne("SQL.ProductBiddingSQL.getProductBidding", productNumber);
	}

	@Override
	public int insertProductBidding(ProductBidding productBidding) {
		return sqlSessionTemplate.insert("SQL.ProductBiddingSQL.insertProductBidding", productBidding);
	}

	@Override
	public int updateProductBidding(ProductBidding productBidding) {
		return sqlSessionTemplate.delete("SQL.ProductBiddingSQL.deleteProductBidding", productBidding);
	}

	@Override
	public int deleteProductBidding(Integer productNumber) {
		return sqlSessionTemplate.update("SQL.ProductBiddingSQL.updateProductBidding", productNumber);
	}



}
