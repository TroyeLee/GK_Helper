package gk.lcw.po;

import org.springframework.web.multipart.MultipartFile;

public class Orders {
	private int orderID;
	private int userID;
	private String user_name;
	private String orderType;
	private String orderStatus;
	private String takeAddress;
	private String putAddress;
	private String users_phone;
	private String evidence1;
	private double weight;
	private String orderTime;
	private String settingTime;
	private double money;
	private String message;
	private int helperID;
	private String type_info;
	private MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getTakeAddress() {
		return takeAddress;
	}
	public void setTakeAddress(String takeAddress) {
		this.takeAddress = takeAddress;
	}
	public String getPutAddress() {
		return putAddress;
	}
	public void setPutAddress(String putAddress) {
		this.putAddress = putAddress;
	}
	public String getUsers_phone() {
		return users_phone;
	}
	public void setUsers_phone(String users_phone) {
		this.users_phone = users_phone;
	}
	public String getEvidence1() {
		return evidence1;
	}
	public void setEvidence1(String evidence1) {
		this.evidence1 = evidence1;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getSettingTime() {
		return settingTime;
	}
	public void setSettingTime(String settingTime) {
		this.settingTime = settingTime;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getHelperID() {
		return helperID;
	}
	public void setHelperID(int helperID) {
		this.helperID = helperID;
	}
	
	public String getType_info() {
		return type_info;
	}
	public void setType_info(String type_info) {
		this.type_info = type_info;
	}
	@Override
	public String toString() {
		return "Orders [orderID=" + orderID + ", userID=" + userID + ", user_name=" + user_name + ", orderType="
				+ orderType + ", orderStatus=" + orderStatus + ", takeAddress=" + takeAddress + ", putAddress="
				+ putAddress + ", users_phone=" + users_phone + ", evidence1=" + evidence1 + ", weight=" + weight
				+ ", orderTime=" + orderTime + ", settingTime=" + settingTime + ", money=" + money + ", message="
				+ message + ", helperID=" + helperID + ", type_info=" + type_info + ", file=" + file + "]";
	}
	
	
	
	

}
