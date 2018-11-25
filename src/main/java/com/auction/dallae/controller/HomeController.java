package com.auction.dallae.controller;

import java.util.Locale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.auction.dallae.service.ProductService;
import com.auction.dallae.vo.Product;

@Controller
public class HomeController {

	@Autowired
	public ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, @ModelAttribute Product product) {
		model.addAttribute("getProductCategoryFashion", productService.getProductCategoryFashion(product));
		model.addAttribute("getProductCategoryDigital", productService.getProductCategoryDigital(product));
		model.addAttribute("getProductCategoryRareCollection", productService.getProductCategoryRareCollection(product));
		model.addAttribute("getProductCategoryHealthBeauty", productService.getProductCategoryHealthBeauty(product));
		model.addAttribute("getProductCategoryMotorPartz", productService.getProductCategoryMotorPartz(product));
		model.addAttribute("getProductCategoryToyHobby", productService.getProductCategoryToyHobby(product));
		model.addAttribute("getProductCategorySports", productService.getProductCategorySports(product));
		model.addAttribute("getProductCategoryLife", productService.getProductCategoryLife(product));

		return "home";
	}
}