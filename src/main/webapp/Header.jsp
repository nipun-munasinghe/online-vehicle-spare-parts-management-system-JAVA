<!-- Link bootstrap style sheet -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- Link bootstrap icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">

<!-- Link style sheet -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Header.css">

<!-- Desktop Header (default, visible on large screens) -->
<section class="ae-nav-section ae-header-desktop">
    <div class="ae-container-nav">
        <nav class="ae-nav-class">
            <div class="ae-navbar-widget">
                <ul class="ae-navbar">
                    <li class="ae-nav-item"><a href="${pageContext.request.contextPath}/products.jsp">Shop</a></li>
                    <li class="ae-nav-item"><a href="${pageContext.request.contextPath}/Cart.jsp">Orders</a></li>
                    <li class="ae-nav-item"><a href="#">Contact</a></li>
                    <li class="ae-separator">|</li>
                    <li class="ae-nav-item ae-signin-btn"><a href="${pageContext.request.contextPath}/Login.jsp">Login</a></li>
                    <li class="ae-nav-item ae-signup-btn"><a href="${pageContext.request.contextPath}/SignUp.jsp">Register</a></li>
                </ul>
            </div>
        </nav>
    </div>
</section>

<!-- Tablet Header (visible between 768px and 993px) -->
<section class="ae-header-tablet">
    <div class="ae-tablet-bar">
        <div class="ae-tablet-logo">Auto Elite</div>
        <button class="ae-tablet-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#aeTabletMenu">
            <i class="bi bi-list" style="font-size: 2rem;"></i>
        </button>
        <div class="collapse ae-tablet-menu" id="aeTabletMenu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/products.jsp">Shop</a></li>
                <li><a href="${pageContext.request.contextPath}/Cart.jsp">Cart</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/Login.jsp">Login</a></li>
                <li><a href="${pageContext.request.contextPath}/SignUp.jsp">Register</a></li>
            </ul>
        </div>
    </div>
</section>

<!-- Mobile Header (visible below 768px) -->
<section class="ae-header-mobile">
    <div class="ae-mobile-bar">
        <span class="ae-mobile-title">Auto Elite</span>
        <button class="ae-mobile-menu-btn" type="button" data-bs-toggle="collapse" data-bs-target="#aeMobileMenu">
            <i class="bi bi-list" style="font-size: 2rem;"></i>
        </button>
    </div>
    <div class="collapse ae-mobile-menu" id="aeMobileMenu">
        <ul>
            <li><a href="${pageContext.request.contextPath}/products.jsp">Shop</a></li>
            <li><a href="${pageContext.request.contextPath}/Cart.jsp">Cart</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="${pageContext.request.contextPath}/Login.jsp">Login</a></li>
            <li><a href="${pageContext.request.contextPath}/SignUp.jsp">Register</a></li>
        </ul>
    </div>
</section>


<!-- Link bootstrap script file -->
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
