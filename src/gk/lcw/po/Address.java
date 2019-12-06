package gk.lcw.po;

public class Address {
	private int addressID;
	private int userID;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	private String openid;
	private String userName;
	private String phone;
	private String addressInfo;
	public int getAddressID() {
		return addressID;
	}
	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddressInfo() {
		return addressInfo;
	}
	public void setAddressInfo(String addressInfo) {
		this.addressInfo = addressInfo;
	}
	@Override
	public String toString() {
		return "Address [addressID=" + addressID + ", userID=" + userID + ", openid=" + openid + ", userName="
				+ userName + ", phone=" + phone + ", addressInfo=" + addressInfo + "]";
	}
	
	

}
