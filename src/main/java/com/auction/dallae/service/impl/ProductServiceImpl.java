package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductDAOImpl;
import com.auction.dallae.fileupload.Util;
import com.auction.dallae.service.ProductService;
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

}
