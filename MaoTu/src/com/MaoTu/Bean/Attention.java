package com.MaoTu.Bean;

public class Attention {
	private int attentionID;
	private int attentionUserID;
	private int userID;
	
	//Íâ¼ü
	private Users users;
	private Users attentionUser;
	
	public int getAttentionID() {
		return attentionID;
	}
	public void setAttentionID(int attentionID) {
		this.attentionID = attentionID;
	}
	public int getAttentionUserID() {
		return attentionUserID;
	}
	public void setAttentionUserID(int attentionUserID) {
		this.attentionUserID = attentionUserID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public Users getAttentionUser() {
		return attentionUser;
	}
	public void setAttentionUser(Users attentionUser) {
		this.attentionUser = attentionUser;
	}
	
	
}
