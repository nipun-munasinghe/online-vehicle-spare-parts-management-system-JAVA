<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="Model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/user_profile.css">
</head>
<body>
	<jsp:include page="Header.jsp" />
	<jsp:include page="TopBar.jsp" />

	<div class="container py-5">

		<!-- Success/Error Messages -->
		<c:if test="${not empty param.message}">
			<div class="alert alert-danger">${param.message}</div>
		</c:if>
		<c:if test="${not empty param.success}">
			<div class="alert alert-success">${param.success}</div>
		</c:if>

		<div class="profile-main-container">
			<!-- Left: Profile Photo Card -->
			<div class="profile-card shadow-sm">
				<c:choose>
					<c:when test="${not empty user.u_image}">
						<img
							src="${pageContext.request.contextPath}/images/profilepics/${user.u_image}"
							class="profile-img" alt="Profile Picture">
					</c:when>
					<c:otherwise>
						<div class="profile-img-placeholder">
							<i class="bi bi-person"></i>
						</div>
					</c:otherwise>
				</c:choose>
				<h2>
					<i class="bi bi-person-circle me-2"></i> ${user.u_firstname}
					${user.u_lastname}
				</h2>
				<form
					action="${pageContext.request.contextPath}/ProPicUpdateServlet"
					method="POST" enctype="multipart/form-data">
					<div class="mb-3">
						<label class="form-label" for="profilepic"><i
							class="bi bi-camera me-2"></i>Change Photo</label> <input type="file"
							id="profilepic" name="profilepic" class="form-control"
							accept="image/*" required>
					</div>
					<button type="submit" class="btn btn-outline-light w-100">
						<i class="bi bi-upload me-2"></i>Update Photo
					</button>
				</form>
			</div>

			<!-- Right: Manage Side (Change Details and Password) -->
			<div class="manage-side">
				<!-- Change Details Card -->
				<div class="details-card shadow-sm mb-4">
					<h4>
						<i class="bi bi-pencil-square"></i> Change Details
					</h4>
					<!-- Delete Account Button (top-right corner of details card) -->
					<button type="button" class="delete-btn-details"
						data-bs-toggle="modal" data-bs-target="#deleteModal"
						title="Delete my account">
						<i class="bi bi-trash3"></i>
					</button>
					<form id="profileForm"
						action="${pageContext.request.contextPath}/updateUserServlet"
						method="POST">
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-person me-2"></i>First
								Name</label> <input type="text" name="u_firstname" class="form-control"
								value="${user.u_firstname}" required>
						</div>
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-person me-2"></i>Last
								Name</label> <input type="text" name="u_lastname" class="form-control"
								value="${user.u_lastname}" required>
						</div>
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-envelope me-2"></i>Email</label>
							<input type="email" name="u_email" class="form-control"
								value="${user.u_email}" required>
						</div>
						<div class="mb-3">
							<label class="form-label"><i
								class="bi bi-shield-lock me-2"></i>Password</label> <input
								type="password" class="form-control" value="${user.u_password}"
								readonly>
						</div>
						<button type="submit" class="btn btn-success w-100">
							<i class="bi bi-save me-2"></i>Save Changes
						</button>
					</form>
				</div>

				<!-- Change Password Card -->
				<div class="password-card shadow-sm">
					<h4>
						<i class="bi bi-shield-lock"></i> Change Password
					</h4>
					<form action="${pageContext.request.contextPath}/updatePwdServlet"
						method="POST">
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-key me-2"></i>Old
								Password</label> <input type="password" name="oldpwd"
								class="form-control" required>
						</div>
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-key-fill me-2"></i>New
								Password</label> <input type="password" name="newpwd"
								class="form-control" required>
						</div>
						<div class="mb-3">
							<label class="form-label"><i class="bi bi-key-fill me-2"></i>Confirm
								Password</label> <input type="password" name="confirmpwd"
								class="form-control" required>
						</div>
						<button type="submit" class="btn btn-warning w-100">
							<i class="bi bi-arrow-repeat me-2"></i>Update Password
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Delete Confirmation Modal -->
	<div class="modal fade" id="deleteModal" tabindex="-1"
		aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content bg-white text-dark">
				<form action="${pageContext.request.contextPath}/deleteUserServlet"
					method="POST">
					<div class="modal-header bg-danger text-white">
						<h5 class="modal-title" id="deleteModalLabel">
							<i class="bi bi-trash3 me-2"></i>Delete Account
						</h5>
						<button type="button" class="btn-close btn-close-white"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p>
							Are you sure you want to <span class="fw-bold text-danger">delete
								your account</span>?<br> This action is <span class="fw-bold">permanent</span>
							and cannot be undone.<br> Please type your User ID (<strong>${userid}</strong>)
							to confirm.
						</p>
						<input type="text" id="confirmUserId" class="form-control"
							placeholder="Enter User ID" required> <input
							type="hidden" name="usrid" value="${userid}"> <input
							type="hidden" name="from" value="myprofile">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline-secondary"
							data-bs-dismiss="modal">Cancel</button>
						<button type="submit" class="btn btn-danger" id="deleteBtn"
							disabled>
							<i class="bi bi-trash3 me-2"></i>Yes, Delete My Account
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="Footer.jsp" />
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
	<script>
		// Enable delete button only if User ID matches
		document.getElementById('confirmUserId').addEventListener(
				'input',
				function() {
					document.getElementById('deleteBtn').disabled = (this.value
							.trim() !== "${userid}");
				});
	</script>
</body>
</html>
