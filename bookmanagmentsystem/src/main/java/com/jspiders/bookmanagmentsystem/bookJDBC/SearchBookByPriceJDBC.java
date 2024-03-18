package com.jspiders.bookmanagmentsystem.bookJDBC;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jspiders.bookmanagmentsystem.object.Book;

public class SearchBookByPriceJDBC {
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

	public static Book searchByPrice(double price) {
		Book book = null;
		try {
			openConnection();
			query = "SELECT * FROM book WHERE price=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setDouble(1, price);
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String author = resultSet.getString("author");
				int pages = resultSet.getInt("pages");
				String genre = resultSet.getString("genre");
				String language = resultSet.getString("language");
				book = new Book(id, name, author, pages, price, genre, language);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				closeConnection();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return book;
	}
}