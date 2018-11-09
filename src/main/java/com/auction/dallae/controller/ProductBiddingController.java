package com.auction.dallae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.auction.dallae.fileupload.PM;
import com.auction.dallae.fileupload.Util;
import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;

public class ProductBiddingController {

	@Autowired
	private ProductBiddingService productBiddingService;
	
	@RequestMapping(value = "/productbiddingList", method = RequestMethod.GET) 
	@ResponseBody
	public List<ProductBidding> getProductBiddingList() {
		return productBiddingService.getProductBiddingList(null);
		
	}
	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.GET)
	public ModelAndView getProduct(@PathVariable Integer productNumber) {
		return new ModelAndView("product/view", "productBidding", productBiddingService.getProductBidding(productNumber));
	}
	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteProduct(@PathVariable Integer productNumber) {
		return productBiddingService.deleteProductBidding(productNumber);
	}
	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateProduct(MultipartHttpServletRequest multipartHttpServletRequest, @PathVariable Integer productNumber) {
		System.out.println(productNumber);
		ProductBidding productBidding =PM.MapToVo(Util.saveFile(multipartHttpServletRequest), ProductBidding.class);
		productBidding.setProductNumber(productNumber);
		return productBiddingService.updateProductBidding(productBidding);
	}
	@RequestMapping(value = "/productbidding", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertProduct(MultipartHttpServletRequest multipartHttpServletRequest) {
		ProductBidding productBidding =PM.MapToVo(Util.saveFile(multipartHttpServletRequest), ProductBidding.class);
		return productBiddingService.insertProductBidding(productBidding);
	}
	
}