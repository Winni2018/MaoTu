package com.MaoTu.Bean;

public class Users {
	
	//属性
	private int userID;
	private String userName;
	private String userPWD;
	private String email;
	private String nickName;
	private String sex;
	private String userPic;
	private String balance;//余额
	
	private String userCity;
	private String userStar;

	
	//get,set方法
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPWD() {
		return userPWD;
	}
	public void setUserPWD(String userPWD) {
		this.userPWD = userPWD;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	//无参构造
	public Users(){
		
	}
	public Users(int userID,String userName,String userPWD,String email,String nickName,String sex,String userPic) {
		this.userID=userID;
		this.userName=userName;
		this.userPWD=userPWD;
		this.email=email;
		this.nickName=nickName;
		this.sex=sex;
		this.userPic=userPic;
	}
	public String getUserCity() {
		return userCity;
	}
	public void setUserCity(String userCity) {
		this.userCity = userCity;
	}
	public String getUserStar() {
		return userStar;
	}
	public void setUserStar(String userStar) {
		this.userStar = userStar;
	}
	

}
