package com.luv2code.springsecurity.demo.dao;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.luv2code.springsecurity.demo.databaseconnection.DatabaseConnection;

/**
 * Servlet implementation class Door
 */
@WebServlet("/Door2")
public class Door2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String door = request.getParameter("ctfdoor").toLowerCase();
		String ques_id = request.getParameter("ques_id");

		String query = "select answer from answer where ques_id='" + ques_id + "'";

		DatabaseConnection co = new DatabaseConnection();
		try {
			Statement st = co.getConnection();
			ResultSet rs = st.executeQuery(query);
			String ansDao = "";
			while (rs.next()) {
				ansDao = rs.getString("answer");
			}
			if (door.equals(ansDao)) {
				request.setAttribute("rghtAns1", "Correct Answer! Now its Next Door");
				// response.sendRedirect("login.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("/nowDoorThird");
				rd.forward(request, response);

			} else {
				request.setAttribute("doorErrorMessage1", "Wrong Answer!");
				// response.sendRedirect("login.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("/doorSecond");
				rd.forward(request, response);

			}

		} catch (Exception e) {
			System.out.println(e);
			request.setAttribute("errorMessage", "Password didn't match");
			// response.sendRedirect("login.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/error");
			rd.forward(request, response);
		}

	}

}
