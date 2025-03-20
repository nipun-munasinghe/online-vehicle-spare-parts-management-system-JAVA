<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    
    <!-- products cards -->
      <!-- trending -->
      <div class="container py-2">
        <h1 class="text-center fw-300 text-uppercase text-white p-2 ">Trending Collections</h1>
        <div class="row row-cols-1 row-cols-md-5 g-4 py-5">

            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Airline Alloy Wheel</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/sus.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Suspensions</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/brakedisck.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Airline Brake Discks</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Rear Bumper</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Side view Mirrors</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
        </div>
    </div>   

    <!-- All products -->
    <div class="container py-5">
        <h1 class="text-center fw-300 text-uppercase text-white">Our Products</h1>
        <div class="row row-cols-1 row-cols-md-5 g-4 py-5">

            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Front Bumper</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/sus.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Bonnet</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/brakedisck.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Tail Light</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Head Light</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Brake pads</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Airline Alloy Wheel</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Suspension</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Clutches</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Cooling system</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/wheel.jpg" alt="background-image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">Seats</h5>
                      <p class="card-text text-center">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                      <h3 class="text-center">Rs.50 000</h3>
                      <a href="#" class="btn btn-primary-card1 d-flex justify-content-center">Add to cart</a>
                    </div>
                  </div>
            </div>
        </div>
    </div>
    


	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>