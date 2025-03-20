<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Footer</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Footer.css">
</head>
<body>
    <footer class="footer-section">
        <div class="container">
            <div class="row">
                <!-- Logo and About Us Column -->
                <div class="col-md-5">
                    <div class="logo-container">
                        <img src="${pageContext.request.contextPath}/images/logo.png" alt="Company Logo" class="footer-logo">
                    </div>
                    <h2 class="footer-heading">ABOUT US</h2>
                    <p class="about-text">
                    	Welcome to Auto Elite, your premier online destination for supercar and superbike spare parts. 
                    	Our journey from enthusiasts to industry leaders has been a thrilling ride, filled with 
                    	challenges and triumphs. Now, we leverage our expertise to deliver top-notch parts and expert 
                    	setup advice, helping you build an extraordinary road car, show-stopping masterpiece, 
                    	or competition-winning machine. With a focus on exceptional quality and reliable delivery, 
                    	we're dedicated to elevating your vehicle's performance and style.
                    </p>
                    <div class="social-icons">
                        <a href="#" class="social-icon"><i class="bi bi-youtube"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-linkedin"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-pinterest"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-instagram"></i></a>
                        <a href="#" class="social-icon"><i class="bi bi-facebook"></i></a>
                    </div>
                </div>
                
                <!-- Quick links Column -->
                <div class="col-md-3">
                    <h2 class="footer-heading">QUICK LINKS</h2>
                    <ul class="footer-links">
                        <li><a href="#">Shop</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">Login</a></li>
                        <li><a href="#">T&C</a></li>
                    </ul>
                </div>
                
                <!-- Contact Form Column -->
                <div class="col-md-4">
                    <h2 class="footer-heading">CONTACT US</h2>
                    <form class="contact-form" action="" method="POST">
                        <div class="mb-3">
                            <input type="text" class="form-control" placeholder="Your Name" required>
                        </div>
                        <div class="mb-3">
                            <input type="email" class="form-control" placeholder="Your Email" required>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" rows="3" placeholder="Your Message" required></textarea>
                        </div>
                        <div class="button-wrapper">
						    <button type="submit" class="btn btn-submit" id="sendMsg">Send Message</button>
						</div>
                    </form>
                </div>
            </div>
            
            <!-- Copyright Row -->
            <div class="row copyright-row">
                <div class="col-md-8">
                    <jsp:useBean id="now" class="java.util.Date" />
                    <fmt:formatDate value="${now}" pattern="yyyy" var="currentYear" />
                    
                    <p class="copyright-text">
                        &copy; <c:out value="${currentYear}" />. All Rights Reserved. We are regulated by the Finance Conduct Authority.
                    </p>
                </div>
                <div class="col-md-4 text-end">
                    <img src="${pageContext.request.contextPath}/images/ae-white.png" alt="Small Logo" class="small-logo">
                </div>
            </div>
        </div>
    </footer>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/Footer.js"></script>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>