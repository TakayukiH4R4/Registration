package com.diworksdev.Registration.action;

import java.sql.SQLException;

import com.diworksdev.Registration.dao.RegistCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class RegistCompleteAction extends ActionSupport {
	public String id;
	public String familyName;
	public String lastName;
	public String familyNameKana;
	public String lastNameKana;
	public String mail;
	public String password;
	public int gender;
	public int postalCode;
	public String prefecture;
	public String address1;
	public String address2;
	public int authority;

	// id
	public String getId() {
	    return id;
	}
	public void setId(String id) {
	    this.id = id;
	}
	// familyName
	public String getFamilyName() {
	    return familyName;
	}
	public void setFamilyName(String familyName) {
	    this.familyName = familyName;
	}
	// lastName
	public String getLastName() {
	    return lastName;
	}
	public void setLastName(String lastName) {
	    this.lastName = lastName;
	}
	// familyNameKana
	public String getFamilyNameKana() {
	    return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana) {
	    this.familyNameKana = familyNameKana;
	}
	// lastNameKana
	public String getLastNameKana() {
	    return lastNameKana;
	}
	public void setLastNameKana(String lastNameKana) {
	    this.lastNameKana = lastNameKana;
	}
	// mail
	public String getMail() {
	    return mail;
	}
	public void setMail(String mail) {
	    this.mail = mail;
	}
	// password
	public String getPassword() {
	    return password;
	}
	public void setPassword(String password) {
	    this.password = password;
	}
	// gender
	public int getGender() {
	    return gender;
	}
	public void setGender(int gender) {
	    this.gender = gender;
	}
	// postalCode
	public int getPostalCode() {
	    return postalCode;
	}
	public void setPostalCode(int postalCode) {
	    this.postalCode = postalCode;
	}
	// prefecture
	public String getPrefecture() {
	    return prefecture;
	}
	public void setPrefecture(String prefecture) {
	    this.prefecture = prefecture;
	}
	// address1
	public String getAddress1() {
	    return address1;
	}
	public void setAddress1(String address1) {
	    this.address1 = address1;
	}
	// address2
	public String getAddress2() {
	    return address2;
	}
	public void setAddress2(String address2) {
	    this.address2 = address2;
	}
	// authority
	public int getAuthority() {
	    return authority;
	}
	public void setAuthority(int authority) {
	    this.authority = authority;
	}

	public String execute() throws SQLException {

		RegistCompleteDAO registCompleteDAO = new RegistCompleteDAO();

		registCompleteDAO.createUser(id, familyName, lastName, familyNameKana, lastNameKana, mail, password, gender, postalCode, prefecture, address1, address2, authority);

		return SUCCESS;

	}
}
