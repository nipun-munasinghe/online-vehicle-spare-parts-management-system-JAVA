<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Payment.css">
    
    <!-- Link js file -->
    <script src="${pageContext.request.contextPath}/js/OrderForm.js"></script>
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
			<c:forEach var="product" items="${trendingProducts}">
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/products/${product.pImg}" alt="${product.pName} image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">${product.pName}</h5>
                      <p class="card-text text-center">${product.pDescription}</p>
                      <h3 class="text-center">Rs.
                      	<fmt:formatNumber value="${product.pPrice}" type="number" maxFractionDigits="2" minFractionDigits="2" />
                      </h3>
                      <a href="${pageContext.request.contextPath}/OrderFormServlet?p_id=${product.pId}" class="btn btn-primary">Buy Now</a>

                    </div>
                  </div>
            </div>
            </c:forEach>
        </div>
    </div>   

    <!-- All products -->
    <div class="container py-5">
        <h1 class="text-center fw-300 text-uppercase text-white">Our Products</h1>
        <div class="row row-cols-1 row-cols-md-5 g-4 py-5">
        
        <c:forEach var="product" items="${products}">
            <div class="col">
                <div class="card ">
                    <img src="${pageContext.request.contextPath}/images/products/${product.pImg}" alt="${product.pName} image" class="b-image">
                    <div class="card-body">
                      <h5 class="card-title text-center">${product.pName}</h5>
                      <p class="card-text text-center">${product.pDescription}</p>
                      <h3 class="text-center">Rs.
                      	<fmt:formatNumber value="${product.pPrice}" type="number" maxFractionDigits="2" minFractionDigits="2" />
                      </h3>
                      <a href="${pageContext.request.contextPath}/OrderFormServlet?p_id=${product.pId}&u_price=${product.pPrice}" class="btn btn-primary">Buy Now</a>

                    </div>
                  </div>
            </div>
            </c:forEach>

        </div>
    </div>
    
	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    
</body>
</html>