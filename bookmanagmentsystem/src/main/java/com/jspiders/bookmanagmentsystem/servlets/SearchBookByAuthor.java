package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.SearchBookByAuthorJDBC;
import com.jspiders.bookmanagmentsystem.object.Book;

@WebServlet("/searchBookByAuthor")
public class SearchBookByAuthor extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String author = req.getParameter("author");
        Book book = SearchBookByAuthorJDBC.searchByAuthor(author);
        req.setAttribute("book", book);
        if (book != null) {
            req.getRequestDispatcher("searchByAuthor.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
        }
    }
}
