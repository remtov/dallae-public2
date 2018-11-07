package com.auction.dallae.vo;

import org.apache.ibatis.type.Alias;

@Alias("product")
public class Product {

	private Integer productNumber;
	private String productName;
	private String productCategory;
	private Integer productQuantity;
	private String productDate;
	private String productEnddate;
	private Integer productLowestPrice;
	private Integer productHopefulPrice;
	private String productImage;
	private String productDesc;
	private String productBrand;
	private String productCondition;
	private String userId;
	private Integer userCreditLevel;

	public Product() {
	}

	@Override
	public String toString() {
		return "Product [productNumber=" + productNumber + ", productName=" + productName + ", productCategory="
				+ productCategory + ", productQuantity=" + productQuantity + ", productDate=" + productDate
				+ ", productEnddate=" + productEnddate + ", productLowestPrice=" + productLowestPrice
				+ ", productHopefulPrice=" + productHopefulPrice + ", productImage=" + productImage + ", productDesc="
				+ productDesc + ", productBrand=" + productBrand + ", productCondition=" + productCondition
				+ ", userId=" + userId + ", userCreditLevel=" + userCreditLevel + "]";
	}

	public Integer getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public Integer getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(Integer productQuantity) {
		this.productQuantity = productQuantity;
	}

	public String getProductDate() {
		return productDate;
	}

	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}

	public String getProductEnddate() {
		return productEnddate;
	}

	public void setProductEnddate(String productEnddate) {
		this.productEnddate = productEnddate;
	}

	public Integer getProductLowestPrice() {
		return productLowestPrice;
	}

	public void setProductLowestPrice(Integer productLowestPrice) {
		this.productLowestPrice = productLowestPrice;
	}

	public Integer getProductHopefulPrice() {
		return productHopefulPrice;
	}

	public void setProductHopefulPrice(Integer productHopefulPrice) {
		this.productHopefulPrice = productHopefulPrice;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductDesc() {
		return productDesc;
	}

	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	public String getProductCondition() {
		return productCondition;
	}

	public void setProductCondition(String productCondition) {
		this.productCondition = productCondition;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getUserCreditLevel() {
		return userCreditLevel;
	}

	public void setUserCreditLevel(Integer userCreditLevel) {
		this.userCreditLevel = userCreditLevel;
	}

	public Product(Integer productNumber, String productName, String productCategory, Integer productQuantity,
			String productDate, String productEnddate, Integer productLowestPrice, Integer productHopefulPrice,
			String productImage, String productDesc, String productBrand, String productCondition, String userId,
			Integer userCreditLevel) {
		super();
		this.productNumber = productNumber;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productQuantity = productQuantity;
		this.productDate = productDate;
		this.productEnddate = productEnddate;
		this.productLowestPrice = productLowestPrice;
		this.productHopefulPrice = productHopefulPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productBrand = productBrand;
		this.productCondition = productCondition;
		this.userId = userId;
		this.userCreditLevel = userCreditLevel;
	}

}