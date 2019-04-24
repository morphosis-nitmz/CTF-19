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
                                <li class="active"><a href="${pageContext.request.contextPath}/">Home</a></li>
                                
                                <li><a href="${pageContext.request.contextPath}/questionNo1">QUESTIONS</a></li>
                                <li><a href="${pageContext.request.contextPath}/leaderboard">LEADERBOARD</a></li>
                                <li><a href="${pageContext.request.contextPath}/contactUs">Contact</a></li>
                            </ul>
                            
                            <%
    String name=SecurityContextHolder.getContext().getAuthentication().getName();
                            System.out.println(name);
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

                            <!-- Get User -->
<%--                             <security:authentication property="principal.username"/> --%>
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

    <!-- Welcome Area Start -->
    <section class="welcome-area">
        <div class="welcome-slides owl-carousel">
            <!-- Single Slide -->
            <div class="single-welcome-slide bg-img bg-overlay jarallax" style="background-image: url(<spring:url value="/resources/img/bg-img/anonymous.jpg"/>);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <!-- Welcome Text -->
                        <div class="col-12">
                            <div class="welcome-text text-right">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Hack <br>The World</h2>
                                <h6 data-animation="fadeInUp" data-delay="500ms">Capture The Flag(Morphosis)</h6><br>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Single Slide -->
            <div class="single-welcome-slide bg-img bg-overlay jarallax" style="background-image: url(<spring:url value="/resources/img/bg-img/45.jpg"/>);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <!-- Welcome Text -->
                        <div class="col-12">
                            <div class="welcome-text-two text-center">
                                <h5 data-animation="fadeInUp" data-delay="100ms">Technical Fest Of</h5>
                                <h2 data-animation="fadeInUp" data-delay="300ms">NIT MIZORAM</h2>
                                <!-- Event Meta -->
                                <div class="event-meta" data-animation="fadeInUp" data-delay="500ms">
                                    <a class="event-date"><i class="zmdi zmdi-alarm-check"></i> MAY 17-18, 2019</a>
                                    <a class="event-author"><i class="zmdi zmdi-account"></i> By Technical Sociaty</a>
                                </div>
                                <div class="hero-btn-group" data-animation="fadeInUp" data-delay="700ms">
                                    <a href="www.nitmz.ac.in" class="btn confer-btn m-2">NIT MIZORAM <i class="zmdi zmdi-long-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Scroll Icon -->
        <div class="icon-scroll" id="scrollDown"></div>
    </section>
    <!-- Welcome Area End -->

    <!-- About Us And Countdown Area Start -->
    <section class="about-us-countdown-area section-padding-100-0" id="about">
        <div class="container">
            <div class="row align-items-center">
                <!-- About Content -->
                <div class="col-12 col-md-6">
                    <div class="about-content-text mb-80">
                        <h6 class="wow fadeInUp" data-wow-delay="300ms">About CTF</h6>
                        <h3 class="wow fadeInUp" data-wow-delay="300ms">Welcome to CAPTURE THE FLAG</h3>
                        <p class="wow fadeInUp" data-wow-delay="300ms">The Project Management is a platform to learn expert techniques for building successful project teams, creating efficient plans and implementing effective tracking measures to ensure your projects come in on deadline and on budget. In one fast-paced, well-designed day, we’ll cover all the essential elements of project management.</p>
                        <a href="#" class="btn confer-btn mt-50 wow fadeInUp" data-wow-delay="300ms">Interested <i class="zmdi zmdi-long-arrow-right"></i></a>
                    </div>
                </div>

                <!-- About Thumb -->
                <div class="col-12 col-md-6">
                    <div class="about-thumb mb-80 wow fadeInUp" data-wow-delay="300ms">
                        <img src="<spring:url value="/resources/img/bg-img/2.png"/>" alt="">
                    </div>
                </div>
            </div>
        </div>
        
        <section class="our-sponsor-client-area section-padding-0-80">
        <div class="container">
        <div class="row">
        <!-- Our client area -->
                <div class="col-12">
                    <div class="our-client-area mt-50 wow fadeInUp" data-wow-delay="300ms">
                        <!-- client Slider -->
                        <div class="client-area owl-carousel">
                            <!-- Single client Slider -->
                            <div class="single-client-content">
                                <!-- Single client Text -->
                                <div class="single-client-text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/15.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Shantanu Acharya</h6>
                                            <p>Secretary</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single client Icon -->
                                <div class="client-icon">
                                    <i class="zmdi zmdi-quote"></i>
                                </div>
                            </div>

                            <!-- Single client Slider -->
                            <div class="single-client-content">
                                <!-- Single client Text -->
                                <div class="single-client-text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/16.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Ankit Kumar</h6>
                                            <p>Treasurer</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single client Icon -->
                                <div class="client-icon">
                                    <i class="zmdi zmdi-quote"></i>
                                </div>
                            </div>

                            <!-- Single client Slider -->
                            <div class="single-client-content">
                                <!-- Single client Text -->
                                <div class="single-client-text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/15.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Vipulkumar Yadav</h6>
                                            <p>Joint-Secretary</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single client Icon -->
                                <div class="client-icon">
                                    <i class="zmdi zmdi-quote"></i>
                                </div>
                            </div>
                            
                            <!-- Single client Slider -->
                            <div class="single-client-content">
                                <!-- Single client Text -->
                                <div class="single-client-text">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/15.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Malsawmdawngzeli</h6>
                                            <p>Joint-Secretary</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single client Icon -->
                                <div class="client-icon">
                                    <i class="zmdi zmdi-quote"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
        </div>
    </section>
	</section>
        

    <!-- Our Speakings Area Start -->
    <section class="our-speaker-area bg-img bg-gradient-overlay section-padding-100-60" style="background-image: url(<spring:url value="/resources/img/bg-img/3.jpg"/>);">
        <div class="container">
            <div class="row">
                <!-- Heading -->
                <div class="col-12">
                    <div class="section-heading text-center wow fadeInUp" data-wow-delay="300ms">
                        <p>Our Speakings</p>
                        <h4>Who's speaking</h4>
                    </div>
                </div>
            </div>

            <div class="row">
            
            <!-- Single Speaker Area -->
                <div class="col-12 col-md-6 col-lg-2">
                    
                </div>
                <!-- Single Speaker Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-speaker-area bg-gradient-overlay-2 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Thumb -->
                        <div class="speaker-single-thumb">
                            <img src="<spring:url value="/resources/img/bg-img/4.jpg"/>" alt="">
                        </div>
                        <!-- Social Info -->
                        <div class="social-info">
                            <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                            <a href="#"><i class="zmdi zmdi-instagram"></i></a>
                            <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                            <a href="#"><i class="zmdi zmdi-linkedin"></i></a>
                        </div>
                        <!-- Info -->
                        <div class="speaker-info">
                            <h5>Albert Barnes</h5>
                            <p>Founder</p>
                        </div>
                    </div>
                </div>

                <!-- Single Speaker Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-speaker-area bg-gradient-overlay-2 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Thumb -->
                        <div class="speaker-single-thumb">
                            <img src="<spring:url value="/resources/img/bg-img/5.jpg"/>" alt="">
                        </div>
                        <!-- Social Info -->
                        <div class="social-info">
                            <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                            <a href="#"><i class="zmdi zmdi-instagram"></i></a>
                            <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                            <a href="#"><i class="zmdi zmdi-linkedin"></i></a>
                        </div>
                        <!-- Info -->
                        <div class="speaker-info">
                            <h5>Patricia Stanley</h5>
                            <p>Product Lead</p>
                        </div>
                    </div>
                </div>

                <!-- Single Speaker Area -->
                <div class="col-12 col-md-6 col-lg-2">
                    
                </div>

            </div>
        </div>
    </section>
    <!-- Our Speakings Area End -->

    

    

    <!-- Our Sponsor And Client Area Start -->
    <section class="our-sponsor-client-area section-padding-100">
        <div class="container">
            <div class="row">
                <!-- Heading -->
                <div class="col-12">
                    <div class="section-heading-2 text-center wow fadeInUp" data-wow-delay="300ms">
                        <p>Partners &amp; Sponsors</p>
                        <h4>OFFICIAL SPONSOR</h4>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Our Sponsor area -->
                    <div class="our-sponsor-area d-flex flex-wrap">
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-1.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-2.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-3.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-4.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-5.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-6.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-7.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/p-8.png"/>" alt=""></a>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </section>
    <!-- Our Sponsor And Client Area End -->
    

    <!-- Contact Area Start -->
    <section class="contact-our-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <!-- Heading -->
                <div class="col-12">
                    <div class="section-heading-2 text-center wow fadeInUp" data-wow-delay="300ms">
                        <p>Have Question?</p>
                        <h4>Contact us</h4>
                    </div>
                </div>
            </div>

            <div class="row justify-content-between">
                <div class="col-12 col-sm-3">
                    <div class="contact-information mb-100">
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Address:</p>
                            <h6>Dawrkawn, Chaltlang, Aizawl, Mizoram</h6>
                        </div>
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Phone:</p>
                            <h6>+91 9559959581</h6>
                        </div>
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Email:</p>
                            <h6>technicalsociety@nitmz.ac.in</h6>
                        </div>
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Website:</p>
                            <h6>www.morphosis.com</h6>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-8">
                    <!-- Contact Form -->
                    <div class="contact_from_area mb-100 clearfix wow fadeInUp" data-wow-delay="300ms">
                        <div class="contact_form">
                            <form action="#" method="post" id="main_contact_form">
                                <div class="contact_input_area">
                                    <div id="success_fail_info"></div>
                                    <div class="row">
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" name="name" id="name" placeholder="Your Name">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" name="name" id="name2" placeholder="Last Name">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
                                            <div class="form-group">
                                                <input type="email" class="form-control mb-30" name="email" id="email" placeholder="E-mail">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12 col-lg-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control mb-30" name="subject" id="subject" placeholder="Your Number">
                                            </div>
                                        </div>
                                        <!-- Form Group -->
                                        <div class="col-12">
                                            <div class="form-group">
                                                <textarea name="message" class="form-control mb-30" id="message" cols="30" rows="6" placeholder="Your Message *"></textarea>
                                            </div>
                                        </div>
                                        <!-- Button -->
                                        <div class="col-12">
                                            <button type="submit" class="btn confer-btn">Send Message <i class="zmdi zmdi-long-arrow-right"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Area End -->

    <!-- Footer Area Start -->
    <footer class="footer-area bg-img bg-overlay-2 section-padding-100-0">
        <!-- Main Footer Area -->
        <div class="main-footer-area">
            <div class="container">
                <div class="row">
                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Footer Logo -->
                            <a href="#" class="footer-logo"><img src="<spring:url value="/resources/img/core-img/logo1.png"/>" alt=""></a>
                            <p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain.</p>

                            <!-- Social Info -->
                            <div class="social-info">
                                <a href="#"><i class="zmdi zmdi-facebook"></i></a>
                                <a href="#"><i class="zmdi zmdi-instagram"></i></a>
                                <a href="#"><i class="zmdi zmdi-twitter"></i></a>
                                <a href="#"><i class="zmdi zmdi-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Widget Title -->
                            <h5 class="widget-title">Contact</h5>

                            <!-- Contact Area -->
                            <div class="footer-contact-info">
                                <p><i class="zmdi zmdi-map"></i> Dawrkawn, Chaltlang, Aizawl, Mizoram</p>
                                <p><i class="zmdi zmdi-phone"></i> +91 9559959581</p>
                                <p><i class="zmdi zmdi-email"></i> technicalsociety@nitmz.ac.in</p>
                                <p><i class="zmdi zmdi-globe"></i> www.morphosis.com</p>
                            </div>
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Widget Title -->
                            <h5 class="widget-title">Workshops</h5>

                            <!-- Footer Nav -->
                            <ul class="footer-nav">
                                <li><a href="#">OSHA Compliance</a></li>
                                <li><a href="#">Microsoft Excel Basics</a></li>
                                <li><a href="#">Forum Speaker Series</a></li>
                                <li><a href="#">Tedx Moscow Conference</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Single Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Widget Title -->
                            <h5 class="widget-title">Gallery</h5>

                            <!-- Footer Gallery -->
                            <div class="footer-gallery">
                                <div class="row">
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/21.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/21.jpg"/>" alt=""></a>
                                    </div>
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/22.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/22.jpg"/>" alt=""></a>
                                    </div>
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/23.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/23.jpg"/>" alt=""></a>
                                    </div>
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/24.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/24.jpg"/>" alt=""></a>
                                    </div>
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/25.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/25.jpg"/>" alt=""></a>
                                    </div>
                                    <div class="col-4">
                                        <a href="<spring:url value="/resources/img/bg-img/26.jpg"/>" class="single-gallery-item"><img src="<spring:url value="/resources/img/bg-img/26.jpg"/>" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">Morphosis</a>
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
    <!-- Footer Area End -->

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