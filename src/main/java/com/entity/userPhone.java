package com.entity;

public class userPhone {
	private int id;
	private String name;
	private String password;
	private String gmail;
	private String phone;
	
	public userPhone() {
		
		// TODO Auto-generated constructor stub
	}

	public userPhone(int id, String name, String password, String gmail, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.gmail = gmail;
		this.phone = phone;
	}

	public userPhone(String name, String password, String gmail, String phone) {
		super();
		this.name = name;
		this.password = password;
		this.gmail = gmail;
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "userPhone [id=" + id + ", name=" + name + ", password=" + password + ", gmail=" + gmail + ", phone="
				+ phone + "]";
	}
	
	
}
