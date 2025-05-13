<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
		<c:if test="${UserType == 'customer'}">
			<h2>Customer Dashboard</h2>
		</c:if>
		<c:if test="${UserType == 'admin'}">
			<h2>Administrator Dashboard</h2>
		</c:if>
		<c:if test="${UserType == 'manager'}">
			<h2>Manager Dashboard</h2>
		</c:if>
		<c:if test="${UserType == 'delivery_person'}">
			<h2>Delivery Person Dashboard</h2>
		</c:if>
        <i class='bi bi-x-circle' id='close-sidebar' title='Close Dashboard'></i>
    </div>
        
	<ul class='sidebar-menu'>
		<c:if test="${UserType == 'customer'}">
			<li><a href='${pageContext.request.contextPath}/myProfileServelet'><i class='bi bi-person-circle'></i> My Profile</a></li>
			<li><a href='${pageContext.request.contextPath}/OrderDetailsServlet'><i class='bi bi-grid-3x2-gap'></i> My Orders</a></li>
			<li><a href='${pageContext.request.contextPath}/displayProducts'><i class='bi bi-box'></i> Products</a></li>
			<li><a href='${pageContext.request.contextPath}/logout'><i class='bi bi-door-open'></i> Logout</a></li>
		</c:if>
		<c:if test="${UserType == 'manager'}">
			<li><a href='${pageContext.request.contextPath}/myProfileServelet'><i class='bi bi-person-circle'></i> My Profile</a></li>
			<li><a href='${pageContext.request.contextPath}/messageList'><i class='bi bi-chat-text'></i> Messages</a></li>
			<li><a href='${pageContext.request.contextPath}/OrderDetailsServlet'><i class='bi bi-grid-3x2-gap'></i> My Orders</a></li>
			<li><a href='${pageContext.request.contextPath}/products'><i class='bi bi-collection'></i> Manage Products</a></li>
			<li><a href='${pageContext.request.contextPath}/displayProducts'><i class='bi bi-box'></i> Products</a></li>
			<li><a href='${pageContext.request.contextPath}/logout'><i class='bi bi-door-open'></i> Logout</a></li>
		</c:if>
		<c:if test="${UserType == 'admin'}">
			<li><a href='${pageContext.request.contextPath}/myProfileServelet'><i class='bi bi-person-circle'></i> My Profile</a></li>
			<li><a href='${pageContext.request.contextPath}/managerList'><i class='bi bi-person-plus'></i> Mangers</a></li>
			<li><a href='${pageContext.request.contextPath}/messageList'><i class='bi bi-chat-text'></i> Messages</a></li>
			<li><a href='${pageContext.request.contextPath}/OrderDetailsServlet'><i class='bi bi-grid-3x2-gap'></i> My Orders</a></li>
			<li><a href='${pageContext.request.contextPath}/products'><i class='bi bi-collection'></i> Manage Products</a></li>
			<li><a href='${pageContext.request.contextPath}/displayProducts'><i class='bi bi-box'></i> Products</a></li>
			<li><a href='${pageContext.request.contextPath}/logout'><i class='bi bi-door-open'></i> Logout</a></li>
		</c:if>
		<c:if test="${UserType == 'delivery_person'}">
			<li><a href='${pageContext.request.contextPath}/myProfileServelet'><i class='bi bi-person-circle'></i> My Profile</a></li>
			<li><a href='${pageContext.request.contextPath}/dilivary_details.jsp'><i class='bi bi-truck'></i> Deliveries</a></li>
			<li><a href='${pageContext.request.contextPath}/displayProducts'><i class='bi bi-box'></i> Products</a></li>
			<li><a href='${pageContext.request.contextPath}/logout'><i class='bi bi-door-open'></i> Logout</a></li>
		</c:if>
	</ul>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/SideBar.js"></script>
    <script src="${pageContext.request.contextPath}/js/TopBar.js"></script>
</body>
</html>