<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager Management</title>
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
		<!-- Action Message Display -->
		<c:if test="${not empty message}">
			<div class="alert alert-info alert-dismissible fade show">
				${message}
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
			</div>
		</c:if>

		<div class="row">
			<div class="col-12">

				<!-- Manager Action Section -->
				<h2 class="text-white">Manager Actions</h2>
				<div class="card p-4 mb-4">
					<form action="${pageContext.request.contextPath}/managerActions"
						method="post" class="d-flex flex-wrap gap-2" id="actionForm">
						<input type="email" class="form-control" name="managerEmail"
							placeholder="Enter manager email" required>
						<button type="submit" name="action" value="activate"
							class="btn btn-success action-btn">
							<i class="bi bi-check-circle-fill"></i> Activate
						</button>
						<button type="submit" name="action" value="deactivate"
							class="btn btn-primary action-btn">
							<i class="bi bi-exclamation-circle-fill"></i> Deactivate
						</button>
						<button type="submit" name="action" value="remove"
							class="btn btn-danger action-btn">
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
						<thead class="table-light">
							<tr>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Phone</th>
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
												class="badge ${manager.status eq 'Active' ?'bg-success' : 'bg-danger'} text-uppercase">
													${manager.status} </span></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5" class="text-center text-warning">No
											managers found in the system</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>

				<!-- Add Manager Modal -->
				<div class="modal fade" id="addManagerModal" tabindex="-1"
					aria-labelledby="addManagerModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content bg-dark text-white">
							<div class="modal-header border-0">
								<h5 class="modal-title" id="addManagerModalLabel">
									<i class="bi bi-person-plus-fill"></i> Register New Manager
								</h5>
								<button type="button" class="btn-close btn-close-white"
									data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<form action="${pageContext.request.contextPath}/managerServlet"
									method="post" id="managerForm">
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
										<input type="tel" class="form-control" name="phone"
											placeholder="Phone Number" pattern="[0-9]{10}" required>
									</div>
									<div class="mb-3">
										<input type="password" class="form-control" name="password"
											placeholder="Password" minlength="8" required>
									</div>
									<div class="mb-3">
										<select class="form-select" name="status" required>
											<option value="Active">Active</option>
											<option value="Inactive">Inactive</option>
										</select>
									</div>
									<button type="submit" class="btn btn-success w-100">
										<i class="bi bi-plus-circle-fill"></i> Register Manager
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script>
	// Action confirmation
	document.querySelectorAll('.action-btn').forEach(button => {
	  button.addEventListener('click', function(e) {
	    const action = this.value;
	    const messages = {
	      activate: "Are you sure you want to activate this manager?",
	      deactivate: "Are you sure you want to deactivate this manager?",
	      remove: "Are you sure you want to permanently delete this manager?"
	    };

	    if (!confirm(messages[action])) {
	      e.preventDefault();
	    }
	  });
	});


// Auto-close alert after 3 seconds
<script>
  window.setTimeout(function() {
    const alert = document.querySelector('.alert');
    if (alert) {
      alert.style.opacity = '0';
      setTimeout(() => alert.remove(), 500);
    }
  }, 3000);
</script>
</body>
</html>
