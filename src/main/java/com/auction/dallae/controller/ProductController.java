package com.auction.dallae.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.service.ProductService;
import com.auction.dallae.utils.fileupload.PM;
import com.auction.dallae.utils.fileupload.Util;
import com.auction.dallae.vo.Product;
import com.auction.dallae.vo.ProductBidding;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private ProductBiddingService productBiddingService;

	private ProductBidding productBidding;

	@RequestMapping(value = "/productlist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductList() {
		return productService.getProductList(null);
	}

	@RequestMapping(value = "/productlist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductList2(@RequestBody Product product) {
		return productService.getNum(product);
	}

	@RequestMapping(value = "/product/{productNumber}", method = RequestMethod.GET) // 필요없는지 확인 후 제거 할 것
	public ModelAndView getProduct(@PathVariable Integer productNumber) {
		return new ModelAndView("product/mainview", "product", productService.getProduct(productNumber));
	}

	@RequestMapping(value = "/productupdate/{productNumber}", method = RequestMethod.GET)
	public ModelAndView getProductupdate(@PathVariable Integer productNumber) {
		return new ModelAndView("product/view-update", "product", productService.getProduct(productNumber));
	}

	@RequestMapping(value = "/product/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteProduct(@PathVariable Integer productNumber) {
		return productService.deleteProduct(productNumber);
	}

	@RequestMapping(value = "/product/{productNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateProduct(MultipartHttpServletRequest multipartHttpServletRequest,
			@PathVariable Integer productNumber) {
		Product product = PM.MapToVo(Util.saveFile(multipartHttpServletRequest), Product.class);
		product.setProductNumber(productNumber);

		return productService.updateProduct(product);
	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertProduct(MultipartHttpServletRequest multipartHttpServletRequest) {
		Product product = PM.MapToVo(Util.saveFile(multipartHttpServletRequest), Product.class);
		/* productBidding.setProductNumber(product.getProductNumber()); */
		/* productBiddingService.insertProductBidding(productBidding); */
		return productService.insertProduct(product);
	}

	@RequestMapping(value = "/product_id", method = RequestMethod.POST)
	@ResponseBody
	public List<Product> getProductUserId(@RequestBody Product product) {

		return productService.getProductUserId(product);
	}

	@RequestMapping(value = "/productlistenddate", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductListEndDate() {
		return productService.getProductListEndDate(null);
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getProductCategory(Locale locale, Model model, @ModelAttribute Product product) {
		model.addAttribute("getProductCategoryFashion", productService.getProductCategoryFashion(product));
		model.addAttribute("getProductCategoryDigital", productService.getProductCategoryDigital(product));
		model.addAttribute("getProductCategoryRareCollection",
				productService.getProductCategoryRareCollection(product));
		model.addAttribute("getProductCategoryHealthBeauty", productService.getProductCategoryHealthBeauty(product));
		model.addAttribute("getProductCategoryMotorPartz", productService.getProductCategoryMotorPartz(product));
		model.addAttribute("getProductCategoryToyHobby", productService.getProductCategoryToyHobby(product));
		model.addAttribute("getProductCategorySports", productService.getProductCategorySports(product));
		model.addAttribute("getProductCategoryLife", productService.getProductCategoryLife(product));

		return "home";
	}

	/* 카테고리 리스트 */
	@RequestMapping(value = "/productcategoryfashionlist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryFashionList() {
		return productService.getProductCategoryFashionList(null);
	}

	@RequestMapping(value = "/productcategorydigitallist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryDigitalList() {
		return productService.getProductCategoryDigitalList(null);
	}

	@RequestMapping(value = "/productcategoryrarecollectionlist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryRareCollectionList() {
		return productService.getProductCategoryRareCollectionList(null);
	}

	@RequestMapping(value = "/productcategoryhealthbeautylist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryHealthBeautyList() {
		return productService.getProductCategoryHealthBeautyList(null);
	}

	@RequestMapping(value = "/productcategorymotorpartzlist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryMotorPartzList() {
		return productService.getProductCategoryMotorPartzList(null);
	}

	@RequestMapping(value = "/productcategorytoyhobbylist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryToyHobbyList() {
		return productService.getProductCategoryToyHobbyList(null);
	}

	@RequestMapping(value = "/productcategorysportslist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategorySportsList() {
		return productService.getProductCategorySportsList(null);
	}

	@RequestMapping(value = "/productcategorylifelist", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> getProductCategoryLifeList() {
		return productService.getProductCategoryLifeList(null);
	}

}
