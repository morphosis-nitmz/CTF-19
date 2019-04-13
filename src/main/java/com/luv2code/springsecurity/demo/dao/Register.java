package com.luv2code.springsecurity.demo.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.luv2code.springsecurity.demo.databaseconnection.DatabaseConnection;

@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection con = null;

		String user = request.getParameter("username");
		String passOld = request.getParameter("password");
		String confirmPassOld = request.getParameter("confirmPassword");
		String name = request.getParameter("name");
		String pass = "{noop}" + passOld;
		String confirmPass = "{noop}" + confirmPassOld;

		String queryText = "insert into users values('" + user + "','" + pass + "',1,'" + name + "')";
		String queryTextAuthorities = "insert into authorities values('" + user + "','ROLE_EMPLOYEE')";
		System.out.println("inserted ::" + user);
		String queryTextCreate = "create table `" + user
				+ "`(ques_id varchar(10) primary key not null,flag int not null)";
		System.out.println(pass + "   " + confirmPass);

		if (pass.equals(confirmPass)) {

			try {

				DatabaseConnection co = new DatabaseConnection();
				Statement st = co.getConnection();
				Statement st1 = co.getConnection();
				Statement st2 = co.getConnection();
				int rst = st.executeUpdate(queryText);
				int rst1 = st1.executeUpdate(queryTextCreate);
				int rst2 = st2.executeUpdate(queryTextAuthorities);
				co.getCloseConnection();
				request.setAttribute("registerMsg", "You are Register Sucessfully");
				RequestDispatcher rd = request.getRequestDispatcher("/showMyLoginPage");
				rd.forward(request, response);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else {
			request.setAttribute("errorMessage", "Password didn't match");
			// response.sendRedirect("login.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/registrationPage");
			rd.forward(request, response);
		}
	}
}
