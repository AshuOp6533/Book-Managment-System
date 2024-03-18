package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.SearchAllBookJDBC;
import com.jspiders.bookmanagmentsystem.object.Book;

@WebServlet("/searchAllBooks")
public class SearchAllBooks extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Book> books = SearchAllBookJDBC.searchAll();
		req.setAttribute("books", books);
        req.getRequestDispatcher("searchAll.jsp").forward(req, resp);
    }
}