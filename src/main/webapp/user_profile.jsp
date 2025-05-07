<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="Model.User"%>

<%
    User usr = (User) request.getAttribute("user");
    if (usr == null) {
        response.sendRedirect("hero.jsp"); // Redirect if user is not found
    }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>

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
	href="${pageContext.request.contextPath}/css/pro.css">
</head>
<body>
	<!-- include header -->
	<jsp:include page="Header.jsp" />

	<!-- include top bar -->
	<jsp:include page="TopBar.jsp" />

	<div class="maincontainer">
		<div class="leftsect">
			<div class="floatsect">
				<div class="profileimg">
					<h2 class="usrname">Hello ${u_firstname}</h2>
					<img
						src="${pageContext.request.contextPath}/images/profilepics/${u_image}"
						alt="Profile Picture">
					<form
						action="${pageContext.request.contextPath}/ProPicUpdateServlet"
						method="POST" enctype="multipart/form-data">
						<input type="file" name="profilepic" id="profilepic"
							accept="image/*" required> <input type="submit">
					</form>


				</div>

			</div>
		</div>
		<div class="rightsect">
			<c:if test="${not empty Error}">
				<p id="error">${Error}</p>
			</c:if>

			<form id="profileForm" oninput="checkChanges()"
				action="${pageContext.request.contextPath}/updateUserServlet"
				method="POST">
				<div class="rowscontainer">
					<div class="rows doublerows">
						<div class="lableinput">
							<label for="">First Name</label> <input type="text" name="fname"
								value="${usr.u_firstname}">
						</div>
						<div class="lableinput">
							<label for="">Last Name</label> <input type="text" name="lname"
								value="${usr. u_lastname}">
						</div>
					</div>
					<div class="rows">
						<div class="lableinput singlerow">
							<label for="">Email</label> <input type="text" name="mail"
								value="${usr.u_email}">
						</div>
					</div>
					<div class="rows doublerows">
						<div class="lableinput">
							<label for="">password</label> <input type="tel" name="telno"
								value="${usr.u_password}">
						</div>

					</div>
					<hr>

					<div class="rows">
						<input class="submitbtn" type="submit" placeholder="Save Changes"
							value="Save Chages" id="submitBtn" disabled />
					</div>
				</div>
			</form>
			<form action="${pageContext.request.contextPath}/updatePwdServlet"
				method="POST">
				<div class="rowscontainer">
					<div class="rows singlerow">
						<div class="lableinput">
							<label for="">Old Password</label> <input type="password"
								name="oldpwd">
						</div>
					</div>
					<div class="rows singlerow">
						<div class="lableinput">
							<label for="">New Password</label> <input type="password"
								name="newpwd">
						</div>
					</div>
					<div class="rows singlerow">
						<div class="lableinput">
							<label for="">Confirm Password</label> <input type="password">
						</div>
					</div>
					<div class="rows">
						<input class="submitbtn" type="submit"
							placeholder="Change Password" value="Change Password">
					</div>
				</div>
			</form>
		</div>
	</div>




	<!-- include footer -->
	<jsp:include page="Footer.jsp" />

	<!-- Link bootstrap script file -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"
		defer></script>
</body>
</html>