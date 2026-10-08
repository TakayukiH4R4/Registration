package com.diworksdev.Registration.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class RegistConfirmAction extends ActionSupport implements SessionAware {
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
	public Map<String,Object> session;

//以下入力エラーに関する変数
	private String errorMessage;
	private String errorFamilyName;
	private String errorLastName;
	private String errorFamilyNameKana;
	private String errorLastNameKana;
	private String errorMail;
	private String errorPassword;
	private String errorPostalCode;
	private String errorPrefecture;
	private String errorAddress1;
	private String errorAddress2;


	public String execute() {
		String result = SUCCESS;

	if(!(familyName.equals(""))&&
			!(lastName.equals(""))&&
			!(familyNameKana.equals(""))&&
			!(lastNameKana.equals(""))&&
			!(mail.equals(""))&&
			!(password.equals(""))&&
			!(postalCode == 0)&&
			!(prefecture.equals(""))&&
			!(address1.equals(""))&&
			!(address2.equals("")))	{
		session.put("familyName",familyName);
		session.put("lastName", lastName);
		session.put("familyNameKana", familyNameKana);
		session.put("lastNameKana", lastNameKana);
		session.put("mail", mail);
		session.put("password", password);
		session.put("gender", gender);
		session.put("postalCode", postalCode);
		session.put("prefecture", prefecture);
		session.put("address1", address1);
		session.put("address2", address2);
		session.put("authority", authority);
			} else {
				setErrorMessage("未入力の項目があります。");
				result = ERROR;
			}

	//未入力エラー時に値を設定
		if(familyName.equals("")) {
			errorFamilyName="名前（姓）が未入力です。";
		}
		if(lastName.equals("")) {
			errorLastName="名前（名）が未入力です。";
		}
		if(familyNameKana.equals("")) {
			errorFamilyNameKana="カナ（名）が未入力です。";
		}
		if(lastNameKana.equals("")) {
			errorLastNameKana="名前（名）が未入力です。";
		}
		if(mail.equals("")) {
			errorMail="メールアドレスが未入力です。";
		}
		if(password.equals("")) {
			errorPassword="パスワ－ドが未入力です。";
		}
		if(postalCode == 0) {
			errorPostalCode="郵便番号が未入力です。";
		}
		if(prefecture.equals("")) {
			errorPrefecture="住所（都道府県）が未入力です。";
		}
		if(address1.equals("")) {
			errorAddress1="住所（市区町村）が未入力です。";
		}
		if(address2.equals("")) {
			errorAddress2="住所（番地）が未入力です。";
		}

	return result;
	}

	//regist.jspで入力した内容をActionで保持することによってregistConfirm.jspの方に遷移される(setter/getter)
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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


//以下入力エラーに関するsetter/getter
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public String getErrorFamilyName() {
		return errorFamilyName;
	}
	public void setErrorFamilyName(String errorFamilyName) {
		this.errorFamilyName = errorFamilyName;
	}

	public String getErrorLastName() {
		return errorLastName;
	}
	public void setErrorLastName(String errorLastName) {
		this.errorLastName = errorLastName;
	}

	public String getErrorFamilyNameKana() {
		return errorFamilyNameKana;
	}
	public void setErrorFamilyNameKana(String errorFamilyNameKana) {
		this.errorFamilyNameKana = errorFamilyNameKana;
	}

	public String getErrorLastNameKana() {
		return errorLastNameKana;
	}
	public void setErrorLastNameKana(String errorLastNameKana) {
		this.errorLastNameKana = errorLastNameKana;
	}

	public String getErrorMail() {
		return errorMail;
	}
	public void setErrorMail(String errorMail) {
		this.errorMail = errorMail;
	}

	public String getErrorPassword() {
		return errorPassword;
	}
	public void setErrorPassword(String errorPassword) {
		this.errorPassword = errorPassword;
	}

	public String getErrorPostalCode() {
		return errorPostalCode;
	}
	public void setErrorPostalCode(String errorPostalCode) {
		this.errorPostalCode = errorPostalCode;
	}

	public String getErrorPrefecture() {
		return errorPrefecture;
	}
	public void setErrorPrefecture(String errorPrefecture) {
		this.errorPrefecture = errorPrefecture;
	}

	public String getErrorAddress1() {
		return errorAddress1;
	}
	public void setErrorAddress1(String errorAddress1) {
		this.errorAddress1 = errorAddress1;
	}

	public String getErrorAddress2() {
		return errorAddress2;
	}
	public void setErrorAddress2(String errorAddress2) {
		this.errorAddress2 = errorAddress2;
	}


}
