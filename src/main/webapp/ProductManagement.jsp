<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ProductManagement.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <h1 class="text-center firstH1">Product Management</h1>
    
    <!-- Search and Add Product Section -->
    <section>
    	<div class="row mb-4 mx-5">
        	<div class="col-md-8">
            	<div class="input-group">
                	<input type="text" id="searchInput" class="form-control" placeholder="Search by product name or ID...">
                    <button class="btn btn-primary normalBtn" type="button" id="searchButton">
                    	<i class="bi bi-search"></i> Search
                    </button>
                </div>
            </div>
            <div class="col-md-4 text-end">
            	<button class="btn btn-success normalBtn" id="addProductBtn">
                	<i class="bi bi-plus"></i> Add New Product
                </button>
            </div>
		</div>
    </section>
    
	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link script file -->
    <script src="${pageContext.request.contextPath}/js/ProductManagement.js"></script>
</body>
</html>