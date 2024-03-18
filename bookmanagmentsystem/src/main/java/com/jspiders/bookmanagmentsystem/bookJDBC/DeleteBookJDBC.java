package com.jspiders.bookmanagmentsystem.bookJDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.jspiders.bookmanagmentsystem.object.Book;
import com.mysql.cj.jdbc.Driver;

public class DeleteBookJDBC {
	private static Connection connection;
	private static PreparedStatement preparedStatement;
	private static String query;

	private static void openConnection() throws SQLException {
		Driver driver = new Driver();
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/weja4", "root", "root");
	}

	private static void closeConnection() throws SQLException {
		if (connection != null) {
			connection.close();
		}
		if (preparedStatement != null) {
			preparedStatement.close();
		}
	}

	public static int deleteBookByIdJDBC(int id) {
		int res = 0;
		try {
			openConnection();
			query = "DELETE FROM book WHERE ID = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, id);
			res = preparedStatement.executeUpdate();
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
