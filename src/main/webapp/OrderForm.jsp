<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String product = request.getParameter("product");
  String price = request.getParameter("price");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico">
    <script src="${pageContext.request.contextPath}/js/OrderForm.js"></script>
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <div class="card-body p-5">
                        <h2 class="card-title text-center mb-4">Order Form</h2>
                        
                        <!-- Customer Details -->
                        <div class="mb-4">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" required>
                        </div>
                        
                        <div class="mb-4">
                            <label class="form-label">Delivery Address</label>
                            <textarea class="form-control" rows="3" required></textarea>
                        </div>

                        <!-- Product Details (Auto-filled) -->
                        <div class="mb-4">
                            <label class="form-label">Selected Product</label>
                            <input type="text" class="form-control" 
                                   value="<%= product != null ? product : "" %>" readonly>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label">Unit Price (Rs.)</label>
                                <input type="number" id="unitPrice" class="form-control" 
                                       value="<%= price != null ? price : "0" %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Quantity</label>
                                <input type="number" id="quantity" class="form-control" 
                                       value="1" min="1" required>
                            </div>
                        </div>

                        <!-- Dynamic Total -->
                        <div class="mb-4">
                            <label class="form-label">Total Price (Rs.)</label>
                            <input type="number" id="totalPrice" class="form-control" readonly>
                        </div>

                        <button class="btn btn-primary w-100 py-2">Confirm Order</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>

</body>
</html>