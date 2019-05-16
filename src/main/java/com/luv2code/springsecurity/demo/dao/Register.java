package com.luv2code.springsecurity.demo.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
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
		String enroll = request.getParameter("enroll");
		String passOld = request.getParameter("password");
		String confirmPassOld = request.getParameter("confirmPassword");
		String name = request.getParameter("name");
		String pass = "{noop}" + passOld;
		String confirmPass = "{noop}" + confirmPassOld;
		int total_points = 0;
		int total_time_stamp = 0;

		String queryText = "insert into users values('" + user + "','" + pass + "',1,'" + name + "')";
		String queryEnroll = "insert into enroll values('" + enroll + "','" + user + "')";
		String queryTextAuthorities = "insert into authorities values('" + user + "','ROLE_EMPLOYEE')";
		System.out.println("inserted ::" + user);
		String queryTextCreate = "create table `" + user
				+ "`(ques_id varchar(10) primary key not null,flag int not null,time_stamp bigint)";

		String leaderboard_query = "insert into leaderboard values('" + name + "', '" + user + "', " + total_points
				+ ",  " + total_time_stamp + ")";
		System.out.println(pass + "   " + confirmPass);

		String fetchQuery = "select enroll from enroll where enroll='" + enroll + "';";

		if (pass.equals(confirmPass)) {

			try {

				DatabaseConnection co = new DatabaseConnection();
				Statement st = co.getConnection();
				Statement st1 = co.getConnection();
				Statement st2 = co.getConnection();
				Statement st3 = co.getConnection();

				Statement stfetch = co.getConnection();
				ResultSet rsfetch = stfetch.executeQuery(fetchQuery);
				String fetchenroll = null;
				while (rsfetch.next()) {
					fetchenroll = rsfetch.getString("enroll");
					System.out.println(fetchenroll);
				}
				System.out.println(fetchenroll);

				if (enroll.equals(fetchenroll) || fetchenroll == "null") {
					request.setAttribute("errorMessageForEnroll", "User with this Enrollment No already Exists!");
					// response.sendRedirect("login.jsp");
					RequestDispatcher rd = request.getRequestDispatcher("/registrationPage");
					rd.forward(request, response);
				} else {
					System.out.println("inserted :: executed");

					int rst = st.executeUpdate(queryText);
					Statement st4 = co.getConnection();
					System.out.println("inserted :: executed1");
					int rst4 = st4.executeUpdate(queryEnroll);
					System.out.println("inserted :: executed2");
					int rst1 = st1.executeUpdate(queryTextCreate);
					int rst2 = st2.executeUpdate(queryTextAuthorities);
					int flag_status_leaderboard = st3.executeUpdate(leaderboard_query);

					co.getCloseConnection();
					request.setAttribute("registerMsg", "You are Register Sucessfully");
					RequestDispatcher rd = request.getRequestDispatcher("/Rules");
					rd.forward(request, response);
				}
			} catch (Exception e) {
				System.out.println(e);
				request.setAttribute("errorMessageForUsername", "Try Another Username");
				// response.sendRedirect("login.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("/registrationPage");
				rd.forward(request, response);
			}
		} else {
			request.setAttribute("errorMessage", "Password didn't match!");
			// response.sendRedirect("login.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("/registrationPage");
			rd.forward(request, response);
		}
	}
}
