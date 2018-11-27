package com.auction.dallae.service;

import java.util.List;

import com.auction.dallae.vo.Product;

public interface ProductService {

	public List<Product> getProductList(Product product);

	public List<Product> getNum(Product product);
	
	public Product getProduct(Integer productNumber);

	public int insertProduct(Product product);

	public int deleteProduct(Integer productNumber);

	public int updateProduct(Product product);

	public List<Product> getProductUserId(Product product);

	public List<Product> getProductListEndDate(Product product);

	/* 홈 컨트롤러 탔음 */

	public Product getProductCategoryFashion(Product product);

	public Product getProductCategoryDigital(Product product);

	public Product getProductCategoryRareCollection(Product product);

	public Product getProductCategoryHealthBeauty(Product product);

	public Product getProductCategoryMotorPartz(Product product);

	public Product getProductCategoryToyHobby(Product product);

	public Product getProductCategorySports(Product product);

	public Product getProductCategoryLife(Product product);
}
