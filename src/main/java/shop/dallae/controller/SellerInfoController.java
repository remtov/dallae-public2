package shop.dallae.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import shop.dallae.service.SellerInfoService;
import shop.dallae.vo.Product;
import shop.dallae.vo.SellerInfo;

@Controller
public class SellerInfoController {

	@Autowired
	private SellerInfoService sellerInfoService;

	@RequestMapping(value = "/sellerinfolist", method = RequestMethod.GET)//관리자페이지/검색포함
	@ResponseBody
	public List<SellerInfo> getSellerInfoList(@ModelAttribute SellerInfo sellerInfo) {
		return sellerInfoService.getSellerInfoList(sellerInfo);
	}

	@RequestMapping(value = "/sellerinfo/{sellerInfoNumber}", method = RequestMethod.GET)
	public ModelAndView getSellerInfo(@PathVariable Integer SellerInfoNumber) {
		return new ModelAndView("SellerInfo/view", "SellerInfo", sellerInfoService.getSellerInfo(SellerInfoNumber));
	}

	@RequestMapping(value = "/sellerinfo/{sellerInfoNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteSellerInfo(@PathVariable Integer SellerInfoNumber) {
		return sellerInfoService.deleteSellerInfo(SellerInfoNumber);
	}

	@RequestMapping(value = "/sellerinfo", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertSellerInfo(@RequestBody SellerInfo sellerInfo) throws UnsupportedEncodingException {
		System.out.println(sellerInfo);
		return sellerInfoService.insertSellerInfo(sellerInfo);
	}
}
