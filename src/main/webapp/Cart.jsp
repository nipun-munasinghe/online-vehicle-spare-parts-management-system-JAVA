<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Cart.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <!-- Cart Page -->
    <section class="h-100 h-custom">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
              <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                <div class="card-body p-0">
                  <div class="row g-0">
                    <div class="col-lg-8">
                      <div class="p-5">
                        <div class="d-flex justify-content-between align-items-center mb-5">
                          <h1 class="fw-bold mb-0">Shopping Cart</h1>
                          <h6 class="mb-0 text-muted">3 items</h6>
                        </div>
                        <hr class="my-4">
      
                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                          <div class="col-md-2 col-lg-2 col-xl-2">
                            <img src="${pageContext.request.contextPath}/images/wheel.jpg"class="img-fluid rounded-3" alt="Cotton T-shirt">
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-3">
                            <h6 class="text-muted">AirLine Alloy Wheel</h6>
                            <h6 class="mb-0">Alloy Wheel</h6>
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                            <input id="form1" min="0" name="quantity" value="1" type="number"class="form-control form-control-sm" />
                          </div>
                          <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                            <h6 class="mb-0">€ 44.00</h6>
                          </div>
                           <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                            <form action="${pageContext.request.contextPath}/RemoveFromCartServlet" method="post">
                              <input type="hidden" name="productId" value="wheel">
                              <button type="submit" class="btn btn-link text-muted">
                                  <i class="bi bi-x-lg"></i>
                              </button>
                            </form>
                          </div>
                        </div>
      
                        <hr class="my-4">
      
                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                          <div class="col-md-2 col-lg-2 col-xl-2">
                            <img src="${pageContext.request.contextPath}/images/sus.jpg"class="img-fluid rounded-3" alt="Cotton T-shirt">
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-3">
                            <h6 class="text-muted">Suspension</h6>
                            <h6 class="mb-0">Suspension</h6>
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                            <input id="form1" min="0" name="quantity" value="1" type="number"class="form-control form-control-sm" />
                          </div>
                          <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                            <h6 class="mb-0">Rs. 44.00</h6>
                          </div>
                             <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                            <form action="${pageContext.request.contextPath}/RemoveFromCartServlet" method="post">
                              <input type="hidden" name="productId" value="wheel">
                              <button type="submit" class="btn btn-link text-muted">
                                  <i class="bi bi-x-lg"></i>
                              </button>
                            </form>
                          </div>
                        </div>
      
                        <hr class="my-4">
      
                        <div class="row mb-4 d-flex justify-content-between align-items-center">
                          <div class="col-md-2 col-lg-2 col-xl-2">
                            <img src="${pageContext.request.contextPath}/images/brakedisck.jpg"class="img-fluid rounded-3" alt="Cotton T-shirt">
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-3">
                            <h6 class="text-muted">Airline Brake Discks</h6>
                            <h6 class="mb-0">Brake Discks</h6>
                          </div>
                          <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                            <input id="form1" min="0" name="quantity" value="1" type="number"class="form-control form-control-sm" />
                          </div>
                          <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                            <h6 class="mb-0">€ 44.00</h6>
                          </div>
                            <div class="col-md-1 col-lg-1 col-xl-1 text-end">
                            <form action="${pageContext.request.contextPath}/RemoveFromCartServlet" method="post">
                              <input type="hidden" name="productId" value="wheel">
                              <button type="submit" class="btn btn-link text-muted">
                                  <i class="bi bi-x-lg"></i>
                              </button>
                            </form>
                          </div>
                        </div>
                        <hr class="my-4">
                        <!-- Back to shop -->
                        <div class="pt-3">
                            <a href="${pageContext.request.contextPath}/products.jsp">
                            <button type="button" id="btnstyle" class="btn btn-primary custom-button">Back to Shop</button>
                        </a>
                        </div>
                      </div>
                    </div>
                    <!-- Summary -->
                    <div class="col-lg-4 bg-body-tertiary"style="border-radius: 15px;">
                      <div class="p-5">
                        <h3 class="fw-bold mb-5 mt-2 pt-1">Summary</h3>
                        <hr class="my-4">
      
                        <div class="d-flex justify-content-between mb-4">
                          <h5 class="text-uppercase">items 3</h5>
                          <h5>€ 132.00</h5>
                        </div>
                        <div class="d-flex justify-content-between mb-4">
                            <h5 class="text-uppercase">Shipping</h5>
                            <h5>Rs. 13.00</h5>
                          </div>
                        <div class="d-flex justify-content-between mb-4">
                          <h5 class="text-uppercase">Discount</h5>
                          <h5>Rs. 13.00</h5>
                        </div>
                        <div class="d-flex justify-content-between mb-4">
                          <h5 class="text-uppercase">Total price</h5>
                          <h5>Rs. 13700.00</h5>
                        </div>
                        <!-- Payment Page -->
                        <div class="pt-3">
                          <a href="${pageContext.request.contextPath}/Payment.jsp">
                        <button type="button"class="btn btn-primary custom-button">Check Out</button>
                      </a>
                        </div>
                    </div>
                  </div>
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