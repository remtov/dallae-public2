package shop.dallae.controller;

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

import shop.dallae.service.ProductBiddingService;
import shop.dallae.service.ProductService;
import shop.dallae.utils.fileupload.PM;
import shop.dallae.utils.fileupload.Util;
import shop.dallae.vo.Product;
import shop.dallae.vo.ProductBidding;

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
	@RequestMapping(value = "/productsearch", method = RequestMethod.POST)
	public Model getProduct(@RequestBody Product product,Model model) {

		System.out.println("바보");
		System.out.println(model.addAttribute("productser", productService.getSer(product)));
		return model.addAttribute("productser", productService.getSer(product));
		
	}
	@RequestMapping(value = "/product/{productNumber}", method = RequestMethod.GET) // 필요없는지 확인 후 제거 할 것
	public ModelAndView getProduct(@PathVariable Integer productNumber) {
		return new ModelAndView("product/mainview", "product", productService.getProduct(productNumber));
	}
	//테스트
	@RequestMapping(value = "/producttest/{productNumber}", method = RequestMethod.GET) // 필요없는지 확인 후 제거 할 것
	public ModelAndView getProducttest(@PathVariable Integer productNumber) {
		return new ModelAndView("product/mainview2", "product", productService.getProduct(productNumber));
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
		int a = productService.insertProduct(product);
		Product image =productService.getProductImage(product.getProductImage());
		System.out.println(image.getProductNumber());
		ProductBidding productBidding = new ProductBidding();
		productBidding.setProductNumber(image.getProductNumber());
		productBiddingService.inserBidding(productBidding);
		
		return a;
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

	@RequestMapping(value = "/productcategoryfashionlist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryFashionList(@RequestBody Product product) {
		return productService.getProductCategoryFashionList(product);
	}

	@RequestMapping(value = "/productcategorydigitallist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryDigitalList(@RequestBody Product product) {
		return productService.getProductCategoryDigitalList(product);
	}

	@RequestMapping(value = "/productcategoryrarecollectionlist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryRareCollectionList(@RequestBody Product product) {
		return productService.getProductCategoryRareCollectionList(product);
	}

	@RequestMapping(value = "/productcategoryhealthbeautylist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryHealthBeautyList(@RequestBody Product product) {
		return productService.getProductCategoryHealthBeautyList(product);
	}

	@RequestMapping(value = "/productcategorymotorpartzlist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryMotorPartzList(@RequestBody Product product) {
		return productService.getProductCategoryMotorPartzList(product);
	}

	@RequestMapping(value = "/productcategorytoyhobbylist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryToyHobbyList(@RequestBody Product product) {
		return productService.getProductCategoryToyHobbyList(product);
	}

	@RequestMapping(value = "/productcategorysportslist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategorySportsList(@RequestBody Product product) {
		return productService.getProductCategorySportsList(product);
	}

	@RequestMapping(value = "/productcategorylifelist", method = RequestMethod.POST) // 스크롤페이징
	@ResponseBody
	public List<Product> getProductCategoryLifeList(@RequestBody Product product) {
		return productService.getProductCategoryLifeList(product);
	}

}
