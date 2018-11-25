package com.auction.dallae.vo;

import org.apache.ibatis.type.Alias;

@Alias("product")
public class Product {

	private Integer productNumber;
	private String productName;
	private String productCategory;
	private Integer productQuantity;
	private String productDate;
	private String productEndDate;
	private Integer productLowestPrice;
	private String productImage;
	private String productDesc;
	private String productBrand;
	private String productCondition;
	private String userId;
	private Integer userCreditLevel;
	private Integer userNumber;


	public Product() {
	}


	@Override
	public String toString() {
		return "Product [productNumber=" + productNumber + ", productName=" + productName + ", productCategory="
				+ productCategory + ", productQuantity=" + productQuantity + ", productDate=" + productDate
				+ ", productEndDate=" + productEndDate + ", productLowestPrice=" + productLowestPrice
				+ ", productImage=" + productImage + ", productDesc=" + productDesc + ", productBrand=" + productBrand
				+ ", productCondition=" + productCondition + ", userId=" + userId + ", userCreditLevel="
				+ userCreditLevel + ", userNumber=" + userNumber + "]";
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


	public String getProductEndDate() {
		return productEndDate;
	}


	public void setProductEndDate(String productEndDate) {
		this.productEndDate = productEndDate;
	}


	public Integer getProductLowestPrice() {
		return productLowestPrice;
	}


	public void setProductLowestPrice(Integer productLowestPrice) {
		this.productLowestPrice = productLowestPrice;
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


	public Integer getUserNumber() {
		return userNumber;
	}


	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}


	public Product(Integer productNumber, String productName, String productCategory, Integer productQuantity,
			String productDate, String productEndDate, Integer productLowestPrice, String productImage,
			String productDesc, String productBrand, String productCondition, String userId, Integer userCreditLevel,
			Integer userNumber) {
		super();
		this.productNumber = productNumber;
		this.productName = productName;
		this.productCategory = productCategory;
		this.productQuantity = productQuantity;
		this.productDate = productDate;
		this.productEndDate = productEndDate;
		this.productLowestPrice = productLowestPrice;
		this.productImage = productImage;
		this.productDesc = productDesc;
		this.productBrand = productBrand;
		this.productCondition = productCondition;
		this.userId = userId;
		this.userCreditLevel = userCreditLevel;
		this.userNumber = userNumber;
	}
	
	
}
	