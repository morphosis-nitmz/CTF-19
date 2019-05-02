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
<html>
<head lang="en">
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Title -->
    <title>CTF - Capture The Flag</title>

    <!-- Favicon -->
    <link rel="icon" href="<spring:url value="/resources/img/core-img/favicon.png"/>">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<spring:url value="/resources/style.css"/>">
</head>
<body>
	<jsp:include page="my-header.jsp"/>
	<% 
		String currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
		try{
			%>
		
		<div class="container  pt-50">
	  <h1 class = "text-center pt-50" style="margin-top:50px">Dashboard</h1>
	   <div class="table-responsive">          
	  <table class="table table-striped table-hover" style="margin-top:10px">
	    <thead class="thead-dark">
	      <tr>
	      <th>S.No.</th>
	       <th>Question ID</th>
	       <th>Time! You have Taken(Seconds)</th>
	        <th>Points</th>
	        
	      </tr>
	    </thead>
	    <tbody>
	    
	 
<%
int sno = 1;
String dashboard_extract_data_query = "select * from `"+currentUsername+ "` natural join point";

DatabaseConnection co = new DatabaseConnection();
Statement stmt = co.getConnection();
ResultSet rs = stmt.executeQuery(dashboard_extract_data_query);
while(rs.next())
{
	
	String ques_id = rs.getString("ques_id");
	System.out.println(" name : " + ques_id);
	
	String points = rs.getString("points");
	System.out.println(" email : " + points);
	int time_stamp = rs.getInt("time_stamp");
	System.out.println(" points : " + time_stamp);
	currentUsername = SecurityContextHolder.getContext().getAuthentication().getName();
// 	long time = rs.getLong("total_time_stamp");
	
	%>
	<tr>
	<td><% out.print(sno);%></td>
	 <td><% out.print(ques_id);%></td>
	 <td><% out.print(time_stamp);%></td>
	 <td><% out.print(points);%></td>
	 
	
	</tr>
	<% 
	sno++;
}
}catch(Exception e){
	  out.println("<h2>You haven't submitted any questions yet!!</h2>");
}
%>
</tbody>
  </table>
   </div>
   </div>
   
       <jsp:include page="my-footer.jsp"/>
   
</body>
</html>