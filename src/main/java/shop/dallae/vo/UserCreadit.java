package shop.dallae.vo;

public class UserCreadit {
	private String userCreditLevel;
	private Integer userCredit;
	private String userCreditLevelDesc;

	public String getUserCreditLevel() {
		return userCreditLevel;
	}

	public void setUserCreditLevel(String userCreditLevel) {
		this.userCreditLevel = userCreditLevel;
	}

	public Integer getUserCredit() {
		return userCredit;
	}

	public void setUserCredit(Integer userCredit) {
		this.userCredit = userCredit;
	}

	public String getUserCreditLevelDesc() {
		return userCreditLevelDesc;
	}

	public void setUserCreditLevelDesc(String userCreditLevelDesc) {
		this.userCreditLevelDesc = userCreditLevelDesc;
	}

	@Override
	public String toString() {
		return "UserCreadit [userCreditLevel=" + userCreditLevel + ", userCredit=" + userCredit + ", userCreditLevelDesc=" + userCreditLevelDesc + "]";
	}

	public UserCreadit(String userCreditLevel, Integer userCredit, String userCreditLevelDesc) {
		this.userCreditLevel = userCreditLevel;
		this.userCredit = userCredit;
		this.userCreditLevelDesc = userCreditLevelDesc;
	}

	public UserCreadit() {

	}

}
