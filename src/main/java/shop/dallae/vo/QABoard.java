package shop.dallae.vo;

import org.apache.ibatis.type.Alias;

@Alias("qaboard")
public class QABoard {
	private Integer qaboardnumber;
	private String userid;
	private String userpassword;
	private String qaboardwrite;
	private String qaboardsubject;
	private Integer register_datetime;
	
	@Override
	public String toString() {
		return "QABoard [qaboardnumber=" + qaboardnumber + ", userid=" + userid + ", userpassword=" + userpassword + ", qaboardwrite=" + qaboardwrite + ", qaboardsubject=" + qaboardsubject + ", register_datetime=" + register_datetime + "]";
	}

	public Integer getQaboardnumber() {
		return qaboardnumber;
	}

	public void setQaboardnumber(Integer qaboardnumber) {
		this.qaboardnumber = qaboardnumber;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getQaboardwrite() {
		return qaboardwrite;
	}

	public void setQaboardwrite(String qaboardwrite) {
		this.qaboardwrite = qaboardwrite;
	}

	public String getQaboardsubject() {
		return qaboardsubject;
	}

	public void setQaboardsubject(String qaboardsubject) {
		this.qaboardsubject = qaboardsubject;
	}

	public Integer getRegister_datetime() {
		return register_datetime;
	}

	public void setRegister_datetime(Integer register_datetime) {
		this.register_datetime = register_datetime;
	}

	/**
	 * @param qaboardnumber
	 * @param userid
	 * @param userpassword
	 * @param qaboardwrite
	 * @param qaboardsubject
	 * @param register_datetime
	 */
	public QABoard(Integer qaboardnumber, String userid, String userpassword, String qaboardwrite, String qaboardsubject, Integer register_datetime) {
		this.qaboardnumber = qaboardnumber;
		this.userid = userid;
		this.userpassword = userpassword;
		this.qaboardwrite = qaboardwrite;
		this.qaboardsubject = qaboardsubject;
		this.register_datetime = register_datetime;
	}

	public QABoard() {
		
	}
	

	

}
