<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AutoElite | Shop</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Payment.css">
</head>
<body>
    <jsp:include page="Header.jsp"/>
    
	<c:if test="${not empty userid}">
    	<jsp:include page="TopBar.jsp"/>
    </c:if>
    
    <main>
        <section class="shop-hero">
            <div class="shop-hero-content">
                <h1>
                    <span class="highlight">Trending</span> <span style="color: white">Collections</span>
                </h1>
                <p>Discover what's hot in the performance scene this week.</p>
            </div>
        </section>

        <!-- Trending -->
        <section class="products-section">
            <div class="products-grid">
                <c:forEach var="product" items="${trendingProducts}">
                    <div class="product-card glass-effect animate-pop">
                        <div class="prod-img-holder">
                            <img src="${pageContext.request.contextPath}/images/products/${product.pImg}" alt="${product.pName}" class="prod-img">
                            <span class="prod-badge hot"><i class="bi bi-fire"></i> Trending</span>
                        </div>
                        <div class="prod-details">
                            <h2>${product.pName}</h2>
                            <p>${product.pDescription}</p>
                            <div class="prod-bottom">
                                <span class="prod-price">
                                    Rs. <fmt:formatNumber value="${product.pPrice}" type="number" maxFractionDigits="2" minFractionDigits="2" />
                                </span>
                                <a href="${pageContext.request.contextPath}/OrderFormServlet?p_id=${product.pId}&u_price=${product.pPrice}" class="prod-buy-btn">
                                    <i class="bi bi-cart-check"></i> Buy Now
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>

        <!-- All Products -->
        <section class="shop-hero" style="margin-top:40px;">
            <div class="shop-hero-content">
                <h1>
                    <span class="highlight">All</span> <span style="color: white">Products</span>
                </h1>
                <p>The ultimate collection for enthusiasts & everyday drivers.</p>
            </div>
        </section>
        <section class="products-section">
            <div class="products-grid">
                <c:forEach var="product" items="${products}">
                    <div class="product-card glass-effect">
                        <div class="prod-img-holder">
                            <img src="${pageContext.request.contextPath}/images/products/${product.pImg}" alt="${product.pName}" class="prod-img">
                        </div>
                        <div class="prod-details">
                            <h2>${product.pName}</h2>
                            <p>${product.pDescription}</p>
                            <div class="prod-bottom">
                                <span class="prod-price">
                                    Rs. <fmt:formatNumber value="${product.pPrice}" type="number" maxFractionDigits="2" minFractionDigits="2" />
                                </span>
                                <a href="${pageContext.request.contextPath}/OrderFormServlet?p_id=${product.pId}&u_price=${product.pPrice}" class="prod-buy-btn">
                                    <i class="bi bi-cart-plus"></i> Buy Now
                                </a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>
    </main>

    <jsp:include page="Footer.jsp"/>
</body>
</html>