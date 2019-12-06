package gk.lcw.po;

public class H_user {
	private int userID;
	private String weChatName;
	private String realName;
	private String phone;
	private String head;
	private String userType;
	private String gender;
	private String h_password;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getWeChatName() {
		return weChatName;
	}
	public void setWeChatName(String weChatName) {
		this.weChatName = weChatName;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getH_password() {
		return h_password;
	}
	public void setH_password(String h_password) {
		this.h_password = h_password;
	}
	@Override
	public String toString() {
		return "h_user [userID=" + userID + ", weChatName=" + weChatName + ", realName=" + realName + ", phone=" + phone
				+ ", head=" + head + ", userType=" + userType + ", gender=" + gender + ", h_password=" + h_password
				+ "]";
	}
	
}
