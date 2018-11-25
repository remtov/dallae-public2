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
	
	@Override
	public List<Product> getProductListEndDate(Product product) {

		return SqlSessionTemplate.selectList("SQL.ProductSQL.getProductListEndDate", product);
	}
	
	/*카테고리별 매물조회*/
	@Override
	public Product getProductCategoryFashion(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryFashion", product);
	}
	@Override
	public Product getProductCategoryDigital(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryDigital", product);
	}
	@Override
	public Product getProductCategoryRareCollection(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryRareCollection", product);
	}
	@Override
	public Product getProductCategoryHealthBeauty(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryHealthBeauty", product);
	}
	@Override
	public Product getProductCategoryMotorPartz(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryMotorPartz", product);
	}
	@Override
	public Product getProductCategoryToyHobby(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryToyHobby", product);
	}
	@Override
	public Product getProductCategorySports(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategorySports", product);
	}
	@Override
	public Product getProductCategoryLife(Product product) {

		return SqlSessionTemplate.selectOne("SQL.ProductSQL.getProductCategoryLife", product);
	}



}
