package com.auction.dallae.dao.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.auction.dallae.dao.ProductDAO;
import com.auction.dallae.vo.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate SqlSessionTemplate;

	@Override
	public List<Product> getProductList(Product product) {

		return SqlSessionTemplate.selectList("SQL.ProductSQL.getProductList", product);
	}

	@Override
	public Product getProduct(Integer productNumber) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProduct", productNumber);
	}

	@Override
	public int insertProduct(Product product) {

		return SqlSessionTemplate.insert("SQL.ProductSQL.insertProduct", product);
	}

	@Override
	public int deleteProduct(Integer productNumber) {

		return SqlSessionTemplate.delete("SQL.ProductSQL.deleteProduct", productNumber);
	}

	@Override
	public int updateProduct(Product product) {

		return SqlSessionTemplate.update("SQL.ProductSQL.updateProduct", product);
	}

	
	
	@Override
	public List<Product> getProductUserId(Product product) {

		return SqlSessionTemplate.selectList("SQL.ProductSQL.getProductUserId", product);
	}

}
