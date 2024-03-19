package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.UpdateBookJDBC;

@WebServlet("/updateBookById")
public class UpdateBook extends HttpServlet {

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
		int res = UpdateBookJDBC.updateBook(id, name, author, pages, price, genre, language);

		if (res == 1) {
			req.setAttribute("message", "Book updated");
		} else {
			req.setAttribute("message", "Book not found");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("updateBookById.jsp");
		requestDispatcher.forward(req, resp);
	}
}
