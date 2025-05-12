<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Account</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome for social icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/SignUp.css">

    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
</head>
<body>

    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <section class="p-5">
        <div class="container h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card shadow" style="border-radius: 15px;">
                        <div class="card-body p-5">

                            <h2 class="text-uppercase text-center mb-5">Create an account</h2>

                            <form action="${pageContext.request.contextPath}/registerUserServelet" method="POST" novalidate>

                                <div class="mb-3">
                                    <label for="u_firstname" class="form-label">First Name</label>
                                    <input type="text" class="form-control form-control-lg" id="u_firstname" name="u_firstname"
                                        value="${fn:escapeXml(u_firstname)}" required>
                                </div>

                                <div class="mb-3">
                                    <label for="u_lastname" class="form-label">Last Name</label>
                                    <input type="text" class="form-control form-control-lg" id="u_lastname" name="u_lastname"
                                        value="${fn:escapeXml(u_lastname)}" required>
                                </div>

                                <div class="mb-3">
                                    <label for="u_email" class="form-label">Your Email</label>
                                    <input type="email" class="form-control form-control-lg" id="u_email" name="u_email"
                                        value="${fn:escapeXml(u_email)}" required>
                                </div>

                                <div class="mb-3">
                                    <label for="u_password" class="form-label">Password</label>
                                    <input type="password" class="form-control form-control-lg" id="u_password" name="u_password" required>
                                </div>

                                <!-- User Type radios inline -->
                                <fieldset class="mb-3">
                                    <legend class="col-form-label fw-bold mb-2">User Type</legend>
                                    <div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="u_type" id="admin" value="admin"
                                                <c:if test="${u_type == 'admin'}">checked</c:if> required>
                                            <label class="form-check-label" for="admin">Admin</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="u_type" id="delivery_person" value="delivery_person"
                                                <c:if test="${u_type == 'delivery_person'}">checked</c:if>>
                                            <label class="form-check-label" for="delivery_person">Delivery Person</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="u_type" id="customer" value="customer"
                                                <c:if test="${u_type == 'customer'}">checked</c:if>>
                                            <label class="form-check-label" for="customer">Customer</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="u_type" id="manager" value="manager"
                                                <c:if test="${u_type == 'manager'}">checked</c:if>>
                                            <label class="form-check-label" for="manager">Manager</label>
                                        </div>
                                    </div>
                                </fieldset>

                                <div class="form-check mb-4 d-flex justify-content-center">
                                    <input class="form-check-input me-2" type="checkbox" id="terms" required>
                                    <label class="form-check-label" for="terms">
                                        I agree to all statements in <a href="#!" class="text-body">Terms of service</a>
                                    </label>
                                </div>

                                <c:if test="${not empty RegisterError}">
                                    <div class="alert alert-danger" role="alert" id="error">
                                        <c:out value="${RegisterError}" escapeXml="false"/>
                                    </div>
                                </c:if>

                                <div class="d-flex justify-content-center mb-3">
                                    <button type="submit" class="btn-register btn btn-lg">Register</button>
                                </div>

                                <!-- Social Sign Up Buttons -->
                                <div class="text-center mb-4">
                                    <p>Or sign up with</p>
                                    <div class="d-flex justify-content-center flex-wrap gap-3">
                                        <a href="#" class="btn btn-social btn-facebook" title="Sign up with Facebook">
                                            <i class="fab fa-facebook-f"></i> Facebook
                                        </a>
                                        <a href="#" class="btn btn-social btn-google" title="Sign up with Google">
                                            <i class="fab fa-google"></i> Google
                                        </a>
                                        <a href="#" class="btn btn-social btn-github" title="Sign up with GitHub">
                                            <i class="fab fa-github"></i> GitHub
                                        </a>
                                    </div>
                                </div>

                                <p class="text-center text-muted mt-4 mb-0">
                                    Already have an account?
                                    <a href="Login.jsp" class="fw-bold text-body">Login here</a>
                                </p>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="Footer.jsp"/>

    <!-- Bootstrap Bundle JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
