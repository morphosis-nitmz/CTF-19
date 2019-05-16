<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Capture The Flag</title>
<link rel="icon" href="<spring:url value="/resources/img/core-img/favicon.png"/>">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="<spring:url value="/resources/style.css"/>">
    
</head>
<body>
<%
	if(null!=request.getAttribute("rghtAns2"))
	{%>
	<div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
 	out.println(request.getAttribute("rghtAns2"));
	%></div><%
	}
%>
<%
	if(null!=request.getAttribute("doorErrorMessage3"))
	{%>
	<div class="alert alert-danger alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<%
 	out.println(request.getAttribute("doorErrorMessage3"));
	%></div><%
	}
%>
<div class="pt-50">
	<form action="Door3" method="get" id="main_contact_form">
	<div class="row">
	<div class="col-2"></div>
	<div class="col-8">
	Door3:<br><br>
	
		<input type="hidden" class="form-control" name="ques_id" value="ctfdoor3"><br>
	
	<input type="text" class="form-control" name="ctfdoor"/><br>
	
	
	<input type="submit" class="btn btn-info" value="Submit"/>
	</div>
	<div class="col-2"></div>
	</div>
	
	</form>
	</div>
	
	

</body>
</html>