<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <section class="p-5">
        <div class="container h-100">
            <div class="row justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card shadow" style="border-radius: 15px;">
                        <div class="card-body p-5">

                            <form id="regform" oninput="comparepwd()" action="${pageContext.request.contextPath}/registerUserServlet" method="POST">
                                <h2 class="text-uppercase text-center mb-5">Create an account</h2>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="firstName">First Name</label>
                                    <input type="text" name="u_firstname" id="firstName" class="form-control form-control-lg" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="lastName">Last Name</label>
                                    <input type="text" name="u_lastname" id="lastName" class="form-control form-control-lg" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="email">Your Email</label>
                                    <input type="email" name="u_email" id="email" class="form-control form-control-lg" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="password">Password</label>
                                    <input type="password" name="u_password" id="password" class="form-control form-control-lg" />
                                </div>

                                <div class="form-outline mb-4">
                                    <label class="form-label" for="confirmPassword">Confirm Password</label>
                                    <input type="password" name="confirmpassword" id="confirmPassword" class="form-control form-control-lg" />
                                </div>

                                <p class="error" id="jserror"></p>

                                <div class="radiobtns mb-3">
                                    <b>User Type :</b>
                                    <input type="radio" name="u_type" value="delivery_person" id="deliverRadio">
                                    <label for="deliverRadio">Delivery Person</label>
                                    <input type="radio" name="u_type" value="customer" id="customerRadio">
                                    <label for="customerRadio">Customer</label>
                                </div>

                                <div class="form-check d-flex justify-content-center mb-5">
                                    <input class="form-check-input me-2" type="checkbox" name="agreeTerms" id="agreeTerms" required />
                                    <label class="form-check-label" for="agreeTerms">
                                        I agree all statements in <a href="#!" class="text-body">Terms of service</a>
                                    </label>
                                </div>

                                <c:if test="${not empty RegisterError}">
                                    <p id="error">${RegisterError}</p>
                                </c:if>

                                <div class="d-flex justify-content-center b-login">
                                    <button type="submit" id="submitbtn" class="btn btn-button">Register</button>
                                </div>

                                <p class="text-center text-muted mt-5 mb-0">
                                    Already have an account? <a href="Login.jsp" class="fw-bold text-body">Login here</a>
                                </p>
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