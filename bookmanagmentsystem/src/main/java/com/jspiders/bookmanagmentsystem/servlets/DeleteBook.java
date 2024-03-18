package com.jspiders.bookmanagmentsystem.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.bookmanagmentsystem.bookJDBC.DeleteBookJDBC;

@WebServlet("/deleteBook")
public class DeleteBook extends HttpServlet{

	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		int res = DeleteBookJDBC.deleteBookByIdJDBC(id);
		if(res > 0) {
			req.setAttribute("message", "Book Deleted");
			req.getRequestDispatcher("deleteBook.jsp").forward(req, resp);
		}
		else {
			req.getRequestDispatcher("bookNotFound.jsp").forward(req, resp);
		}
	}
	
}
