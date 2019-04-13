package com.luv2code.springsecurity.demo.dao;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = null;

        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String confirmPass = request.getParameter("confirmPassword");
        
        String queryText = "insert into users values('"+user+"','"+pass+"',1)";
        System.out.println(pass+"   "+confirmPass);
        
        if(pass.equals(confirmPass))
        {
        
 		try{
 		
 		
 			DatabaseConnection co = new DatabaseConnection();
 			Statement st = co.getConnection();
 		int rst = st.executeUpdate(queryText);
 		co.getCloseConnection();
		request.setAttribute("registerMsg", "You are Register Sucessfully");
		RequestDispatcher rd = request.getRequestDispatcher("/showMyLoginPage");
        rd.forward(request, response);
 		}catch(Exception e) {
 			System.out.println(e);
 		}
	}
	else {
		request.setAttribute("errorMessage", "Password didn't match");
		//response.sendRedirect("login.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("/registrationPage");
        rd.forward(request, response);
	}
	}
}
