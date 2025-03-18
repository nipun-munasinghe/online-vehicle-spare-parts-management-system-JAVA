<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product JSP file</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <jsp:include page="TopBar.jsp"/>

    <!-- Home Product page -->

    <div class="image-container">
        <img src="${pageContext.request.contextPath}/images/b-image.jpg" alt="Company Logo" class="b-image" >
        <h1 class="text-overlayer">Welcome to AutoElight</h1>
        <div class="button-row">
            <button class="circle-button">Button 1</button>
            <button class="circle-button">Button 2</button>
            <button class="circle-button">Button 3</button>
            <button class="circle-button">Button 4</button>
            <button class="circle-button">Button 5</button>
        </div>
    </div>
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>