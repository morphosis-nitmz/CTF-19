<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Capture The Flag</title>

	<!-- imgur -->
	<link rel="icon" href="<spring:url value="/resources/img/core-img/favicon.png"/>">

    <!-- Stylesheet-->
    <link rel="stylesheet" href="<spring:url value="/resources/style.css"/>">
    
</head>
<body>
<%
	if(null!=request.getAttribute("rghtAns1"))
	{%>
	<div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
 	out.println(request.getAttribute("rghtAns1"));
	%></div><%
	}
%>
<%
	if(null!=request.getAttribute("doorErrorMessage2"))
	{%>
	<div class="alert alert-danger alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
 	out.println(request.getAttribute("doorErrorMessage2"));
	%></div><%
	}
%>
<div class="pt-50">
	<form:form action="Door2" method="get" id="main_contact_form">
	<div class="row">
	<div class="col-2"></div>
	<div class="col-8">
	Door2:<br><br>
	<br><br><img src="<spring:url value="/resources/img/bg-img/Cicadoidea.jpg"/>" class="img-rounded" alt="Cinque Terre">
Something Official.Something wrong.<br>
	
	<input type="hidden" class="form-control" name="ques_id" value="ctfdoor2"><br>
	
	<input type="text" class="form-control" name="ctfdoor"/><br>
	
	
	<input type="submit" class="btn btn-info" value="Submit"/>
	</div>
	<div class="col-2"></div>
	</div>
	
	</form:form>
	</div>
	
	

</body>
</html>