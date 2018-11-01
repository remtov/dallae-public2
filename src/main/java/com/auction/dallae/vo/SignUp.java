package com.auction.dallae.vo;

import org.apache.ibatis.type.Alias;

@Alias("su")
public class SignUp {
	private Integer signupNum;
	private String signupName;
	private String signupId;
	private String signupPassword;
	private String signupEmail;
	private String signupNickName;
	private String signupPersonallity;
	private String signupPhone;
	private String signupDate;
	private String signupConcern;
	
	@Override
	public String toString() {
		return "SignUp [signupNum=" + signupNum + ", signupName=" + signupName + ", signupId=" + signupId
				+ ", signupPassword=" + signupPassword + ", signupEmail=" + signupEmail + ", signupNickName="
				+ signupNickName + ", signupPersonallity=" + signupPersonallity + ", signupPhone=" + signupPhone
				+ ", signupDate=" + signupDate + ", signupConcern=" + signupConcern + "]";
	}

	public Integer getSignupNum() {
		return signupNum;
	}

	public void setSignupNum(Integer signupNum) {
		this.signupNum = signupNum;
	}

	public String getSignupName() {
		return signupName;
	}

	public void setSignupName(String signupName) {
		this.signupName = signupName;
	}

	public String getSignupId() {
		return signupId;
	}

	public void setSignupId(String signupId) {
		this.signupId = signupId;
	}

	public String getSignupPassword() {
		return signupPassword;
	}

	public void setSignupPassword(String signupPassword) {
		this.signupPassword = signupPassword;
	}

	public String getSignupEmail() {
		return signupEmail;
	}

	public void setSignupEmail(String signupEmail) {
		this.signupEmail = signupEmail;
	}

	public String getSignupNickName() {
		return signupNickName;
	}

	public void setSignupNickName(String signupNickName) {
		this.signupNickName = signupNickName;
	}

	public String getSignupPersonallity() {
		return signupPersonallity;
	}

	public void setSignupPersonallity(String signupPersonallity) {
		this.signupPersonallity = signupPersonallity;
	}

	public String getSignupPhone() {
		return signupPhone;
	}

	public void setSignupPhone(String signupPhone) {
		this.signupPhone = signupPhone;
	}

	public String getSignupDate() {
		return signupDate;
	}

	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}

	public String getSignupConcern() {
		return signupConcern;
	}

	public void setSignupConcern(String signupConcern) {
		this.signupConcern = signupConcern;
	}

	public SignUp(Integer signupNum, String signupName, String signupId, String signupPassword, String signupEmail,
			String signupNickName, String signupPersonallity, String signupPhone, String signupDate,
			String signupConcern) {
		super();
		this.signupNum = signupNum;
		this.signupName = signupName;
		this.signupId = signupId;
		this.signupPassword = signupPassword;
		this.signupEmail = signupEmail;
		this.signupNickName = signupNickName;
		this.signupPersonallity = signupPersonallity;
		this.signupPhone = signupPhone;
		this.signupDate = signupDate;
		this.signupConcern = signupConcern;
	}

	public SignUp() {
		
	}
}