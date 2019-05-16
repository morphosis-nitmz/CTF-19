<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Capture The Flag</title>

<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body style="background-image: linear-gradient(to top left, #000000 0%, #3333ff 100%);">
 
  
<jsp:include page="my-header.jsp"/>
<img src="<spring:url value="/resources/img/bck.jpg"/>" />
	<p>
	<h2>HelloWorld of CTF!</h2>
	</p>
	<h2>Hey Folks play the game</h2>
	<hr>
	<!-- display user name and role -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role(s): <security:authentication property="principal.authorities"/>
	</p>
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
	
	<input type="submit" value="Logout"/>
	</form:form>
	
	<a href="${pageContext.request.contextPath}/questionNo1">Question 1</a>
	
	
	<%String table_name = SecurityContextHolder.getContext().getAuthentication().getName(); %>
	<br>
	<jsp:include page="my-footer.jsp"/>
	
</body>
</html>