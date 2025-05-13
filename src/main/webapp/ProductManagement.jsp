<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    
    <!-- Search and Add Product button Section -->
	<section class="mb-4">
	    <div class="container">
	        <div class="searchNadd d-flex flex-column flex-sm-row gap-2 gap-sm-3">
	            <div class="flex-grow-1 order-xs-2 order-sm-1">
	                <div class="input-group">
	                    <input type="text" id="searchInput" class="form-control" placeholder="Search by product name or ID...">
	                    <button class="btn btn-primary normalBtn search-btn" type="button" id="searchButton">
	                        <i class="bi bi-search"></i> <span>Search</span>
	                    </button>
	                </div>
	            </div>
	            <div class="order-xs-1 order-sm-2">
	                <button class="btn btn-success normalBtn add-btn w-100 w-sm-auto" id="addProductBtn">
	                    <i class="bi bi-plus"></i> Add Product
	                </button>
	            </div>
	        </div>
	    </div>
	</section>
	
	<!-- Add Product form Section -->
	<section>
	    <div class="modal fade" id="addProductModal" tabindex="-1" aria-hidden="true">
	        <div class="modal-dialog modal-lg modal-dialog-centered">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h5 class="modal-title">Add New Product</h5>
	                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                </div>
	                
	                <div class="modal-body">
	                    <form id="123addProductForm" action="${pageContext.request.contextPath}/addProduct" method="POST" enctype="multipart/form-data">
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="productName" name="productName" placeholder="Product Name" required>
	                            <label for="productName">Product Name</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="productCategory" name="productCategory" placeholder="Product Category">
	                            <label for="productCategory">Product Category</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <textarea class="form-control" id="productDescription" name="productDescription" placeholder="Description" style="height: 100px" required></textarea>
	                            <label for="productDescription">Description</label>
	                        </div>
	                        <div class="quantityNprice row mb-3">
	                            <div class="col-md-6">
	                                <div class="form-floating">
	                                    <input type="number" class="form-control" id="productQuantity" name="productQuantity" min="0" placeholder="Quantity" required>
	                                    <label for="productQuantity">Quantity</label>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-floating">
	                                    <input type="number" class="form-control" id="productPrice" name="productPrice" min="0" step="0.01" placeholder="Price (Rs.)" required>
	                                    <label for="productPrice">Price (Rs.)</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="mb-3">
	                            <label for="productImage" class="form-label">Product Image</label>
	                            <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" >
	                        </div>
	                        <div class="mb-3">
	                            <img id="imagePreview" src="#" alt="Image Preview" class="img-fluid d-none">
	                        </div>
	                        <div class="text-end">
	                            <input type="submit" class="btn normalBtn" value ="Submit">
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
    
    <!-- Card Carousel Section -->
    <section class="cc-container">
         <div class="card__container swiper">
            <div class="card__content">
               <div class="swiper-wrapper">
               		<c:forEach var="product" items="${products}">
	                  <article class="card__article swiper-slide" 
	                  	data-product-id="${product.pId}" 
	                  	data-category="${product.pCategory}"
         				data-quantity="${product.pQuantity}">
	                     <div class="card__image">
	                        <img src="${pageContext.request.contextPath}/images/products/${product.pImg}" alt="${product.pName} image" class="card__img">
	                        <div class="card__shadow"></div>
	                     </div>
	      
	                     <div class="card__data">
	                        <h3 class="card__name">${product.pName}</h3>
	                        <p class="card__description" style="display:none">${product.pDescription}</p>
	                        <p class="card__description">ID: ${product.pId}</p>
	                        <p class="card__description">Quantity: ${product.pQuantity}</p>
	                        <p class="card__description">Category: ${product.pCategory}</p>
	                        <p class="card__price">
							   Rs.<fmt:formatNumber value="${product.pPrice}" type="number" maxFractionDigits="2" minFractionDigits="2" />
							</p>
	      					<div class="column d-flex gap-2">
	      						<a href="#" class="card__button_edit"><i class="bi bi-pencil-square"></i></a>
	      						<a href="#" class="card__button_delete"><i class="bi bi-trash"></i></a>
	      						<!-- <a href="#" class="card__button normalBtn">View More</a> -->
	      					</div>
	                     </div>
	                  </article>
      				</c:forEach>
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
    
	<!-- Delete Confirmation Modal -->
    <section>
		<div class="modal fade" id="deleteConfirmModal" tabindex="-1">
		    <div class="modal-dialog modal-dialog-centered">
		        <div class="modal-content">
			        <form id="deleteProductForm" action="${pageContext.request.contextPath}/deleteProduct" method="POST">
			        	<input type="hidden" id="deleteProductId" name="productId" value="">
			            <div class="modal-header">
			                <h5 class="modal-title">Confirm Delete</h5>
			                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			            </div>
			            <div class="modal-body">
			                <p>Are you sure you want to delete this product?</p>
			            </div>
			            <div class="d-flex justify-content-end gap-2 p-3">
			                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
			                <button type="submit" class="btn btn-danger" id="confirmDeleteBtn">Delete</button>
			            </div>
		            </form>
		        </div>
		    </div>
		</div>
	</section>
	
	<!-- Edit details modal -->
    <section>
    	<div class="modal fade" id="editProductModal" tabindex="-1" aria-hidden="true">
	        <div class="modal-dialog modal-lg modal-dialog-centered">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h5 class="modal-title">Edit Product Details</h5>
	                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                </div>
	                
	                <div class="modal-body">
	                    <form id="editProductForm" action="${pageContext.request.contextPath}/updateProduct" method="POST" enctype="multipart/form-data">
	                        <input type="hidden" name="productId" id="editProductId" value="">
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="editProductName" name="editProductName" required>
	                            <label for="editProductName">Product Name</label>
	                        </div>
	                        <div class="form-floating mb-3">
	                            <input type="text" class="form-control" id="editProductCategory" name="editProductCategory">
	                            <label for="editProductCategory">Product Category</label>
	                        </div>
	                        <div class="form-floating mb-3">
                            	<textarea class="form-control" id="editProductDescription" name="editProductDescription" 
                            	style="height: 100px" required></textarea>
	                            <label for="editProductDescription">Description</label>
	                        </div>
	                        <div class="quantityNprice row mb-3">
	                            <div class="col-md-6">
	                                <div class="form-floating">
	                                    <input type="number" class="form-control" id="editProductQuantity" name="editProductQuantity" min="0" required>
	                                    <label for="editProductQuantity">Quantity</label>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="form-floating">
	                                    <input type="number" class="form-control" id="editProductPrice" name="editProductPrice" min="0" step="0.01" required>
	                                    <label for="editProductPrice">Price (Rs.)</label>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="mb-3">
	                            <label for="editProductImage" class="form-label">Product Image</label>
	                            <input type="file" class="form-control" id="editProductImage" name="editProductImage" accept="image/*">
	                        </div>
	                        <div class="mb-3">
	                            <img id="editImagePreview" src="${pageContext.request.contextPath}/images/products/garrett-turbo.png" alt="Image Preview" class="img-fluid">
	                        </div>
	                        <div class="text-end">
	                            <input type="submit" class="btn normalBtn" value="Save">
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
    </section>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link swiper js script file -->
    <script src="${pageContext.request.contextPath}/js/swiper-bundle.min.js"></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/ProductManagement.js"></script>
    <script src="${pageContext.request.contextPath}/js/SideBar.js"></script>
    
</body>
</html>