package com.auction.dallae.vo;

public class ProductBidding {
	private Integer productNumber;
	private Integer BidCount;
	private String BiddingId;
	private Integer BiddingStatus;
	
	@Override
	public String toString() {
		return "ProductBidding [productNumber=" + productNumber + ", BidCount=" + BidCount + ", BiddingId=" + BiddingId + ", BiddingStatus=" + BiddingStatus + "]";
	}

	public Integer getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}

	public Integer getBidCount() {
		return BidCount;
	}

	public void setBidCount(Integer bidCount) {
		BidCount = bidCount;
	}

	public String getBiddingId() {
		return BiddingId;
	}

	public void setBiddingId(String biddingId) {
		BiddingId = biddingId;
	}

	public Integer getBiddingStatus() {
		return BiddingStatus;
	}

	public void setBiddingStatus(Integer biddingStatus) {
		BiddingStatus = biddingStatus;
	}

	public ProductBidding(Integer productNumber, Integer bidCount, String biddingId, Integer biddingStatus) {
		this.productNumber = productNumber;
		BidCount = bidCount;
		BiddingId = biddingId;
		BiddingStatus = biddingStatus;
	}

	public ProductBidding() {
		
	}

}
