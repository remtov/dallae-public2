package shop.dallae.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.dallae.service.ProductBiddingService;
import shop.dallae.vo.ProductBidding;

@Controller
public class ProductBiddingController {

	@Autowired
	private ProductBiddingService productBiddingService;

	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.GET)
	@ResponseBody
	public ProductBidding getbidding(@PathVariable Integer productNumber) {
		return productBiddingService.getBidding(productNumber);
	}

	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deletebidding(@PathVariable Integer productNumber) {
		return productBiddingService.deleteBidding(productNumber);
	}

	@RequestMapping(value = "/bidding/{productNumber}/{bidCount}/{productName}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updatebidding(@RequestBody ProductBidding productBidding, @PathVariable Integer productNumber 
			, @PathVariable Integer bidCount , @PathVariable String productName) {
		String curTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		productBidding.setProductNumber(productNumber);
		ProductBidding pds = productBiddingService.getBidding(productNumber);
		String biddate = pds.getBiddingDate()+"|"+curTime;
		productBidding.setBiddingDate(biddate);
		String bidid = pds.getBiddingId()+"|"+productName;
		productBidding.setBiddingId(bidid);
		if(pds.getBidCount()>bidCount) {
			return 0;
		}else {
			return productBiddingService.updateBidding(productBidding);
		}
		
	}

	@RequestMapping(value = "/biddingend/{productNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateendbidding(@RequestBody ProductBidding productBidding, @PathVariable Integer productNumber ) {
		productBidding.setProductNumber(productNumber);
		return productBiddingService.updateBidding(productBidding);
	}

	@RequestMapping(value = "/bidding", method = RequestMethod.PUT)
	@ResponseBody
	public Integer insertbidding(@RequestBody ProductBidding productBidding) {
		return productBiddingService.inserBidding(productBidding);
	}

}
