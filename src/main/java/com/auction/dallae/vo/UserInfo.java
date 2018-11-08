package com.auction.dallae.vo;

import org.apache.ibatis.type.Alias;

@Alias("userInfo")
public class UserInfo {
	private Integer userNumber;
	private String userName;
	private String userId;
	private String userPassword;
	private String userEmail;
	private String userNickName;
	private String userPhoneNum;
	private String userSignUpDate;
	private String userAddress;
	private String userAddress2;
	private String userLevel;
	private Integer userPoint;
	private String userCreditLevel;
	private String userImage;

	


	public UserInfo() {

	}

	@Override
	public String toString() {
		return "UserInfo [userNumber=" + userNumber + ", userName=" + userName + ", userId=" + userId
				+ ", userPassword=" + userPassword + ", userEmail=" + userEmail + ", userNickName=" + userNickName
				+ ", userPhoneNum=" + userPhoneNum + ", userSignUpDate=" + userSignUpDate + ", userAddress="
				+ userAddress + ", userAddress2=" + userAddress2 + ", userLevel=" + userLevel + ", userPoint="
				+ userPoint + ", userCreditLevel=" + userCreditLevel + ", userImage=" + userImage + "]";
	}

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getUserPhoneNum() {
		return userPhoneNum;
	}

	public void setUserPhoneNum(String userPhoneNum) {
		this.userPhoneNum = userPhoneNum;
	}

	public String getuserSignUpDate() {
		return userSignUpDate;
	}

	public void setuserSignUpDate(String userSignUpDate) {
		this.userSignUpDate = userSignUpDate;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserAddress2() {
		return userAddress2;
	}

	public void setUserAddress2(String userAddress2) {
		this.userAddress2 = userAddress2;
	}

	public String getUserLevel() {
		return userLevel;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public Integer getUserPoint() {
		return userPoint;
	}

	public void setUserPoint(Integer userPoint) {
		this.userPoint = userPoint;
	}

	public String getUserCreditLevel() {
		return userCreditLevel;
	}

	public void setUserCreditLevel(String userCreditLevel) {
		this.userCreditLevel = userCreditLevel;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public UserInfo(Integer userNumber, String userName, String userId, String userPassword, String userEmail,
			String userNickName, String userPhoneNum, String userSignUpDate, String userAddress, String userAddress2,
			String userLevel, Integer userPoint, String userCreditLevel, String userImage) {
		super();
		this.userNumber = userNumber;
		this.userName = userName;
		this.userId = userId;
		this.userPassword = userPassword;
		this.userEmail = userEmail;
		this.userNickName = userNickName;
		this.userPhoneNum = userPhoneNum;
		this.userSignUpDate = userSignUpDate;
		this.userAddress = userAddress;
		this.userAddress2 = userAddress2;
		this.userLevel = userLevel;
		this.userPoint = userPoint;
		this.userCreditLevel = userCreditLevel;
		this.userImage = userImage;
	}

}