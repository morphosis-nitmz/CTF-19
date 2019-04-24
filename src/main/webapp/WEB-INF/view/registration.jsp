<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="org.springframework.security.core.context.SecurityContextHolder"%>
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
    String name=SecurityContextHolder.getContext().getAuthentication().getName(); 
    System.out.println(name);
    %>

    <!-- Contact Area Start -->
    <section class="contact-our-area section-padding-100-0">
        <div class="container">
            <div class="row" style="text-align:center;">
                <!-- Heading -->
                <div class="col-12 pt-50">
                    <div class="section-heading-2 text-center wow fadeInUp" data-wow-delay="300ms">
                        <h4>Sign Up</h4>
                    </div>
                </div>
            </div>

            <div class="row justify-content-between">
                <div class="col-12 col-sm-3">
                    <div class="contact-information mb-100">
                      
                    </div>
                </div>
            
			
                <div class="col-12 col-sm-6" >
                    <!-- Contact Form -->
                    <div class="contact_from_area mb-100 clearfix wow fadeInUp" data-wow-delay="300ms">
                        <div class="contact_form">
                        
                        <!-- Place for messages: error, alert etc ... -->
					    <div class="form-group">
					        <div class="col-xs-15">
					            
					           <div style="color:red"><%
                                    if(null!=request.getAttribute("errorMessage"))
                                    {
                                        out.println(request.getAttribute("errorMessage"));
                                     }
                                %></div>
					        </div>
					    </div>
                        
                            <form:form action="Register" method="get" id="main_contact_form">
                                <div class="contact_input_area">
                                    <div id="success_fail_info"></div>
                                    <div class="row" style="text-align:center;">
                                    
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" name="name" placeholder="name">
                                            </div>
                                        </div>

                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" name="username" placeholder="username">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-12">
                                            <div class="form-group">
                                                <input type="password" class="form-control mb-30" name="password" placeholder="password">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-12">
                                            <div class="form-group">
                                                <input type="password" class="form-control mb-30" name="confirmPassword" placeholder="confirmPassword">
                                            </div>
                                        </div>
                                        <!-- Button -->
                                        <div class="col-12">
                                            <button type="submit" class="btn confer-btn">Sign Up <i class="zmdi zmdi-long-arrow-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-3">
                    <div class="contact-information mb-100">
                      
                    </div>
                </div>
             </div>
          </div>
        
    </section>
    <!-- Contact Area End -->
        <jsp:include page="my-footer.jsp"/>
    
</body>

</html>
