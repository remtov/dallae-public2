package com.auction.dallae.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.auction.dallae.fileupload.PM;
import com.auction.dallae.fileupload.Util;
import com.auction.dallae.service.ProductService;
import com.auction.dallae.vo.Product;




@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/ProductList", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductList() {
		return productService.getProductList(null);
		
	}
	@RequestMapping(value = "/Product/{productNumber}", method = RequestMethod.GET)
	public ModelAndView getProduct(@PathVariable Integer productNumber) {
		return new ModelAndView("product/view", "product", productService.getProduct(productNumber));
	}
	@RequestMapping(value = "/Product/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteProduct(@PathVariable Integer productNumber) {
		return productService.deleteProduct(productNumber);
	}
	@RequestMapping(value = "/Product/{productNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateProduct(MultipartHttpServletRequest multipartHttpServletRequest, @PathVariable Integer productNumber) {
		System.out.println(productNumber);
		Product product =PM.MapToVo(Util.saveFile(multipartHttpServletRequest), Product.class);
		product.setProductNumber(productNumber);
		return productService.updateProduct(product);
	}
	@RequestMapping(value = "/Product", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertProduct(MultipartHttpServletRequest multipartHttpServletRequest) {
		Product product =PM.MapToVo(Util.saveFile(multipartHttpServletRequest), Product.class);
		return productService.insertProduct(product);
	}
	
}
