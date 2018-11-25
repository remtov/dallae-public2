package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductDAOImpl;
import com.auction.dallae.service.ProductService;
import com.auction.dallae.utils.fileupload.Util;
import com.auction.dallae.vo.Product;



@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAOImpl productDAOImpl;
	
	@Override
	public List<Product> getProductList(Product product) {
		return productDAOImpl.getProductList(product);
	}

	@Override
	public Product getProduct(Integer productNumber) {
		return productDAOImpl.getProduct(productNumber);
	}

	@Override
	public int insertProduct(Product product) {
		System.out.println(product);
		int success =productDAOImpl.insertProduct(product);
		if(success != 1) {
			String filePath = Util.uploadPath + product.getProductImage();
			Util.deleteFile(filePath);
		}
		return success;
	}

	@Override
	public int deleteProduct(Integer productNumber) {
		String file = productDAOImpl.getProduct(productNumber).getProductImage();
		int success = productDAOImpl.deleteProduct(productNumber);
		if(success == 1) {
			String filePath =Util.uploadPath + file;
			Util.deleteFile(filePath);
		}
		return success;
	}

	@Override
	public int updateProduct(Product Product) { 
		String file = productDAOImpl.getProduct(Product.getProductNumber()).getProductImage();
		int success = productDAOImpl.updateProduct(Product);
		if(Product.getProductImage() != null) {
			if(success == 1) {
				String filePath = Util.uploadPath + file;
				Util.deleteFile(filePath);
			}
		}
		return success;
	}

	@Override
	public List<Product> getProductUserId(Product product) {
		return productDAOImpl.getProductUserId(product);
	}

	@Override
	public List<Product> getProductListEndDate(Product product) {
		return productDAOImpl.getProductListEndDate(product);
	}
	
	/*홈컨트롤러 탔음*/
	@Override
	public Product getProductCategoryFashion(Product product) {
		return productDAOImpl.getProductCategoryFashion(product);
	}
	@Override
	public Product getProductCategoryDigital(Product product) {
		return productDAOImpl.getProductCategoryDigital(product);
	}
	@Override
	public Product getProductCategoryRareCollection(Product product) {
		return productDAOImpl.getProductCategoryRareCollection(product);
	}
	@Override
	public Product getProductCategoryHealthBeauty(Product product) {
		return productDAOImpl.getProductCategoryHealthBeauty(product);
	}
	@Override
	public Product getProductCategoryMotorPartz(Product product) {
		return productDAOImpl.getProductCategoryMotorPartz(product);
	}
	@Override
	public Product getProductCategoryToyHobby(Product product) {
		return productDAOImpl.getProductCategoryToyHobby(product);
	}
	@Override
	public Product getProductCategorySports(Product product) {
		return productDAOImpl.getProductCategorySports(product);
	}
	@Override
	public Product getProductCategoryLife(Product product) {
		return productDAOImpl.getProductCategoryLife(product);
	}

}
