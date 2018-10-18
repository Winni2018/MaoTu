package com.MaoTu.Bean;

public class Production {
	
	private int proID;
	private String proName;
	private String proIntroduce;
	private String proImg;
	private String click;
	private String listClass;
	private String showImg;
	
	//Íâ¼ü
	private Users authorID;
	private ProClass proClassID;

	private Users users;
	private ProClass proClass;
	
	public Production() {
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

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}

	public String getListClass() {
		return listClass;
	}

	public void setListClass(String listClass) {
		this.listClass = listClass;
	}

	public Users getAuthorID() {
		return authorID;
	}

	public void setAuthorID(Users authorID) {
		this.authorID = authorID;
	}

	public ProClass getProClassID() {
		return proClassID;
	}

	public void setProClassID(ProClass proClassID) {
		this.proClassID = proClassID;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public ProClass getProClass() {
		return proClass;
	}

	public void setProClass(ProClass proClass) {
		this.proClass = proClass;
	}

	public String getShowImg() {
		return showImg;
	}

	public void setShowImg(String showImg) {
		this.showImg = showImg;
	}

}
