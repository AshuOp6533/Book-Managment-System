package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.SearchBookByPriceJDBC;
import com.jspiders.bookmanagmentsystem.object.Book;

@WebServlet("/searchBookByPrice")
public class SearchBookByPrice extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		double price = Double.parseDouble(req.getParameter("price"));
		Book book = SearchBookByPriceJDBC.searchByPrice(price);
		req.setAttribute("book", book);
		if (book != null) {
			req.getRequestDispatcher("searchByPrice.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
		}
	}
}
