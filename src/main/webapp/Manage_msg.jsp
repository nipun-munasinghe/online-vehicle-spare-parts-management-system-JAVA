<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Messages</title>

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
	href="${pageContext.request.contextPath}/css/common.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/manage_msg.css">

</head>
<body>

	<!-- Include Header and Top Bar -->
	<jsp:include page="Header.jsp" />
	<jsp:include page="TopBar.jsp" />

	<div class="container mt-5">
		<h2 class="text-white">Manage Messages</h2>

		<!-- Messages Table -->
		<div class="table-responsive">
			<table class="table table-dark table-bordered text-center">
				<thead>
					<tr>
						<th>Message ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Message</th>
						<th>Status</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>01</td>
						<td>Kasun Perera</td>
						<td>kasun.perera@gmail.lk</td>
						<td>Need help with my account.</td>
						<td><span class="badge bg-warning">Pending</span></td>
						<td>
							<button class="btn btn-success btn-sm">
								<i class="bi bi-check-circle"></i> Mark as Read
							</button>
						</td>
					</tr>
					<tr>
						<td>02</td>
						<td>Thilini Silva</td>
						<td>thilini.silva@example.lk</td>
						<td>Requesting transaction details.</td>
						<td><span class="badge bg-success">Resolved</span></td>
						<td>
							<button class="btn btn-secondary btn-sm" disabled>
								<i class="bi bi-check-circle"></i> Resolved
							</button>
						</td>
					</tr>
					<tr>
						<td>03</td>
						<td>Amal Fernando</td>
						<td>amal.fernando@example.lk</td>
						<td>Issue with login credentials.</td>
						<td><span class="badge bg-danger">Unresolved</span></td>
						<td>
							<button class="btn btn-success btn-sm">
								<i class="bi bi-check-circle"></i> Mark as Read
							</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

	<!-- Bootstrap JavaScript -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>



	<!-- Link bootstrap script file -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"
		defer></script>
</body>
</html>