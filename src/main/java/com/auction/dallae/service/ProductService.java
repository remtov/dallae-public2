package com.auction.dallae.service;

import java.util.List;

import com.auction.dallae.vo.Product;

public interface ProductService {

	public List<Product> getProductList(Product product);

	public Product getProduct(Integer productNumber);

	public int insertProduct(Product product);

	public int deleteProduct(Integer productNumber);

	public int updateProduct(Product product);
	public List<Product> getProductUserId(Product product);
}
