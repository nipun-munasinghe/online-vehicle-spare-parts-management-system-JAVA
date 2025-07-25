<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <section>
        <div class="container p-3 h-100 ">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col col-xl-10">
              <div class="card" style="border-radius: 1rem;">
                <div class="row g-0">
                  <div class="col-md-3 col-lg-5 d-none d-md-block">
                    <img src="${pageContext.request.contextPath}/images/logincar.jpg" alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                  </div>
                  <div class="col-md-6 col-lg-7 d-flex align-items-center">
                    <div class="card-body p-4 p-lg-5 text-black">

                      <% String errorMsg = (String)request.getAttribute("loginError"); %>
                      <% if (errorMsg != null) { %>
                        <div class="alert alert-danger" role="alert">
                          <%= errorMsg %>
                        </div>
                      <% } %>

                      <form action="${pageContext.request.contextPath}/LoginServlet" method="POST">
                        <div class="d-flex align-items-center mb-3 pb-1 logo">
                          <span class="h1 fw-bold mb-0">AutoElite</span>
                        </div>
                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>
                        <div data-mdb-input-init class="form-outline mb-4">
                          <input type="email" name="u_email" id="form2Example17" class="form-control form-control-lg" required />
                          <label class="form-label" for="form2Example17">Email address</label>
                        </div>
                        <div data-mdb-input-init class="form-outline mb-4">
                          <input type="password" name="u_password" id="form2Example27" class="form-control form-control-lg" required />
                          <label class="form-label" for="form2Example27">Password</label>
                        </div>
                        <div class="pt-1 mb-4 b-login">
                          <button class="btn btn-primary" type="submit">Login</button>
                        </div>
                        <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="${pageContext.request.contextPath}/SignUp.jsp"
                            style="color: #393f81;">Register here</a></p>
                      </form>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

    <jsp:include page="Footer.jsp"/>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>