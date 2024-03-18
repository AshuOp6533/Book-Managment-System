package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.SearchBookByNameJDBC;
import com.jspiders.bookmanagmentsystem.object.Book;

@WebServlet("/searchBookByName")
public class SearchBookByName extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		Book book = SearchBookByNameJDBC.searchByName(name);
		req.setAttribute("book", book);
		if (book != null) {
			req.getRequestDispatcher("searchByName.jsp").forward(req, resp);
		} else {
			req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
		}
	}
}
