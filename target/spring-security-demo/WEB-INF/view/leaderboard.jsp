<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
    <%@ page import ="java.sql.*" %>
	<%@ page import ="javax.sql.*" %>
	<%@ page import = "javax.servlet.*" %>
	<%@ page import="com.luv2code.springsecurity.demo.databaseconnection.*" %>
	
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title -->
    <title>CTF - Capture The Flag</title>

    <!-- Favicon -->

    <!-- Stylesheet -->
</head>
<body>
	<jsp:include page="my-header.jsp"/>
		
		<div class="container  pt-50">
	  <h1 class = "text-center pt-50" style="margin-top:50px">Leaderboard</h1>
	  <p class = "text-center">Check your rank !!</p> 
	   <div class="table-responsive">          
	  <table class="table table-striped table-hover" style="margin-top:10px">
	    <thead class="thead-dark">
	      <tr>
	       <th>Rank</th> 
	       
	        <th>Name</th>
	        <th>Username or Email ID</th>
	        <th>Points</th>
	      </tr>
	    </thead>
	    <tbody>
	    
	 
<%
int rank = 1;

String leaderboard_extract_data_query = "select * from leaderboard order by total_points desc,time_stamp asc;";

DatabaseConnection co = new DatabaseConnection();
Statement stmt = co.getConnection();
ResultSet rs = stmt.executeQuery(leaderboard_extract_data_query);
while(rs.next())
{
	
	String name = rs.getString("name");
	System.out.println(" name : " + name);
	
	String email = rs.getString("username");
	System.out.println(" email : " + email);
	int point = rs.getInt("total_points");
	System.out.println(" points : " + point);
	String currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
// 	long time = rs.getLong("total_time_stamp");
	if(email.equals(currentUsername)){
	%>
	<tr class="bg-success">
	<%}else{ %>
	<tr>
	<%} %>
	 <td><% out.print(rank);%></td>
	 
	 <td><% out.print(name);%></td>
	 <td><% out.print(email);%></td>
	 <td><% out.print(point);%></td>
	
	</tr>
	<% 
	rank++;
}


%>
</tbody>
  </table>
   </div>
   </div>
   
       <jsp:include page="my-footer.jsp"/>
       
        <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- All Plugins -->
    <script src="js/confer.bundle.js"></script>
    <!-- Active -->
    <script src="js/default-assets/active.js"></script>
   
</body>
</html>