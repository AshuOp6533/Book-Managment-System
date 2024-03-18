package com.jspiders.bookmanagmentsystem.bookJDBC;

import java.sql.Connection; 
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jspiders.bookmanagmentsystem.object.Book;

public class SearchAllBookJDBC {
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

	public static List<Book> searchAll() {
		List<Book> books = new ArrayList<>();
		try {
			openConnection();
			query = "SELECT * FROM book";
			preparedStatement = connection.prepareStatement(query);
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String author = resultSet.getString("author");
				int pages = resultSet.getInt("pages");
				double price = resultSet.getDouble("price");
				String genre = resultSet.getString("genre");
				String language = resultSet.getString("language");
				Book book = new Book(id, name, author, pages, price, genre, language);
				books.add(book);
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
		return books;
	}
}
