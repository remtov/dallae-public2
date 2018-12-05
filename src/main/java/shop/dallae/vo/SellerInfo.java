package shop.dallae.vo;

public class SellerInfo {

	private Integer sellerInfoNumber;
	private String sellerAccountNumber;
	private String sellerBank;
	private Integer sellerPoint;
	
	public SellerInfo() {
		
	}

	public SellerInfo(Integer sellerInfoNumber, String sellerAccountNumber, String sellerBank, Integer sellerPoint) {
		this.sellerInfoNumber = sellerInfoNumber;
		this.sellerAccountNumber = sellerAccountNumber;
		this.sellerBank = sellerBank;
		this.sellerPoint = sellerPoint;
	}

	public Integer getSellerInfoNumber() {
		return sellerInfoNumber;
	}

	public void setSellerInfoNumber(Integer sellerInfoNumber) {
		this.sellerInfoNumber = sellerInfoNumber;
	}

	public String getSellerAccountNumber() {
		return sellerAccountNumber;
	}

	public void setSellerAccountNumber(String sellerAccountNumber) {
		this.sellerAccountNumber = sellerAccountNumber;
	}

	public String getSellerBank() {
		return sellerBank;
	}

	public void setSellerBank(String sellerBank) {
		this.sellerBank = sellerBank;
	}

	public Integer getSellerPoint() {
		return sellerPoint;
	}

	public void setSellerPoint(Integer sellerPoint) {
		this.sellerPoint = sellerPoint;
	}

	@Override
	public String toString() {
		return "SellerInfo [sellerInfoNumber=" + sellerInfoNumber + ", sellerAccountNumber=" + sellerAccountNumber + ", sellerBank=" + sellerBank + ", sellerPoint=" + sellerPoint + "]";
	}
	
}
