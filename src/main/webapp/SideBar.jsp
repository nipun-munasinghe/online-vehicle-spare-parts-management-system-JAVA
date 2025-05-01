<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Common JSP file</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/SideBar.css">
</head>
<body>
	<div class='sidebar-header'>
                <h2>Customer Dashboard</h2>
                <i class='fas fa-times' id='close-sidebar' title='Close Dashboard'></i>
    </div>
            <ul class='sidebar-menu'>
                <li><a href='./customer.php' title='Your Profile'><i class='fa-solid fa-user'></i> My Profile</a></li>
                <li><a href='./products.php' title='Browse Products'><i class='fas fa-box-open'></i> Products</a></li>
                <li><a href='./accSettings.php' title='Edit profile & Change password'><i class='fas fa-cog'></i> Settings</a></li>
                <li><a href='./logout.php' title='Logout'><i class='fas fa-sign-out-alt'></i> Logout</a></li>
            </ul>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/SideBar.js"></script>
    <script src="${pageContext.request.contextPath}/js/TopBar.js"></script>
</body>
</html>