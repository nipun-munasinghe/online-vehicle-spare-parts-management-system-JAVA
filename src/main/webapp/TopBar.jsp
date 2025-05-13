<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Top Bar</title>

<!-- Link bootstrap style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- Link bootstrap icons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-icons.css">

<!-- Favicon -->
<link rel="icon"
	href="${pageContext.request.contextPath}/images/favicon.ico"
	type="image/x-icon">

<!-- Link style sheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/TopBar.css">
</head>
<body>
	<!-- Hidden Sidebar -->
	<aside id="sidebar" class="sidebar ">
		<jsp:include page="SideBar.jsp" />
	</aside>

	<nav class="custom-navbar custom-navbar-expand-md topbar my-4 mx-2">
		<div class="container-fluid navbar-div">
			<i class="bi bi-list" id="toggle-sidebar" title="Open Dashboard"></i>
			<h1 class="custom-navbar-brand mb-0">Welcome
				${user.u_firstname}!</h1>
			<c:if test="${empty userid}">
				<h1 class="custom-navbar-brand mb-0">Welcome !</h1>
			</c:if>
			<c:if test="${not empty userid}">
				<h1 class="custom-navbar-brand mb-0">Welcome ${Fname} !</h1>
			</c:if>

		</div>
	</nav>

	<!-- Link bootstrap script file -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"
		defer></script>

	<!-- Link script file -->
	<script src="${pageContext.request.contextPath}/js/SideBar.js"></script>
</body>
</html>
