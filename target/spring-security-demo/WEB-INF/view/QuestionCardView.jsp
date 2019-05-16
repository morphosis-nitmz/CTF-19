<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
	
	<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	

	<!-- Title -->
    <title>CTF - Capture The Flag</title>

    
    
	
</head>

<body>
<jsp:include page="my-header.jsp"/>

<%
String table_name = SecurityContextHolder.getContext().getAuthentication().getName();
DatabaseConnection co = new DatabaseConnection();
Statement st = co.getConnection();
%>

<section class="our-speaker-area bg-img bg-gradient-overlay section-padding-100-60" style="background-image: url(<spring:url value="/resources/img/bg-img/3.jpg"/>);">
<div class="container section-padding-100-0">
<%
	if(null!=request.getAttribute("correctAnswer"))
	{%>
	<div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
 	out.println(request.getAttribute("correctAnswer"));
	%></div><%
	}
%>
<%
    if(null!=request.getAttribute("wrongAnswer"))
	{%>
	<div class="alert alert-danger alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
	out.println(request.getAttribute("wrongAnswer"));
	%></div><%
	}
%>
  <div class="card-deck pt-50 mb-50">
  <%
  int flag1 = 0;
  String q1 = "select flag from `" + table_name + "` where ques_id='ctf001'";
  ResultSet rs1 = st.executeQuery(q1);
  while(rs1.next()){
	 flag1 = rs1.getInt("flag"); 
  }
  if(flag1==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">Header</div>
      <div class="card-body text-center">
        <p class="card-text">I am the most commonly known cipher..</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="ctf_tri1"><br>
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>
    
    
    <%
  int flag2 = 0;
  String q2 = "select flag from `" + table_name + "` where ques_id='ctf001'";
  ResultSet rs2 = st.executeQuery(q2);
  while(rs2.next()){
	 flag2 = rs2.getInt("flag"); 
  }
  if(flag2==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">Header</div>
      <div class="card-body text-center">
        <p class="card-text">I allow HTTP to act as a stateful protocol...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="ctf_tri2"><br>
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>
    
    
    <%
  int flag3 = 0;
  String q3 = "select flag from `" + table_name + "` where ques_id='ctf001'";
  ResultSet rs3 = st.executeQuery(q3);
  while(rs3.next()){
	 flag3 = rs3.getInt("flag"); 
  }
  if(flag3==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">Header</div>
      <div class="card-body text-center">
        <p class="card-text">My name contains the square of 8....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="ctf_tri3"><br>
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>
    
    
    <%
  int flag4 = 0;
  String q4 = "select flag from `" + table_name + "` where ques_id='ctf001'";
  ResultSet rs4 = st.executeQuery(q4);
  while(rs4.next()){
	 flag4 = rs4.getInt("flag"); 
  }
  if(flag4==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">Header</div>
      <div class="card-body text-center">
        <p class="card-text">So, you say it is difficult to know all....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="ctf_tri4"><br>
      	<div class="form-row">
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>  
    
    
  </div>
</div>
</section>

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
