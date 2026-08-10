package com.diworksdev.Registration.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegistConfirmAction extends ActionSupport {
	private String familyName;
	private String lastName;
	private String familyNameKana;
	private String lastNameKana;
	private String mail;
	private String password;
	private int gender;
	private int postalCode;
	private String prefecture;
	private String address1;
	private String address2;
	private int authority;


	public String execute() {
		return SUCCESS;
	}

	//regist.jspで入力した内容をActionで保持することによってregistConfirm.jspの方に遷移される(setter/getter)//
	public String getFamilyName() {
		return familyName;
		}
	public void setFamilyName(String familyName){
		this.familyName= familyName;
	}

	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFamilyNameKana() {
		return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}

	public String getLastNameKana() {
		return lastNameKana;
	}
	public void setLastNameKana(String lastNameKana) {
		this.lastNameKana = lastNameKana;
	}

	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}

	public String getPrefecture() {
		return prefecture;
	}
	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}

	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}

	public String getGenderText() {
		if (gender == 0) {
			return  "男性";
		} else if (gender == 1) {
			return  "女性";
		} return "";
	}

	public String getAuthorityText() {
		if (authority == 0) {
			return  "一般";
		} else if (authority == 1) {
			return  "管理者";
		} return "";
	}

}
