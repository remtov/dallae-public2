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

	/* 홈화면 카테고리별 최고가격매물*/

	public Product getProductCategoryFashion(Product product);

	public Product getProductCategoryDigital(Product product);

	public Product getProductCategoryRareCollection(Product product);

	public Product getProductCategoryHealthBeauty(Product product);

	public Product getProductCategoryMotorPartz(Product product);

	public Product getProductCategoryToyHobby(Product product);

	public Product getProductCategorySports(Product product);

	public Product getProductCategoryLife(Product product);
	
	
	/* 카테고리별 리스트 */
	public List<Product> getProductCategoryFashionList(Product product);
	public List<Product> getProductCategoryDigitalList(Product product);
	public List<Product> getProductCategoryRareCollectionList(Product product);
	public List<Product> getProductCategoryHealthBeautyList(Product product);
	public List<Product> getProductCategoryMotorPartzList(Product product);
	public List<Product> getProductCategoryToyHobbyList(Product product);
	public List<Product> getProductCategorySportsList(Product product);
	public List<Product> getProductCategoryLifeList(Product product);
	
}
