<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
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
    
    

</head>

<body>
    

    <!-- Header Area Start -->
    <header class="header-area">
        <div class="classy-nav-container breakpoint-off">
            <div class="container">
                <!-- Classy Menu -->
                <nav class="classy-navbar justify-content-between" id="conferNav">

                    <!-- Logo -->
                    <a class="nav-brand" href="${pageContext.request.contextPath}/"><img src="<spring:url value="/resources/img/core-img/logo1.png"/>" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Menu -->
                    <div class="classy-menu">
                        <!-- Menu Close Button -->
                        <div class="classycloseIcon">
                            <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                        </div>
                        <!-- Nav Start -->
                        <div class="classynav">
                            <ul id="nav">
                                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                                
                                <li><a href="${pageContext.request.contextPath}/Questions">QUESTIONS</a></li>
                                <li><a href="${pageContext.request.contextPath}/leaderboard">LEADERBOARD</a></li>
                                <li><a href="${pageContext.request.contextPath}/contactUs">Contact</a></li>
                                <li><a href="${pageContext.request.contextPath}/Rules">Rules</a></li>
                            </ul>
                            
                            <%
    String name=SecurityContextHolder.getContext().getAuthentication().getName();
    if(name=="anonymousUser"){ 
    System.out.println("run this code:start");
    %>
    	
     	<a href="${pageContext.request.contextPath}/registrationPage" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5">Sign Up</a>
      <a href="${pageContext.request.contextPath}/showMyLoginPage" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5">Login</a>
      <%System.out.println("run this code:end");
      }else{
    	  name=name.replace("@gmail.com","");
          System.out.println(name);
      %>

                            <!-- Get Tickets Button -->
                            <a href="${pageContext.request.contextPath}/dashboard" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5">Hi <%=name %>! </i></a>
                            <!-- Add a logout button -->
                            <form:form action="${pageContext.request.contextPath}/logout"
										method="POST">
							<button type="submit" class="btn confer-btn mt-3 mt-lg-0 ml-3 ml-lg-5">Logout <i class="zmdi zmdi-long-arrow-right"></i></button>
							</form:form>
							<%} %>
                        </div>
                        <!-- Nav End -->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Area End -->
    <!-- **** All JS Files ***** -->
    <!-- jQuery 2.2.4 -->
    <script src="<spring:url value="/resources/js/jquery.min.js"/>"></script>
    <!-- Popper -->
    <script src="<spring:url value="/resources/js/popper.min.js"/>"></script>
    <!-- Bootstrap -->
    <script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
    <!-- All Plugins -->
    <script src="<spring:url value="/resources/js/confer.bundle.js"/>"></script>
    <!-- Active -->
    <script src="<spring:url value="/resources/js/default-assets/active.js"/>"></script>
</body>

</html>