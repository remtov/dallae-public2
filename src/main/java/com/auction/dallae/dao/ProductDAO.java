package com.auction.dallae.dao;

import java.util.List;

import com.auction.dallae.vo.Product;

public interface ProductDAO {
	public List<Product> getProductList(Product product);

	public Product getProduct(Integer productNumber);

	public int insertProduct(Product product);

	public int updateProduct(Product product);

	public int deleteProduct(Integer productNumber);

}
