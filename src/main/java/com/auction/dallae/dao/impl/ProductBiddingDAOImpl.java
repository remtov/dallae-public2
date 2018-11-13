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
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectList("SQL.ProductBiddingSQL.getProductBiddingList", ProductBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer ProductNumber) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.selectOne("SQL.ProductBiddingSQL.getProductBidding", ProductNumber);
	}

	@Override
	public int insertProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.insert("SQL.ProductBiddingSQL.insertProductBidding", ProductBidding);
	}

	@Override
	public int updateProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.delete("SQL.ProductBiddingSQL.deleteProductBidding", ProductBidding);
	}

	@Override
	public int deleteProductBidding(Integer ProductNumber) {
		// TODO Auto-generated method stub
		return SqlSessionTemplate.update("SQL.ProductBiddingSQL.updateProductBidding", ProductNumber);
	}



}
