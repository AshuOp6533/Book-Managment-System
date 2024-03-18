package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.AddBookJDBC;

@WebServlet("/addBook")
public class AddBook extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String author = req.getParameter("author");
		int pages = Integer.parseInt(req.getParameter("pages"));
		double price = Double.parseDouble(req.getParameter("price"));
		String genre = req.getParameter("genre");
		String language = req.getParameter("language");

		int res = AddBookJDBC.addBook(id, name, author, pages, price, genre, language);
		if (res == 1) {
			req.setAttribute("message", "Book added");
		} else {
			req.setAttribute("message", "Book is not added");

		}

		RequestDispatcher requestDispatcher = req.getRequestDispatcher("addBook.jsp");
		requestDispatcher.forward(req, resp);
	}

}
