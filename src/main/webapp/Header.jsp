<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navigation bar</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Header.css">
</head>
<body>
    <section class="nav-section">
        <div class="container-nav">
            <nav>
                <div class="navbar-widget">
                    <ul class="navbar">
                        <li class="nav-item"><a href="${pageContext.request.contextPath}">Shop</a></li>
                        <li class="nav-item"><a href="#">About</a></li>
                        <li class="nav-item"><a href="#">Contact</a></li>
                        <li class="separator">|</li>
                        <li class="nav-item signin-btn"><a href="#">Login</a></li>
                        <li class="nav-item signup-btn"><a href="#">Register</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </section>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>