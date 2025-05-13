<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hero.css">
    <style>
        /* Additional page-specific styling */
        .order-details-section {
            background: #f8f9fa;
            border-radius: 16px;
            box-shadow: 0 4px 16px rgba(0,0,0,0.05);
            padding: 2rem 2rem 1.5rem 2rem;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        .order-status {
            font-size: 1.1rem;
            font-weight: 500;
        }
        .cancel-btn {
            min-width: 160px;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <!-- Order Details Page -->
    <section class="container order-details-section">
        <div class="row mb-4">
            <div class="col-12 text-center">
                <h2 class="fw-bold text-primary mb-2">
                    <i class="bi bi-receipt-cutoff"></i> Order Details
                </h2>
                <div class="order-status text-success">
                    <i class="bi bi-check-circle-fill"></i> Status: <span>Confirmed</span>
                </div>
            </div>
        </div>
        <!-- Order Info -->
        <div class="row mb-4">
            <div class="col-md-6">
                <h5 class="fw-semibold">Order 1</h5>
                <p><i class="bi bi-calendar-event"></i> Placed on: <strong>2025-05-12</strong></p>
                <p><i class="bi bi-person"></i> Customer: <strong>John Doe</strong></p>
                <p><i class="bi bi-geo-alt"></i> Shipping Address: <strong>Colombo</strong></p>
            </div>
        </div>
        <!-- Order Items Table -->
        <div class="table-responsive mb-4">
            <table class="table table-hover align-middle">
                <thead class="table-primary">
                    <tr>
                        <th scope="col">Product</th>
                        <th scope="col">Qty</th>
                        <th scope="col">Unit Price</th>
                        <th scope="col">Subtotal</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Car Seat Cover</td>
                        <td>2</td>
                        <td>Rs.1,000</td>
                        <td>Rs.2,000</td>
                    </tr>
                    <tr>
                        <td>Dashboard Camera</td>
                        <td>1</td>
                        <td>Rs.3,500</td>
                        <td>Rs.3,500</td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan="3" class="text-end">Total</th>
                        <th>Rs.5,500</th>
                    </tr>
                </tfoot>
            </table>
        </div>
        <!-- Cancel and Buy Products Buttons -->
        <div class="row">
            <div class="col-12 text-end">
                <form action="${pageContext.request.contextPath}/cancelOrder" method="post" style="display:inline-block;" onsubmit="return confirm('Are you sure you want to cancel this order?');">
                    <input type="hidden" name="orderId" value="123456"/>
                    <button type="submit" class="btn btn-danger cancel-btn me-2">
                        <i class="bi bi-x-circle"></i> Cancel Order
                    </button>
                </form>
                
                <a href="${pageContext.request.contextPath}/products" class="btn btn-success cancel-btn">
                    <i class="bi bi-cart-plus"></i> Buy Products
                </a>
            </div>
        </div>
    </section>

    <!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
    <!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
