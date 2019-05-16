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
                                
                                <li><a href="${pageContext.request.contextPath}/Questions">QUESTIONS</a></li>
                                <li><a href="${pageContext.request.contextPath}/leaderboard">LEADERBOARD</a></li>
                                <li><a href="${pageContext.request.contextPath}/contactUs">Contact</a></li>
                                <li><a href="${pageContext.request.contextPath}/Rules">Rules</a></li>
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
            <div class="single-welcome-slide bg-img bg-overlay jarallax" style="background-image: url(<spring:url value="/resources/img/bg-img/img2.jpg"/>);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <!-- Welcome Text -->
                        <div class="col-12">
                            <div class="welcome-text text-right">
                                <h2 data-animation="fadeInUp" data-delay="300ms">Hack <br>The World</h2>
                                <h6 data-animation="fadeInUp" data-delay="500ms">Capture The Flag(Morphosis'19)</h6><br>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Single Slide -->
            <div class="single-welcome-slide bg-img bg-overlay jarallax" style="background-image: url(<spring:url value="/resources/img/bg-img/h2.png"/>);">
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

    <!-- About Us And Review Start -->
    <section class="about-us-countdown-area section-padding-100-0" id="about">
        <div class="container">
            <div class="row align-items-center">
                <!-- About Content -->
                <div class="col-12 col-md-7">
                    <div class="about-content-text mb-80">
                        <h6 class="wow fadeInUp" data-wow-delay="300ms">About CTF</h6>
                        <h3 class="wow fadeInUp" data-wow-delay="300ms">Welcome to CAPTURE THE FLAG</h3>
                        <p class="wow fadeInUp" data-wow-delay="300ms">To stop the cyber-attacker, you must think like the cyber-attacker. This is a skill that needs practice, and to get that practice, hackers created capture the flag (CTF) competitions, where they compete to own servers and gain credit.
For aspiring white hats, CTF challenges are a great way to learn hacking techniques, strengthen your problem-solving skills, and gain critical hands-on practice. CTF competitions deal the right level of pressure to keep things interesting while helping you to sharpen your skills.
For the pros, CTF competitions help you assess your skill level, challenge yourself among peers, and maybe even earn some bragging rights.</p>
<!--                         <a href="#" class="btn confer-btn mt-50 wow fadeInUp" data-wow-delay="300ms">Interested <i class="zmdi zmdi-long-arrow-right"></i></a> -->
                    </div>
                </div>

                <!-- About Thumb -->
                <div class="col-12 col-md-5">
                    <div class="about-thumb mb-80 wow fadeInUp" data-wow-delay="300ms">
                        <img src="<spring:url value="/resources/img/bg-img/Cybersecurity.png"/>" alt="">
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
                                    <p>CTF is one of the most intriguing online events conducted in Morphosis. The questions here truly push your thinking to the edge and require your logical thinking to be at the maximum level. Looking forward to put my skills on test again this year!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/shantanu.jpg"/>" alt="">
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
                                    <p>Incredible game. I've had the best experience with this. Great concept and the skills required. CTF is really exciting game. If you put the right thing at right time and are quick to think smart, you should surely participate! And yes keep your Google tabs ready!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/ankit.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Ankit Kumar</h6>
                                            <p>Winner of CTF'18 & Treasurer</p>
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
                                    <p>Game of logic, presence of mind and rush of adrenaline.  Perfect recipe to enjoy CTF. Anyone with a bit of knowledge in hacking can win this game,<br> Only thing is to keep in mind that you have to use google smartly!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/ranjeet.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Ranjeet Kumar</h6>
                                            <p>1st Runner Up of CTF'18</p>
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
                                    <p>In Morphosis'18, it was the first time that this type of event was organised in our college. And it was an awesome experience. It mainly consist of question from Computer Science and I would like to participate this year also!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/sunil.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Sunil Dinday</h6>
                                            <p>2st Runner Up of CTF'18</p>
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
                                    <p>It was a privilege to organised CTF for the first time in Morphosis. Although the problems that we set are not the most interesting ones, lots of participants were giving their time , which was very encouraging for the organiser. I am happy that CTF '19 is coming.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/sunday.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Sunday Lalbiaknia</h6>
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
                                    <p>CTF is quite the mind boggling game. In it, you have to find the answers with few hints provided. It contains a variety of questions which requires students to think out of the box. A very nice, fun and engaging idea as an event for morphosis!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/alwani.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Abhishek Alwani</h6>
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
                                    <p>CTF is a game that tests your logic and knowledge of various areas in computer science. It is like finding out something important out of nothing. I certainly enjoyed a lot playing it. Looking forward to play it again in the upcoming tech fest.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/yatharth.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Yatharth Mishra</h6>
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
                                    <p>I solved few questions but most of the questions were tough for those who isn't from computer science background.<br> Frontend could have been made better.<br> Overall it was fun playing.</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/akash.png"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Akash Gangwar</h6>
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
                                    <p>One of the most exciting events of morphosis 2019. This game has its own thrill and excitement!<br> Loved this game a lot!<br> Hold your nerves and work hard constantly to win! Try this game! I bet you will be addicted to it!</p>
                                    <!-- Single client Thumb and info -->
                                    <div class="single-client-thumb-info d-flex align-items-center">
                                        <!-- Single client Thumb -->
                                        <div class="single-client-thumb">
                                            <img src="<spring:url value="/resources/img/bg-img/vipul.jpg"/>" alt="">
                                        </div>
                                        <!-- Single client Info -->
                                        <div class="client-info">
                                            <h6>Vipulkumar Yadav</h6>
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
        

    <!-- Our Developer Area Start -->
    <section class="our-speaker-area bg-img bg-gradient-overlay section-padding-100-60" style="background-image: url(<spring:url value="/resources/img/bg-img/3.jpg"/>);">
        <div class="container">
            <div class="row">
                <!-- Heading -->
                <div class="col-12">
                    <div class="section-heading text-center wow fadeInUp" data-wow-delay="300ms">
                        <p>Capture The Flag</p>
                        <h4>Developers</h4>
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
                            <img src="<spring:url value="/resources/img/bg-img/5.jpg"/>" alt="">
                        </div>
                        <!-- Social Info -->
                        <div class="social-info">
                            <a href="https://www.facebook.com/abhiislikeme"><i class="zmdi zmdi-facebook"></i></a>
                            <a href="https://www.instagram.com/abhi5h1d/"><i class="zmdi zmdi-instagram"></i></a>
                            <a href="https://twitter.com/abhi5h1d"><i class="zmdi zmdi-twitter"></i></a>
                            <a href="https://www.linkedin.com/in/abhi1d/"><i class="zmdi zmdi-linkedin"></i></a>
                        </div>
                        <!-- Info -->
                        <div class="speaker-info">
                            <h5>Abhishek Sharma</h5>
                            <p>Senior Java Developer</p>
                        </div>
                    </div>
                </div>

                <!-- Single Speaker Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-speaker-area bg-gradient-overlay-2 wow fadeInUp" data-wow-delay="300ms">
                        <!-- Thumb -->
                        <div class="speaker-single-thumb">
                            <img src="<spring:url value="/resources/img/bg-img/srv.jpg"/>" alt="">
                        </div>
                        <!-- Social Info -->
                        <div class="social-info">
                            <a href="https://www.facebook.com/saurabhsunil95"><i class="zmdi zmdi-facebook"></i></a>
                            <a href="https://www.instagram.com/saurabhsunil4321/"><i class="zmdi zmdi-instagram"></i></a>
                            <a href="https://twitter.com/saurabh_sunil"><i class="zmdi zmdi-twitter"></i></a>
                            <a href="https://www.linkedin.com/in/saurabhsunil95/"><i class="zmdi zmdi-linkedin"></i></a>
                        </div>
                        <!-- Info -->
                        <div class="speaker-info">
                            <h5>Saurabh Sunil</h5>
                            <p>Java Developer</p>
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
                        <p>We Use</p>
                        <h4>Technology &amp; Frameworks</h4>
                        
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <!-- Our Sponsor area -->
                    <div class="our-sponsor-area d-flex flex-wrap">
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/aws.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/mysql.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/eclipse.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/java.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/spring.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/formspree.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/bootstrap1.png"/>" alt=""></a>
                        </div>
                        <!-- Single Sponsor -->
                        <div class="single-sponsor wow fadeInUp" data-wow-delay="300ms">
                            <a href="#"><img src="<spring:url value="/resources/img/core-img/colorlib.png"/>" alt=""></a>
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
                            <h6>+91 7005625738</h6>
                        </div>
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Email:</p>
                            <h6>morphosis@nitmz.ac.in</h6>
                        </div>
                        <!-- Single Contact Info -->
                        <div class="single-contact-info wow fadeInUp" data-wow-delay="300ms">
                            <p>Website:</p>
                            <h6>www.morphosis.org.in</h6>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-sm-8">
                    <!-- Contact Form -->
                    <div class="contact_from_area mb-100 clearfix wow fadeInUp" data-wow-delay="300ms">
                        <div class="contact_form">
                            <form action="https://formspree.io/saurabhsunil4321@gmail.com" method="post" id="main_contact_form">
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
                                        <div class="col-12">
                                            <div class="form-group">
                                                <input name="username" class="form-control mb-30" id="username" placeholder="<%=name %>" value="<%=name %>" readonly>
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
                    <div class="col-12 col-sm-6 col-lg-4">
                        <div class="single-footer-widget mb-60 wow fadeInUp" data-wow-delay="300ms">
                            <!-- Footer Logo -->
                            <a href="#" class="footer-logo"><img src="<spring:url value="/resources/img/core-img/logo1.png"/>" alt=""></a>
                            <p>Step into our world and start hacking. Defend your servers, and launch attacks on others, all using the exact same techniques that work in the real world.</p>
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
                                <p><i class="zmdi zmdi-email"></i> morphosis@nitmz.ac.in</p>
                                <p><i class="zmdi zmdi-globe"></i> www.morphosis.org.in</p>
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