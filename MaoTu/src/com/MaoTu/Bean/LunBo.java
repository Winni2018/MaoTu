package com.MaoTu.Bean;

public class LunBo {
	private int proID;
	private String proName;
	private String proIntroduce;
	private String proImg;
	private int autherID;
	private int proClassID;
	
	private Users users;

	public LunBo() {
		// TODO Auto-generated constructor stub
	}

	public int getProID() {
		return proID;
	}

	public void setProID(int proID) {
		this.proID = proID;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getProIntroduce() {
		return proIntroduce;
	}

	public void setProIntroduce(String proIntroduce) {
		this.proIntroduce = proIntroduce;
	}

	public String getProImg() {
		return proImg;
	}

	public void setProImg(String proImg) {
		this.proImg = proImg;
	}

	public int getAutherID() {
		return autherID;
	}

	public void setAutherID(int autherID) {
		this.autherID = autherID;
	}

	public int getProClassID() {
		return proClassID;
	}

	public void setProClassID(int proClassID) {
		this.proClassID = proClassID;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

}
