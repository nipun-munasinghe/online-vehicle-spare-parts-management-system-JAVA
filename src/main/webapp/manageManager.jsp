<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Manager</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/common.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/addManager.css">
</head>
<body>

	<jsp:include page="Header.jsp" />
	<jsp:include page="TopBar.jsp" />

	<div class="container mt-5">
		<div class="row">
			<div class="col-12">

				<!-- Manager Action Section -->
				<h2 class="text-white">Check, Activate, Deactivate, and Remove
					Managers</h2>
				<div class="card p-4 mb-4">
					<form action="${pageContext.request.contextPath}/AddManager"
						method="post" class="d-flex flex-wrap gap-2">
						<input type="email" class="form-control" name="managerEmail"
							placeholder="Enter an email to check" required>
						<button type="submit" name="action" value="activate"
							class="btn btn-success">
							<i class="bi bi-check-circle-fill"></i> Activate
						</button>
						<button type="submit" name="action" value="deactivate"
							class="btn btn-primary">
							<i class="bi bi-exclamation-circle-fill"></i> Deactivate
						</button>
						<button type="submit" name="action" value="remove"
							class="btn btn-danger">
							<i class="bi bi-x-circle-fill"></i> Remove
						</button>
					</form>
				</div>

				<!-- Manager List Table -->
				<div class="d-flex justify-content-between align-items-center mb-2">
					<h2 class="text-white">Manager List</h2>
					<button class="btn btn-success" data-bs-toggle="modal"
						data-bs-target="#addManagerModal">
						<i class="bi bi-person-plus-fill"></i> Add Manager
					</button>
				</div>

				<div class="table-responsive">
					<table class="table table-dark table-bordered">
						<thead>
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Phone Number</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${not empty managerList}">
									<c:forEach items="${managerList}" var="manager">
										<tr>
											<td>${manager.firstName}</td>
											<td>${manager.lastName}</td>
											<td>${manager.email}</td>
											<td>${manager.phoneNumber}</td>
											<td><span
												class="badge ${manager.status eq 'Active' ? 
                                    'bg-success' : 'bg-danger'}">
													${manager.status} </span></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5" class="text-center">No managers found</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
				<!-- Modal -->
				<div class="modal fade" id="addManagerModal" tabindex="-1"
					aria-labelledby="addManagerModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content bg-dark text-white">
							<div class="modal-header border-0">
								<h5 class="modal-title" id="addManagerModalLabel">
									<i class="bi bi-person-plus-fill"></i> Add Manager
								</h5>
								<button type="button" class="btn-close btn-close-white"
									data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">

								<form action="managerServlet" method="post">
									<div class="mb-3">
										<input type="text" class="form-control" name="firstName"
											placeholder="First Name" required>
									</div>
									<div class="mb-3">
										<input type="text" class="form-control" name="lastName"
											placeholder="Last Name" required>
									</div>
									<div class="mb-3">
										<input type="email" class="form-control" name="email"
											placeholder="Email" required>
									</div>
									<div class="mb-3">
										<input type="text" class="form-control" name="phone"
											placeholder="Phone Number" required>
									</div>
									<div class="mb-3">
										<input type="password" class="form-control" name="password"
											placeholder="Password" required>
									</div>
									<div class="mb-3">
										<input type="text" class="form-control" name="status"
											placeholder="Active/Inactive">
									</div>
									<button type="submit" class="btn btn-success w-100">
										<i class="bi bi-plus-circle-fill"></i> Add Manager
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
