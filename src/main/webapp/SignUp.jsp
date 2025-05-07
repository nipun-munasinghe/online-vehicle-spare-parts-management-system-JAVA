<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Common JSP file</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/SignUp.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <!-- Signup Form -->
    <section class="p-5">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form  action="${pageContext.request.contextPath}/registerUserServelet" method="POST">

                <div data-mdb-input-init class="form-outline mb-4">
                  <label class="form-label" for="form3Example1cg">First Name</label>
                  <input type="text" name="u_firstname" id="form3Example1cg" class="form-control form-control-lg" />
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <label class="form-label" for="form3Example1cg">Last Name</label>
                    <input type="text" name="u_lastname" id="form3Example1cg" class="form-control form-control-lg" />
                  </div>

                <div data-mdb-input-init class="form-outline mb-4">
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                  <input type="email"  name="u_email" id="form3Example3cg" class="form-control form-control-lg" />
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cg">Password</label>
                  <input type="password" name="u_password" id="form3Example4cg" class="form-control form-control-lg" />
                </div>

               <div class="radiobtns">
						<b>User Type :</b>
						<input type="radio" name="u_type" value="admin" required> admin
						<input type="radio" name="u_type" value="delivery_person">delivery_person
						<input type="radio" name="u_type" value="customer">customer
			            <input type="radio" name="u_type" value="manager">manager
						
				</div>
				
				
				<br>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body">Terms of service</a>
                  </label>
                </div>
                
                <c:if test="${not empty RegisterError}">
                    <p id="error">${RegisterError}</p>
                </c:if>

                <div class="d-flex justify-content-center b-login">
                  <button  type="submit" class="btn btn-button">Register</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="#!"
                    class="fw-bold text-body">Login here</a></p>

              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    


	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>