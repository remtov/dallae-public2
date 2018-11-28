package com.auction.dallae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;

@Controller
public class ProductBiddingController {

	@Autowired
	private ProductBiddingService productBiddingService;
	

	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.GET)
	@ResponseBody
	public  ProductBidding getProduct(@PathVariable Integer productNumber) {
		return productBiddingService.getBidding(productNumber);
	}
	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteProduct(@PathVariable Integer productNumber) {
		return productBiddingService.deleteBidding(productNumber);
	}
	@RequestMapping(value = "/productbidding/{productNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateProduct(@RequestBody ProductBidding productBidding , @PathVariable Integer productNumber) {
		productBidding.setProductNumber(productNumber);
		return productBiddingService.updateBidding(productBidding);
	}
	@RequestMapping(value = "/productbidding", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertProduct(@RequestBody ProductBidding productBidding) {
		return productBiddingService.updateBiddingEnd(productBidding);
	}
	
}
