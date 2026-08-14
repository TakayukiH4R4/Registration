package com.diworksdev.Registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.diworksdev.Registration.util.DBConnector;
import com.diworksdev.Registration.util.DateUtil;

public class RegistCompleteDAO {

	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();

	private String sql = "INSERT INTO user_registration(family_name, last_name, family_name_kana, last_name_kana, mail, password, gender, postal_code, prefecture, address_1, address_2, authority, registered_time) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	public void createUser(String familyName, String lastName, String familyNameKana, String lastNameKana, String mail, String password, int gender, int postalCode, String prefecture, String address1, String address2, int authority) throws SQLException {
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
				preparedStatement.setString(1, familyName);
				preparedStatement.setString(2, lastName);
				preparedStatement.setString(3, familyNameKana);
				preparedStatement.setString(4, lastNameKana);
				preparedStatement.setString(5, mail);
				preparedStatement.setString(6, password);
				preparedStatement.setInt(7, gender);
				preparedStatement.setInt(8, postalCode);
				preparedStatement.setString(9, prefecture);
				preparedStatement.setString(10, address1);
				preparedStatement.setString(11, address2);
				preparedStatement.setInt(12, authority);
				preparedStatement.setString(13, dateUtil.getDate());
				preparedStatement.executeUpdate();
				System.out.println("姓："+"familyName"); //sessionにsetされているかの確認
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				connection.close();
			}
	}
}