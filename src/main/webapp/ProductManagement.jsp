<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Management</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">

      <!--=============== SWIPER CSS ===============-->
      <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper-bundle.min.css">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ProductManagement.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <h1 class="text-center firstH1 mb-5">Product Management</h1>
    
    <!-- Search and Add Product Section -->
	<section class="d-flex justify-content-center mb-4">
	    <div class="row">
	        <div class="col-12 d-flex justify-content-center align-items-center gap-3">
	            <div class="input-group search-input-group">
	                <input type="text" id="searchInput" class="form-control" placeholder="Search by product name or ID...">
	                <button class="btn btn-primary normalBtn search-btn" type="button" id="searchButton">
	                    <i class="bi bi-search"></i> Search
	                </button>
	            </div>
	            <button class="btn btn-success normalBtn add-btn" id="addProductBtn">
	                <i class="bi bi-plus"></i> New Product
	            </button>
	        </div>
	    </div>
	</section>
    
    <!-- Card Carousel Section -->
    <section class="cc-container">
         <div class="card__container swiper">
            <div class="card__content">
               <div class="swiper-wrapper">
                  <article class="card__article swiper-slide">
                     <div class="card__image">
                        <img src="${pageContext.request.contextPath}/images/products/garrett-turbo.png" alt="image" class="card__img">
                        <div class="card__shadow"></div>
                     </div>
      
                     <div class="card__data">
                        <h3 class="card__name">Garrett Turbocharger</h3>
                        <p class="card__description">ID: 005</p>
                        <p class="card__description">Quantity: 80</p>
                        <p class="card__price">Rs.213,000.00</p>
      					<div class="column d-flex gap-2">
      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
      						<a href="#" class="card__button normalBtn">View More</a>
      					</div>
                     </div>
                  </article>
      
                  <article class="card__article swiper-slide">
                     <div class="card__image">
                        <img src="${pageContext.request.contextPath}/images/products/ruff-rims.png" alt="image" class="card__img">
                        <div class="card__shadow"></div>
                     </div>
      
                     <div class="card__data">
                        <h3 class="card__name">Ruff Rim Set (4)</h3>
                        <p class="card__description">ID: 004</p>
                        <p class="card__description">Quantity: 96</p>
                        <p class="card__price">Rs.152,000.00</p>
      					<div class="column d-flex gap-2">
      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
      						<a href="#" class="card__button normalBtn">View More</a>
      					</div>
                     </div>
                  </article>
                  
                  <article class="card__article swiper-slide">
                     <div class="card__image">
                        <img src="${pageContext.request.contextPath}/images/products/nitrus.png" alt="image" class="card__img">
                        <div class="card__shadow"></div>
                     </div>
      
                     <div class="card__data">
                        <h3 class="card__name">NOS Cylinder</h3>
                        <p class="card__description">ID: 003</p>
                        <p class="card__description">Quantity: 28</p>
                        <p class="card__price">Rs.287,000.00</p>
      					<div class="column d-flex gap-2">
      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
      						<a href="#" class="card__button normalBtn">View More</a>
      					</div>
                     </div>
                  </article>
                  
                  <article class="card__article swiper-slide">
                     <div class="card__image">
                        <img src="${pageContext.request.contextPath}/images/products/brembo.png" alt="image" class="card__img">
                        <div class="card__shadow"></div>
                     </div>
      
                     <div class="card__data">
                        <h3 class="card__name">Brembo Brake Pads</h3>
                        <p class="card__description">ID: 002</p>
                        <p class="card__description">Quantity: 108</p>
                        <p class="card__price">Rs.78,000.00</p>
      					<div class="column d-flex gap-2">
      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
      						<a href="#" class="card__button normalBtn">View More</a>
      					</div>
                     </div>
                  </article>
                  
                  <article class="card__article swiper-slide">
                     <div class="card__image">
                        <img src="${pageContext.request.contextPath}/images/products/spoiler.png" alt="image" class="card__img">
                        <div class="card__shadow"></div>
                     </div>
      
                     <div class="card__data">
                        <h3 class="card__name">Carbon Fibre Spoiler</h3>
                        <p class="card__description">ID: 001</p>
                        <p class="card__description">Quantity: 12</p>
                        <p class="card__price">Rs.190,000.00</p>
      					<div class="column d-flex gap-2">
      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
      						<a href="#" class="card__button normalBtn">View More</a>
      					</div>
                     </div>
                  </article>
               </div>
            </div>

            <!-- Navigation buttons -->
            <div class="swiper-button-next">
               <i class="bi bi-chevron-compact-right"></i>
            </div>
            <div class="swiper-button-prev">
               <i class="bi bi-chevron-compact-left"></i>
            </div>

            <!-- Pagination -->
            <div class="swiper-pagination"></div>
         </div>
    </section>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link swiper js script file -->
    <script src="${pageContext.request.contextPath}/js/swiper-bundle.min.js"></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/ProductManagement.js"></script>
</body>
</html>