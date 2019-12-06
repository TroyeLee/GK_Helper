package gk.lcw.po;

import org.springframework.web.multipart.MultipartFile;

//import org.springframework.web.multipart.MultipartFile;

public class H_helper {
	private int userID;
	private String phone;
	private String grade;
	private String ID;
	private String studentID;
	private String dormitory;
	private String studentCard;
	private String orders_count;
	private String reputation;
	private String openid;
	private String realName;
	private String h_password;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getDormitory() {
		return dormitory;
	}
	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}
	public String getStudentCard() {
		return studentCard;
	}
	public void setStudentCard(String studentCard) {
		this.studentCard = studentCard;
	}
	public String getOrders_count() {
		return orders_count;
	}
	public void setOrders_count(String orders_count) {
		this.orders_count = orders_count;
	}
	public String getReputation() {
		return reputation;
	}
	public void setReputation(String reputation) {
		this.reputation = reputation;
	}
	public String getOpenid() {
		return openid;
	}
	public void setOpenid(String openid) {
		this.openid = openid;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getH_password() {
		return h_password;
	}
	public void setH_password(String h_password) {
		this.h_password = h_password;
	}
	
	@Override
	public String toString() {
		return "H_helper [userID=" + userID + ", phone=" + phone + ", grade=" + grade + ", ID=" + ID + ", studentID="
				+ studentID + ", dormitory=" + dormitory + ", studentCard=" + studentCard + ", orders_count="
				+ orders_count + ", reputation=" + reputation + ", openid=" + openid + ", realName=" + realName
				+ ", h_password=" + h_password + "]";
	}
	

}
