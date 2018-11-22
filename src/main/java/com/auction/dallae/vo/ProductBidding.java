package com.auction.dallae.vo;

public class ProductBidding {
	private Integer productNumber;
	private Integer bidCount;
	private String biddingId;
	private String biddingDate;
	private Integer biddingStatus;
	
	public ProductBidding() {};
	public ProductBidding(Integer productNumber, Integer bidCount, String biddingId, String biddingDate,
			Integer biddingStatus) {
		super();
		this.productNumber = productNumber;
		this.bidCount = bidCount;
		this.biddingId = biddingId;
		this.biddingDate = biddingDate;
		this.biddingStatus = biddingStatus;
	}
	public Integer getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}
	public Integer getBidCount() {
		return bidCount;
	}
	public void setBidCount(Integer bidCount) {
		this.bidCount = bidCount;
	}
	public String getBiddingId() {
		return biddingId;
	}
	public void setBiddingId(String biddingId) {
		this.biddingId = biddingId;
	}
	public String getBiddingDate() {
		return biddingDate;
	}
	public void setBiddingDate(String biddingDate) {
		this.biddingDate = biddingDate;
	}
	public Integer getBiddingStatus() {
		return biddingStatus;
	}
	public void setBiddingStatus(Integer biddingStatus) {
		this.biddingStatus = biddingStatus;
	}
	@Override
	public String toString() {
		return "ProductBidding [productNumber=" + productNumber + ", bidCount=" + bidCount + ", biddingId=" + biddingId
				+ ", biddingDate=" + biddingDate + ", biddingStatus=" + biddingStatus + "]";
	}


}
