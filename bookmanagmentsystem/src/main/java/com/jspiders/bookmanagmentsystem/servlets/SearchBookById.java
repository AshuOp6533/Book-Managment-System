package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.SearchBookByIdJDBC;
import com.jspiders.bookmanagmentsystem.object.Book;

@WebServlet("/searchBookById")
public class SearchBookById extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Book book = SearchBookByIdJDBC.searchById(id);
        req.setAttribute("book", book);
        if (book != null) {
        	req.getRequestDispatcher("searchById.jsp").forward(req, resp);
		}
        else {
        	req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
        }
    }
}
