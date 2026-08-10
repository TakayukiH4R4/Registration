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

	private String sql = "INSERT INTO registration (id, family_name, last_name, family_name_kana, last_name_kana, mail, password, gender, postal_code, prefecture, address1, address2, authority, registered_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	public void createUser(String id, String familyName, String lastName, String familyNameKana, String lastNameKana, String mail, String password, int gender, int postalCode, String prefecture, String address1, String address2, int authority) throws SQLException {
	try {
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, id);
			preparedStatement.setString(2, familyName);
			preparedStatement.setString(3, lastName);
			preparedStatement.setString(4, familyNameKana);
			preparedStatement.setString(5, lastNameKana);
			preparedStatement.setString(6, mail);
			preparedStatement.setString(7, password);
			preparedStatement.setInt(8, gender);
			preparedStatement.setInt(9, postalCode);
			preparedStatement.setString(10, prefecture);
			preparedStatement.setString(11, address1);
			preparedStatement.setString(12, address2);
			preparedStatement.setInt(13, authority);
			preparedStatement.setString(14, dateUtil.getDate());
			preparedStatement.execute();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
	}
}