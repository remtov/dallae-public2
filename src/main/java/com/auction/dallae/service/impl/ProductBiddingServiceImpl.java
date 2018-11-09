package com.auction.dallae.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.dallae.dao.impl.ProductBiddingDAOImpl;
import com.auction.dallae.fileupload.Util;
import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;

@Service
public class ProductBiddingServiceImpl implements ProductBiddingService {

	@Autowired
	private ProductBiddingDAOImpl productBiddingDAOImpl;

	@Override
	public List<ProductBidding> getProductBiddingList(ProductBidding productBidding) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.getProductBiddingList(productBidding);
	}

	@Override
	public ProductBidding getProductBidding(Integer productNumber) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.getProductBidding(productNumber);
	}

	@Override
	public int insertProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.insertProductBidding(ProductBidding);
		
		//int success = productBiddingDAOImpl.insertProductBidding(productBidding);

		/*//이미지 받을때 쓰는거 같은데 일단 냅둘게요
		 * if (success != 1) {
			String filePath = Util.uploadPath + product.getProductImage();

			Util.deleteFile(filePath);
		}

		return success;*/
	}

	@Override
	public int deleteProductBidding(Integer productNumber) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.deleteProductBidding(productNumber);
	}

	@Override
	public int updateProductBidding(ProductBidding ProductBidding) {
		// TODO Auto-generated method stub
		return productBiddingDAOImpl.updateProductBidding(ProductBidding);
	}

}
