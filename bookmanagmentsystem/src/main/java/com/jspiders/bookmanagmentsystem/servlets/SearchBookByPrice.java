package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;
import java.util.List;

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
        List<Book> books = SearchBookByPriceJDBC.searchByPrice(price);
        req.setAttribute("books", books);
        if (books != null && !books.isEmpty()) {
            req.getRequestDispatcher("searchByPrice.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
        }
    }
}
