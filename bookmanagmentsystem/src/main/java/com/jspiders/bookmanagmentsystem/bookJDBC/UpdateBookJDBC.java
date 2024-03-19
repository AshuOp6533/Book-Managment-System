package com.jspiders.bookmanagmentsystem.bookJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Driver;

public class UpdateBookJDBC {
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static String query;

	private static void openConnection() throws SQLException {
		Driver driver = new Driver();
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4", "root", "root");
	}

	private static void closeConnection() throws SQLException {
		if (preparedStatement != null) {
			preparedStatement.close();
		}
		if (connection != null) {
			connection.close();
		}
	}

	public static int updateBook(int id, String name, String author, int pages, double price, String genre,
			String language) {
		int res = 0;
		try {
			openConnection();
			query = "UPDATE book SET name = ?, author = ?, pages = ?, price = ?, genre = ?, language = ? WHERE id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, author);
			preparedStatement.setInt(3, pages);
			preparedStatement.setDouble(4, price);
			preparedStatement.setString(5, genre);
			preparedStatement.setString(6, language);
			preparedStatement.setInt(7, id);

			res = preparedStatement.executeUpdate();
			System.out.println(res + " row(s) affected");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				closeConnection();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return res;
	}
}
