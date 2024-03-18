package com.jspiders.bookmanagmentsystem.bookJDBC;

import java.sql.Connection; 
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddBookJDBC {
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static String query;
	private static ResultSet resultSet;

	private static void openConnection() throws SQLException {
		Driver driver = new com.mysql.cj.jdbc.Driver();
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4", "root", "root");
	}

	private static void closeConnection() throws SQLException {
		if (resultSet != null) {
			resultSet.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
	}

	public static int addBook(int id, String name, String author, int pages, double price, String genre,
			String language) {
		int res = 0;
		try {
			openConnection();
			query = "INSERT INTO book VALUES(?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			preparedStatement.setString(2, name);
			preparedStatement.setString(3, author);
			preparedStatement.setInt(4, pages);
			preparedStatement.setDouble(5, price);
			preparedStatement.setString(6, genre);
			preparedStatement.setString(7, language);

			res = preparedStatement.executeUpdate();
			System.out.println(res + " row(s) affected");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return res;
	}

}
