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
	<style>
	
	</style>
</head>

<body>

	    <jsp:include page="my-header.jsp"/>
<section class="contact-our-area section-padding-100-0">
<div class="container">
	<div class="row">
		<div class="col-12 mt-3 mb-4 text-center">
			<h1 class="single-sponsor text-white wow fadeInUp"><b>Error</b></h1>
			<h3 class="single-sponsor text-white wow fadeInUp"><b>Contact to Coordinator of this Game!!</b></h3>
		</div>
	</div>
	<hr>
	
</div>
</section>
<jsp:include page="my-footer.jsp"/>


   
</body>
</html>