<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Top Bar</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/TopBar.css">
</head>
<body>
    <nav class="navbar navbar-expand-md topbar">
        <div class="container-fluid">
            <i class="bi bi-list" id="toggle-sidebar" title="Open Dashboard"></i>
            <h1 class="navbar-brand mb-0">Welcome UserName!</h1>
            
            <div class="collapse navbar-collapse" id="navbarContent">
                <ul class="navbar-nav ms-auto mb-2 mb-md-0">
                    <!-- Add navigation items here if needed -->
                    <li></li>
                </ul>
            </div>
        </div>
    </nav>
	
    <!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/TopBar.js"></script>
</body>
</html>
