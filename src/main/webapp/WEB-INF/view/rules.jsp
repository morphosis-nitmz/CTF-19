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
			<h1 class="single-sponsor text-white wow fadeInUp"><b>Rules & Regulations</b></h1>
		</div>
	</div>
	<hr>
	<div class="row">
		<div class="col-12">
			<p class="single-sponsor font-italic wow fadeInUp">
				1. Correct email format should be used. The character length should not be more than 45.
			</p>
		</div>
	</div>
	<div class="row">
		
		<div class="col-12">
			<p class="single-sponsor font-italic wow fadeInUp">
				2. Correct phone number format should be used i.e. it should be exactly 10 digits.
			</p>
		</div>
	</div>
	<div class="row">
	
		<div class="col-12">
			<p class="single-sponsor font-italic wow fadeInUp">
		
			3. Every user should submit correct information.
 				If any user submit wrong information like email, phone number, etc. he/she is not eligible to win the prize.
			  The next person in the leaderboard with correct information will be declared as the winner.
		
           </p>
		</div>
	</div>
		<div class="row">
	
		<div class="col-12">
			<p class="single-sponsor font-italic wow fadeInUp">
		
			 
				4. The answer or flag should be submitted following formats:		
				
				
           </p>
           <br>
           <p class ="single-sponsor font-italic wow fadeInUp" style="padding-left:10px;">
               - No spaces should be used.
   
           </p>
            <br>
           <p class ="single-sponsor font-italic wow fadeInUp" style="padding-left:10px;">
                - Only lowercase letter is allowed.
			</p>
		</div>
	</div>
	<div class="row">
	
		<div class="col-12">
			<p class="single-sponsor font-italic wow fadeInUp">
		
			<b>Disclaimer:</b> Though we have tried our best to avoid any unfortunate circumstances, but if in case any discrepancies occur and we are unable to resume the game then the player who was holding the top position on the leaderboard at the time of that event will be declared as the winner. The morphosis team will not be responsible for any inconviniences whatsoever.
           </p>
           
		</div>
	</div>
</div>
</section>
<jsp:include page="my-footer.jsp"/>


   
</body>
</html>