/*package com.auction.dallae.controller;

<<<<<<< HEAD
=======
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

>>>>>>> branch 'master' of https://skswkd2ek@bitbucket.org/dancingvitamins/dallae.git
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.auction.dallae.service.ProductBiddingService;
import com.auction.dallae.vo.ProductBidding;
 

@Controller
public class ProductBiddingController {

	@Autowired
	private ProductBiddingService productBiddingService;
	

	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.GET)
	@ResponseBody
	public  ProductBidding getbidding(@PathVariable Integer productNumber) {
		return productBiddingService.getBidding(productNumber);
	}
	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deletebidding(@PathVariable Integer productNumber) {
		return productBiddingService.deleteBidding(productNumber);
	}
	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updatebidding(@RequestBody ProductBidding productBidding , @PathVariable Integer productNumber) {
		String curTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		productBidding.setProductNumber(productNumber);
		return productBiddingService.updateBidding(productBidding);
	}
	@RequestMapping(value = "/biddingend/{productNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateendbidding(@RequestBody ProductBidding productBidding , @PathVariable Integer productNumber) {
		productBidding.setProductNumber(productNumber);
		return productBiddingService.updateBidding(productBidding);
	}
	@RequestMapping(value = "/bidding", method = RequestMethod.PUT)
	@ResponseBody
	public Integer insertbidding(@RequestBody ProductBidding productBidding) {
		return productBiddingService.updateBiddingEnd(productBidding);
	}
	
}
*/