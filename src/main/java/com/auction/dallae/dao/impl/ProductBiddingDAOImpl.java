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
	private SqlSessionTemplate SqlSessionTemplate;
	@Override
	public List<ProductBidding> getProductBiddingList(ProductBidding ProductBidding) {
		return SqlSessionTemplate.selectList("SQL.ProductBiddingSQL.getProductBiddingList", ProductBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer ProductNumber) {
		return SqlSessionTemplate.selectOne("SQL.ProductBiddingSQL.getProductBidding", ProductNumber);
	}

	@Override
	public int insertProductBidding(ProductBidding ProductBidding) {
		return SqlSessionTemplate.insert("SQL.ProductBiddingSQL.insertProductBidding", ProductBidding);
	}

	@Override
	public int updateProductBidding(ProductBidding ProductBidding) {
		return SqlSessionTemplate.delete("SQL.ProductBiddingSQL.deleteProductBidding", ProductBidding);
	}

	@Override
	public int deleteProductBidding(Integer ProductNumber) {
		return SqlSessionTemplate.update("SQL.ProductBiddingSQL.updateProductBidding", ProductNumber);
	}



}
