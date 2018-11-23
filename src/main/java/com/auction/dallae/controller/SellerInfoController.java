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

import com.auction.dallae.service.SellerInfoService;
import com.auction.dallae.utils.fileupload.PM;
import com.auction.dallae.utils.fileupload.Util;
import com.auction.dallae.vo.SellerInfo;


@Controller
public class SellerInfoController {

	@Autowired
	private SellerInfoService sellerInfoService;
	
	@RequestMapping(value = "/sellerinfolist", method = RequestMethod.GET)
	@ResponseBody
	public List<SellerInfo> getSellerInfoList() {
		return sellerInfoService.getSellerInfoList(null);
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
	public Integer insertSellerInfo(MultipartHttpServletRequest multipartHttpServletRequest) {
		SellerInfo SellerInfo =PM.MapToVo(Util.saveFile(multipartHttpServletRequest), SellerInfo.class);
		return sellerInfoService.insertSellerInfo(SellerInfo);
	}
}
