<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Side bar</title>
    
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
                <i class='bi bi-x-circle' id='close-sidebar' title='Close Dashboard'></i>
    </div>
            <ul class='sidebar-menu'>
                <li><a href='./customer.php' title='Your Profile'><i class='bi bi-person-circle'></i> My Profile</a></li>
                <li><a href='./products.php' title='Browse Products'><i class='bi bi-box'></i> Products</a></li>
                <li><a href='./accSettings.php' title='Edit profile & Change password'><i class='bi bi-gear'></i> Settings</a></li>
                <li><a href='./logout.php' title='Logout'><i class='bi bi-door-open'></i> Logout</a></li>
            </ul>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/SideBar.js"></script>
    <script src="${pageContext.request.contextPath}/js/TopBar.js"></script>
</body>
</html>