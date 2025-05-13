<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String product = request.getParameter("product");
  String price = request.getParameter("price");
%>
<!DOCTYPE html>
<html>
<head>
    <!-- ... existing head content ... -->
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <!-- Modified Form -->
                    <form action="OrderServlet" method="POST" class="card-body p-5">
                        <h2 class="card-title text-center mb-4">Order Form</h2>

                        <!-- Hidden product details -->
                        <input type="hidden" name="product" value="<%= product %>">
                        <input type="hidden" name="unitPrice" value="<%= price %>">

                        <!-- Customer Details -->
                        <div class="mb-4">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" name="customerName" required>
                        </div>
                        
                        <div class="mb-4">
                            <label class="form-label">Delivery Address</label>
                            <textarea class="form-control" name="shippingAddress" rows="3" required></textarea>
                        </div>

                        <!-- Product Details -->
                        <div class="mb-4">
                            <label class="form-label">Selected Product</label>
                            <input type="text" class="form-control" 
                                   value="<%= product != null ? product : "" %>" readonly>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label">Unit Price (Rs.)</label>
                                <input type="number" class="form-control" 
                                       value="<%= price != null ? price : "0" %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Quantity</label>
                                <input type="number" name="quantity" class="form-control" 
                                       value="1" min="1" required>
                            </div>
                        </div>

                        <!-- Dynamic Total -->
                        <div class="mb-4">
                            <label class="form-label">Total Price (Rs.)</label>
                            <input type="number" name="totalPrice" class="form-control" readonly>
                        </div>

                        <button type="submit" class="btn btn-success w-100 py-2">Order</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ... existing footer and scripts ... -->
</body>
</html>
