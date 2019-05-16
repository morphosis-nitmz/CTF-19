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
    

<!-- Footer Area Start -->
    <footer class="footer-area bg-img bg-overlay-2 section-padding-100-0">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Footer Logo -->
                            <a href="#" class="footer-logo"><img src="<spring:url value="/resources/img/core-img/logo1.png"/>" alt=""></a>
                            <p>Step into our world and start hacking. Defend your servers, and launch attacks on others, all using the exact same techniques that work in the real world.</p>

<!--                             Social Info -->
<!--                             <div class="social-info"> -->
<!--                                 <a href="#"><i class="zmdi zmdi-facebook"></i></a> -->
<!--                                 <a href="#"><i class="zmdi zmdi-instagram"></i></a> -->
<!--                                 <a href="#"><i class="zmdi zmdi-twitter"></i></a> -->
<!--                                 <a href="#"><i class="zmdi zmdi-linkedin"></i></a> -->
<!--                             </div> -->
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Widget Title -->
                            <h5 class="widget-title">Contact</h5>

                            <!-- Contact Area -->
                            <div class="footer-contact-info">
                                <p><i class="zmdi zmdi-map"></i> Dawrkawn, Chaltlang, Aizawl, Mizoram</p>
                                <p><i class="zmdi zmdi-phone"></i> +91 7005625738</p>
                                <p><i class="zmdi zmdi-email"></i> technicalsociety@nitmz.ac.in</p>
                                <p><i class="zmdi zmdi-globe"></i> www.morphosis.com</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Widget Title -->
                           <!-- Social Info -->
                            <div class="social-info mt-70">
                                <a href="https://www.facebook.com/NITMz.morphosis/"><i class="zmdi zmdi-facebook"></i></a>
                                <a href="https://www.instagram.com/nitmz_morphosis/"><i class="zmdi zmdi-instagram"></i></a>
                                <a href="https://www.youtube.com/channel/UCU0PsDK19ZP25bTPTsibS4A"><i class="zmdi zmdi-youtube-play"></i></a>
                                <a href="http://www.morphosis.org.in/"><i class="zmdi zmdi-google"></i></a>
                                <a href="https://www.linkedin.com/company/technical-society-nit-mizoram/about/"><i class="zmdi zmdi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
<!--                     <div class="col-12 col-sm-6 col-lg-3"> -->
<!--                         <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms"> -->
<!--                             Widget Title -->
<!--                             <h5 class="widget-title">Gallery</h5> -->

<!--                             Footer Gallery -->
<!--                             <div class="footer-gallery"> -->
<!--                                 <div class="row"> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/21.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/21.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/22.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/22.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/23.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/23.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/24.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/24.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/25.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/25.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                     <div class="col-4"> -->
<%--                                         <a href="<spring:url value="/resources/img/bg-img/26.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/26.jpg"/>" alt=""></a> --%>
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                </div>
            </div>
        </div>

        <!-- Copywrite Area -->
        <div class="container">
            <div class="copywrite-content">
                <div class="row">
                    <!-- Copywrite Text -->
                    <div class="col-12 col-md-6">
                        <div class="copywrite-text">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="http://www.morphosis.org.in/Our-Team.html" target="_blank">Web Team of NIT Mizoram</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <!-- Footer Menu -->
                    <div class="col-12 col-md-6">
                        <div class="footer-menu">
                            <ul class="nav">
                                <li><a href="#"><i class="zmdi zmdi-circle"></i> Terms of Service</a></li>
                                <li><a href="#"><i class="zmdi zmdi-circle"></i> Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    

</html>