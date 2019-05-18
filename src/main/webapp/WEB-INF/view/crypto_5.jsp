<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
    <%@ page import ="java.sql.*" %>
  <%@ page import ="javax.sql.*" %>
  <%@ page import = "javax.servlet.*" %>
  <%@ page import = "com.luv2code.springsecurity.demo.databaseconnection.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
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
	<style>
.card{
 background-color:#bccfe0;

}


.question-card{
  
  margin-top:50px;
  padding:25px;
  margin-bottom:15px;
}

.question-head-card{
  
  
  margin-top:50px;
  padding:25px;
  margin-bottom:5px;
}

.solution-card{

  padding:25px;

}


</style>
</head>

<body>

	    <jsp:include page="my-header.jsp"/>
	    
<section class="contact-our-area section-padding-100-0">
<div class="container">
	<div class="row">
		<div class="col-12 mt-3 mb-4 text-center">
			
      <%
         // sending the question id to the check_ans_of_que
          String que_id = "crypto_5";
          String hint="";
          int que_point = 00;
         
          HttpSession ses = request.getSession();
    	  ses.setAttribute("que_id",que_id);
          
    	  //database Connection
    	  DatabaseConnection obj_database_connection = new DatabaseConnection();
    	  Statement stmt = obj_database_connection.getConnection();
    	  Statement stmt1 = obj_database_connection.getConnection();
         
    	 try{
    		 System.out.println("que hello1");
    		 ResultSet rs = stmt.executeQuery("select * from point natural join hints where ques_id='"+que_id+"'");
    		 System.out.println("que hello2");

		    	  while(rs.next()){
		    		  que_point = rs.getInt("points");
		    		  hint = rs.getString("hint");
		    		  //hint = rs.getString("hint");
		     		 System.out.println("que hello3");

		    	      //out.println(que_point);
		    	  }
		    		 System.out.println("que hello4");

		    	  obj_database_connection.getCloseConnection();
		    	  
    	 } catch(Exception e){
    		 
    		 
    		 out.println("<h2>Something went wrong !!</h2> <br> <h2>Talk with admin!!</h2>");
    	 }
      %> 
     
 
 
      
      
<div class = "container card question-head-card text-center">
   
     <div class = "row">
        <div class = "col-md-4"><h2 class= "text-center">Question ID : ${que_id.toUpperCase()}</h2></div>
        <div class = "col-md-4"><h2 class = "text-center">Points : <% out.println(que_point);%></h2></div><br>
        <div class = "col-md-4"><h2 class = "text-center">Hint : <% out.println(hint);%></h2></div>
     
     </div>
<br>
</div>
<div style="color:green"><%
	if(null!=request.getAttribute("correctAnswer"))
	{
 	out.println(request.getAttribute("correctAnswer"));
	}
%></div>
<div style="color:red"><%
    if(null!=request.getAttribute("wrongAnswer"))
	{
	out.println(request.getAttribute("wrongAnswer"));
	}
%></div>

<div class = "container card question-card">
  <h2 class= "text-center">
Who is active here. [.-- .... --- / .. ... / .- -.-. - .. ...- . / .... . .-. . -.--. -.-. - ..-. .-.-.- -- --- .-. .--. .... --- ... .. ... .-.-.- --- .-. --. .-.-.- .. -. -..-. -.--.-]<br>
 <br>
		</div>
	</div>
	<hr>
	
</div>
</section>
<jsp:include page="my-footer.jsp"/>


   
</body>
</html>