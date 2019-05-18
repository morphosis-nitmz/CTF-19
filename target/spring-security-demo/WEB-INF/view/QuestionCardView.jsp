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
	
	<title>Capture The Flag</title>
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
<h3 class="text-white">Trivia:</h3>
  <div class="card-deck pt-50 mb-50">
  <%
  int flag1 = 0;
  String q1 = "select flag from `" + table_name + "` where ques_id='tri_1'";
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
      <div class="card-header">TRI_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">YouTube Music application's SSL issued by....... </p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_1"><br>
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
  String q2 = "select flag from `" + table_name + "` where ques_id='tri_2'";
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
      <div class="card-header">TRI_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Let's check your skill. When will expire the SSL...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_2"><br>
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
  String q3 = "select flag from `" + table_name + "` where ques_id='tri_3'";
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
      <div class="card-header">TRI_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Storage which holds the information about you....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_3"><br>
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
  String q4 = "select flag from `" + table_name + "` where ques_id='tri_4'";
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
      <div class="card-header">TRI_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">What's the day when the ....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_4"><br>
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
    
    <!-- //////////////////////////////////////////////////////////next card dec\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <div class="container section-padding-50-0">
    <div class="card-deck pt-50 mb-50">
    <%
  int flag5 = 0;
  String q5 = "select flag from `" + table_name + "` where ques_id='tri_5'";
  ResultSet rs5 = st.executeQuery(q5);
  while(rs5.next()){
	 flag5 = rs5.getInt("flag"); 
  }
  if(flag5==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">TRI_5</div>
      <div class="card-body text-center">
        <p class="card-text text-white">You have a big bucket made of iron...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_5">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_5"><br>
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
  int flag6 = 0;
  String q6 = "select flag from `" + table_name + "` where ques_id='tri_6'";
  ResultSet rs6 = st.executeQuery(q6);
  while(rs6.next()){
	 flag6 = rs6.getInt("flag"); 
  }
  if(flag6==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">TRI_6</div>
      <div class="card-body text-center">
        <p class="card-text text-white">There's a glass with a block of an ice cube...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_6">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_6"><br>
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
  int flag7 = 0;
  String q7 = "select flag from `" + table_name + "` where ques_id='tri_7'";
  ResultSet rs7 = st.executeQuery(q7);
  while(rs7.next()){
	 flag7 = rs7.getInt("flag"); 
  }
  if(flag7==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">TRI_7</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Check all the images and find the...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_7">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_7"><br>
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
  int flag8 = 0;
  String q8 = "select flag from `" + table_name + "` where ques_id='tri_8'";
  ResultSet rs8 = st.executeQuery(q8);
  while(rs8.next()){
	 flag8 = rs8.getInt("flag"); 
  }
  if(flag8==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">TRI_8</div>
      <div class="card-body text-center">
        <p class="card-text text-white">check the image and he is...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/tri_8">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="tri_8"><br>
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

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-100-0">
<h3 class="text-white">Mathematics:</h3>
    <div class="card-deck pt-50 mb-50">
    <%
  int flag9 = 0;
  String q9 = "select flag from `" + table_name + "` where ques_id='math_1'";
  ResultSet rs9 = st.executeQuery(q9);
  while(rs9.next()){
	 flag9 = rs9.getInt("flag"); 
  }
  if(flag9==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">Math_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Add the Numbers...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/math_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="math_1"><br>
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
  int flag10 = 0;
  String q10 = "select flag from `" + table_name + "` where ques_id='math_2'";
  ResultSet rs10 = st.executeQuery(q10);
  while(rs10.next()){
	 flag10 = rs10.getInt("flag"); 
  }
  if(flag10==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MATH_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Add the simple Numbers...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/math_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="math_2"><br>
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
  int flag11 = 0;
  String q11 = "select flag from `" + table_name + "` where ques_id='math_3'";
  ResultSet rs11 = st.executeQuery(q11);
  while(rs11.next()){
	 flag11 = rs11.getInt("flag"); 
  }
  if(flag11==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MATH_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Add the Very large Scrabbled Numbers.....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/math_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="math_3"><br>
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
  int flag12 = 0;
  String q12 = "select flag from `" + table_name + "` where ques_id='math_4'";
  ResultSet rs12 = st.executeQuery(q12);
  while(rs12.next()){
	 flag12 = rs12.getInt("flag"); 
  }
  if(flag12==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MATH_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Add the Scrabbled Numbers with Noise.....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/math_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="math_4"><br>
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

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-100-0">
<h3 class="text-white">Uncover:</h3>
    <div class="card-deck pt-50 mb-50">
    <%
  int flag13 = 0;
  String q13 = "select flag from `" + table_name + "` where ques_id='uncover_1'";
  ResultSet rs13 = st.executeQuery(q13);
  while(rs13.next()){
	 flag13 = rs13.getInt("flag"); 
  }
  if(flag13==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Decode the morse code..</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_1"><br>
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
  int flag14 = 0;
  String q14 = "select flag from `" + table_name + "` where ques_id='uncover_2'";
  ResultSet rs14 = st.executeQuery(q14);
  while(rs14.next()){
	 flag14 = rs14.getInt("flag"); 
  }
  if(flag14==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Add it...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_2"><br>
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
  int flag15 = 0;
  String q15 = "select flag from `" + table_name + "` where ques_id='uncover_3'";
  ResultSet rs15 = st.executeQuery(q15);
  while(rs15.next()){
	 flag15 = rs15.getInt("flag"); 
  }
  if(flag15==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">How many images does our....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_3"><br>
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
  int flag16 = 0;
  String q16 = "select flag from `" + table_name + "` where ques_id='uncover_4'";
  ResultSet rs16 = st.executeQuery(q16);
  while(rs16.next()){
	 flag16 = rs16.getInt("flag"); 
  }
  if(flag16==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Find flag....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_4"><br>
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

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-50-0">
    <div class="card-deck pt-50 mb-50 ">
    <%
  int flag17 = 0;
  String q17 = "select flag from `" + table_name + "` where ques_id='uncover_5'";
  ResultSet rs17 = st.executeQuery(q17);
  while(rs17.next()){
	 flag17 = rs17.getInt("flag"); 
  }
  if(flag17==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_5</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Find the answer in a file...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_5">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_5"><br>
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
  int flag18 = 0;
  String q18 = "select flag from `" + table_name + "` where ques_id='uncover_6'";
  ResultSet rs18 = st.executeQuery(q18);
  while(rs18.next()){
	 flag18 = rs18.getInt("flag"); 
  }
  if(flag18==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_6</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Find the answer in a file...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_6">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_6"><br>
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
  int flag18a = 0;
  String q18a = "select flag from `" + table_name + "` where ques_id='uncover_7'";
  ResultSet rs18a = st.executeQuery(q18a);
  while(rs18a.next()){
	 flag18a = rs18a.getInt("flag"); 
  }
  if(flag18a==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_7</div>
      <div class="card-body text-center">
        <p class="card-text text-white">open this link to find the flag...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_7">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_7"><br>
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
  int flag18b = 0;
  String q18b = "select flag from `" + table_name + "` where ques_id='uncover_8'";
  ResultSet rs18b = st.executeQuery(q18b);
  while(rs18b.next()){
	 flag18b = rs18b.getInt("flag"); 
  }
  if(flag18b==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">UNCOVER_8</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Alright, here is an image...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/uncover_8">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="uncover_8"><br>
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>
    
    
  </div>
</div>

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->



<div class="container section-padding-100-0">
<h3 class="text-white">Cryptography:</h3>
    <div class="card-deck pt-50 mb-50">
    <%
  int flag19 = 0;
  String q19 = "select flag from `" + table_name + "` where ques_id='crypto_1'";
  ResultSet rs19 = st.executeQuery(q19);
  while(rs19.next()){
	 flag19 = rs19.getInt("flag"); 
  }
  if(flag19==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">CRYPTO_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Do you know about Caesar Cipher..</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/crypto_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="crypto_1"><br>
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
  int flag20 = 0;
  String q20 = "select flag from `" + table_name + "` where ques_id='crypto_2'";
  ResultSet rs20 = st.executeQuery(q20);
  while(rs20.next()){
	 flag20 = rs20.getInt("flag"); 
  }
  if(flag20==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">CRYPTO_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Do you know about Caesar Cipher...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/crypto_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="crypto_2"><br>
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
  int flag21 = 0;
  String q21 = "select flag from `" + table_name + "` where ques_id='crypto_3'";
  ResultSet rs21 = st.executeQuery(q21);
  while(rs21.next()){
	 flag21 = rs21.getInt("flag"); 
  }
  if(flag21==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">CRYPTO_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Decode it....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/crypto_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="crypto_3"><br>
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
  int flag22 = 0;
  String q22 = "select flag from `" + table_name + "` where ques_id='crypto_4'";
  ResultSet rs22 = st.executeQuery(q22);
  while(rs22.next()){
	 flag22 = rs22.getInt("flag"); 
  }
  if(flag22==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">CRYPTO_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Sometime Abhishek use Engima machine for encryption....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/crypto_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="crypto_4"><br>
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

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-50-0">
    <div class="card-deck pt-50 mb-50 col-md-4">
    <%
  int flag23 = 0;
  String q23 = "select flag from `" + table_name + "` where ques_id='crypto_5'";
  ResultSet rs23 = st.executeQuery(q23);
  while(rs23.next()){
	 flag23 = rs23.getInt("flag"); 
  }
  if(flag23==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">CRYPTO_5</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Who is active.... </p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/crypto_5">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="crypto_5"><br>
      	<div class="col-1"></div>
      	<div class="col-8">
        <input type="text" class="form-control-sm" name="sol_ctf" placeholder="Flag" required><br><br>
        </div>
        <div class="col-12">
        <button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5" style="margin-bottom:15px;">Submit <i class="zmdi zmdi-long-arrow-right"></i></button>
      	</div>
      </form>
    </div>
   
    
  </div>
</div>

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-100-0">
<h3 class="text-white">Web:</h3>
    <div class="card-deck pt-50 mb-50">
    <%
  int flag24 = 0;
  String q24 = "select flag from `" + table_name + "` where ques_id='web_1'";
  ResultSet rs24 = st.executeQuery(q24);
  while(rs24.next()){
	 flag24 = rs24.getInt("flag"); 
  }
  if(flag24==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">I have to login again without...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_1"><br>
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
  int flag25 = 0;
  String q25 = "select flag from `" + table_name + "` where ques_id='web_2'";
  ResultSet rs25 = st.executeQuery(q25);
  while(rs25.next()){
	 flag25 = rs25.getInt("flag"); 
  }
  if(flag25==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">What is the dimension of the cropped image?...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_2"><br>
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
  int flag26 = 0;
  String q26 = "select flag from `" + table_name + "` where ques_id='web_3'";
  ResultSet rs26 = st.executeQuery(q26);
  while(rs26.next()){
	 flag26 = rs26.getInt("flag"); 
  }
  if(flag26==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Get the flag by typing correct ....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_3"><br>
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
  int flag27 = 0;
  String q27 = "select flag from `" + table_name + "` where ques_id='web_4'";
  ResultSet rs27 = st.executeQuery(q27);
  while(rs27.next()){
	 flag27 = rs27.getInt("flag"); 
  }
  if(flag27==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Unlock the Door....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_4"><br>
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


<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-50-0">
    <div class="card-deck pt-50 mb-50">
    <%
  int flag28 = 0;
  String q28 = "select flag from `" + table_name + "` where ques_id='web_5'";
  ResultSet rs28 = st.executeQuery(q28);
  while(rs28.next()){
	 flag28 = rs28.getInt("flag"); 
  }
  if(flag28==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_5</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Decode the key..</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_5">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_5"><br>
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
  int flag29 = 0;
  String q29 = "select flag from `" + table_name + "` where ques_id='web_6'";
  ResultSet rs29 = st.executeQuery(q29);
  while(rs29.next()){
	 flag29 = rs29.getInt("flag"); 
  }
  if(flag29==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_6</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Government is tracking every activity of your social media, browsing...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_6">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_6"><br>
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
  int flag30 = 0;
  String q30 = "select flag from `" + table_name + "` where ques_id='web_7'";
  ResultSet rs30 = st.executeQuery(q30);
  while(rs30.next()){
	 flag30 = rs30.getInt("flag"); 
  }
  if(flag30==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_7</div>
      <div class="card-body text-center">
        <p class="card-text text-white">The developer always has a fear....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_7">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_7"><br>
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
  int flag31 = 0;
  String q31 = "select flag from `" + table_name + "` where ques_id='web_8'";
  ResultSet rs31 = st.executeQuery(q31);
  while(rs31.next()){
	 flag31 = rs31.getInt("flag"); 
  }
  if(flag31==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">WEB_8</div>
      <div class="card-body text-center">
        <p class="card-text text-white">One website has frontend ....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/web_8">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="web_8"><br>
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


<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->



<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

<div class="container section-padding-100-0">
<h3 class="text-white">Miscellaneous:</h3>
    <div class="card-deck pt-50 mb-50">
    <% 
  int flag32 = 0;
  String q32 = "select flag from `" + table_name + "` where ques_id='misc_1'";
  ResultSet rs32 = st.executeQuery(q32);
  while(rs32.next()){
	 flag32 = rs32.getInt("flag"); 
  }
  if(flag32==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_1</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Do you know about IRC...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_1">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_1"><br>
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
  int flag33 = 0;
  String q33 = "select flag from `" + table_name + "` where ques_id='misc_2'";
  ResultSet rs33 = st.executeQuery(q33);
  while(rs33.next()){
	 flag33 = rs33.getInt("flag"); 
  }
  if(flag33==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_2</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Which command is used to....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_2">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_2"><br>
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
  int flag34 = 0;
  String q34 = "select flag from `" + table_name + "` where ques_id='misc_3'";
  ResultSet rs34 = st.executeQuery(q34);
  while(rs34.next()){
	 flag34 = rs34.getInt("flag"); 
  }
  if(flag34==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_3</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Script-1, find the flag....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_3">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_3"><br>
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
  int flag35 = 0;
  String q35 = "select flag from `" + table_name + "` where ques_id='misc_4'";
  ResultSet rs35 = st.executeQuery(q35);
  while(rs35.next()){
	 flag35 = rs35.getInt("flag"); 
  }
  if(flag35==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_4</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Script-2, find the flag...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_4">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_4"><br>
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

<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<div class="container section-padding-50-0">
    <div class="card-deck pt-50 mb-50">
    <%
  int flag36 = 0;
  String q36 = "select flag from `" + table_name + "` where ques_id='misc_5'";
  ResultSet rs36 = st.executeQuery(q36);
  while(rs36.next()){
	 flag36 = rs36.getInt("flag"); 
  }
  if(flag36==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_5</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Script-3, find the flag...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_5">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_5"><br>
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
  int flag37 = 0;
  String q37 = "select flag from `" + table_name + "` where ques_id='misc_6'";
  ResultSet rs37 = st.executeQuery(q37);
  while(rs37.next()){
	 flag37= rs37.getInt("flag"); 
  }
  if(flag37==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_6</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Search-1,find the flag...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_6">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_6"><br>
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
  int flag38 = 0;
  String q38 = "select flag from `" + table_name + "` where ques_id='misc_7'";
  ResultSet rs38 = st.executeQuery(q38);
  while(rs38.next()){
	 flag38 = rs38.getInt("flag"); 
  }
  if(flag38==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_7</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Search-2,find the flag...</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_7">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_7"><br>
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
  int flag39 = 0;
  String q39 = "select flag from `" + table_name + "` where ques_id='misc_8'";
  ResultSet rs39 = st.executeQuery(q39);
  while(rs39.next()){
	 flag39 = rs39.getInt("flag"); 
  }
  if(flag39==1){
  %>
    <div class="card text-white bg-dark border-success">
 <%}else{%>
    <div class="card text-white bg-dark border-dark">
    <%} %>
      <div class="card-header">MISC_8</div>
      <div class="card-body text-center">
        <p class="card-text text-white">Saurabh accidently used ....</p>
       </div>
      <div class="card-action" style="text-align: center;">
          <a href="${pageContext.request.contextPath}/misc_8">Read More</a>
        </div>
      <hr>
      <form action="Check_ans_of_que" method="get" text-align: center;">
      	<input type="hidden" class="form-control" name="ques_id" value="misc_8"><br>
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
<!-- ///////////////////////////////next card deck\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->



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
