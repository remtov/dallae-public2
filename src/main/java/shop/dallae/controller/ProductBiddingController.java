package shop.dallae.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import shop.dallae.service.ProductBiddingService;
import shop.dallae.service.ProductService;
import shop.dallae.vo.Product;
import shop.dallae.vo.ProductBidding;

@Controller
public class ProductBiddingController {
	
	public static int io(String pds) {
		if (pds.indexOf(",")==-1) {
			return 0;
		}else {
			return pds.indexOf(",")-1;
		}
	}
	
	@Autowired
	private ProductBiddingService productBiddingService;
	
	@Autowired
	private ProductService productService;
	
	/*관리자용 입찰전체조회*/
	@RequestMapping(value = "/biddinglist", method = RequestMethod.GET)
	@ResponseBody
	public List<ProductBidding> getBiddingList(@ModelAttribute ProductBidding productBidding) {//관리자페이지/검색포함
		return productBiddingService.getBiddingList(productBidding);
	}
	
	/*입찰조회*/
	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.GET)
	@ResponseBody
	public ProductBidding getbidding(@PathVariable Integer productNumber) {
		return productBiddingService.getBidding(productNumber);
	}
	
	/*입찰기록삭제*/
	@RequestMapping(value = "/bidding/{productNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deletebidding(@PathVariable Integer productNumber) {
		return productBiddingService.deleteBidding(productNumber);
	}

	/*입찰*/
	@RequestMapping(value = "/bidding/{productNumber}/{bidCount}/{productName}/{productUserId}/{userId}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updatebidding(@PathVariable Integer productNumber, @PathVariable Integer bidCount , @PathVariable String productName,
			@PathVariable String productUserId, @PathVariable String userId) {
		Product pd = productService.getProduct(productNumber);
		ProductBidding pds = productBiddingService.getBidding(productNumber);
		
		if(pds.getBidCount()>bidCount) {
			return 0;
		}else if(pd.getUserId()==productUserId) {
			return -1;
		}else if(pds.getBiddingId().substring(io(pds.getBiddingId()), pds.getBiddingId().length())==userId) {
			return -2;
		}else {
			ProductBidding pBidding = new ProductBidding();
			String curTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
			pBidding.setProductNumber(productNumber);
			String bidsdate = pds.getBidsDate()+","+curTime;
			pBidding.setBidsDate(bidsdate);
			String bidid = pds.getBiddingId()+","+productName;
			pBidding.setBiddingId(bidid);
			pBidding.setBidCount(bidCount+1);
			return productBiddingService.updateBidding(pBidding);
		}
		
	}

	/*입찰마감*/
	@RequestMapping(value = "/biddingend/{productNumber}", method = RequestMethod.PUT)
	@ResponseBody
	public Integer updateendbidding(@RequestBody ProductBidding productBidding, @PathVariable Integer productNumber ) {
		productBidding.setProductNumber(productNumber);      
		return productBiddingService.updateBidding(productBidding);
	}

	/* 물품등록,입찰개시 */
	@RequestMapping(value = "/bidding", method = RequestMethod.PUT)
	@ResponseBody
	public Integer insertbidding(@RequestBody ProductBidding productBidding) {
		return productBiddingService.inserBidding(productBidding);
	}

}
