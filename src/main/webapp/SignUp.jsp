<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Create Account</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/SignUp.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/register.js"></script>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<jsp:include page="TopBar.jsp" />

	<section class="p-5">
		<div class="container h-100">
			<div class="row justify-content-center align-items-center h-100">
				<div class="col-12 col-md-9 col-lg-7 col-xl-6">
					<div class="card shadow" style="border-radius: 15px;">
						<div class="card-body p-5">

							<!-- Success Message -->
							<c:if test="${not empty RegisterSuccess}">
								<div class="alert alert-success text-center" role="alert">
									${RegisterSuccess}</div>
							</c:if>
							<!-- Error Message -->
							<c:if test="${not empty RegisterError}">
								<div class="alert alert-danger text-center" role="alert">
									${RegisterError}</div>
							</c:if>

							<form id="regform"
								action="${pageContext.request.contextPath}/registerUserServelet"
								method="POST">
								<h2 class="text-uppercase text-center mb-5">Create an
									account</h2>
								<div class="form-outline mb-4">
									<label class="form-label" for="u_firstname">First Name</label>
									<input type="text" name="u_firstname" id="u_firstname"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="u_lastname">Last Name</label> <input
										type="text" name="u_lastname" id="u_lastname"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="u_email">Your Email</label> <input
										type="email" name="u_email" id="u_email"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="u_password">Password</label> <input
										type="password" name="u_password" id="u_password"
										class="form-control form-control-lg" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="confirmpassword">Confirm
										Password</label> <input type="password" name="confirmpassword"
										id="confirmpassword" class="form-control form-control-lg" />
								</div>
								<p class="error" id="jserror"></p>
								<div class="radiobtns mb-3">
									<b>User Type :</b> <input type="radio" name="u_type"
										value="admin" required> admin <input type="radio"
										name="u_type" value="delivery_person">delivery_person
									<input type="radio" name="u_type" value="customer">customer
									<input type="radio" name="u_type" value="manager">manager
								</div>
								<div class="form-check d-flex justify-content-center mb-5">
									<input class="form-check-input me-2" type="checkbox" value=""
										id="form2Example3cg" /> <label class="form-check-label"
										for="form2Example3cg"> I agree all statements in <a
										href="#!" class="text-body">Terms of service</a>
									</label>
								</div>
								<div class="d-flex justify-content-center b-login">
									<button type="submit" id="submitbtn" class="btn btn-button">Register</button>
								</div>
								<p class="text-center text-muted mt-5 mb-0">
									Have already an account? <a href="#!" class="fw-bold text-body">Login
										here</a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="Footer.jsp" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		defer></script>
</body>
</html>
