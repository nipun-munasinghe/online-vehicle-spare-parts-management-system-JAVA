<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - AutoElite</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hero.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- Home Product page -->
     <section id="hero" class="min-vh-100 d-flex align-items-center text-center">
        <div class="d-flex justify-content-center align-items-center z-n1 position-absolute p-5  rounded-3 opacity-50">
            <img src="${pageContext.request.contextPath}/images/back-image.jpg" alt="background-image" class="b-image" >
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="text-uppercase fw-semibold display-1 text-white">Welcome to AutoElite</h1>
                    <p class="text-white">Find the best products for your car</p>
                    <div class="button">
                        <a href="${pageContext.request.contextPath}/displayProducts">
                            <button id="shop" type="button" class="btn btn-primary">Shop Now</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
     </section>
    
    


	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>