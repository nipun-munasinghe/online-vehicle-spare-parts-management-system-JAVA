<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <!-- ... existing head content ... -->
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>
    
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        const unitPriceInput = document.querySelector('input[name="unitprice"]');
        const quantityInput = document.querySelector('input[name="quantity"]');
        const totalPriceInput = document.querySelector('input[name="totalPrice"]');

        function updateTotal() {
            const unitPrice = parseFloat(unitPriceInput.value) || 0;
            const quantity = parseInt(quantityInput.value) || 0;
            const total = unitPrice * quantity;
            totalPriceInput.value = total.toFixed(2);
        }

        // Initial calculation
        updateTotal();

        // Event listeners for changes
        quantityInput.addEventListener('input', updateTotal);
    });
</script>
    

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card shadow">
                    <!-- Modified Form -->
                    <form action="${pageContext.request.contextPath}/OrderFormServlet" method="POST" class="card-body p-5">
                        <h2 class="card-title text-center mb-4">Order Form</h2>

                        <!-- Hidden product details -->
                        <input type="hidden" name="productid" value="${productId}">
                        <input type="hidden" name="userid" value="${userid}">

                        <!-- Customer Details -->
                        <div class="mb-4">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" name="customerName" value="${Fname} ${Lname}" required>
                        </div>
                        
                        <input type="hidden" name="p_id" value="${productId}">
                        
                        <div class="mb-4">
                            <label class="form-label">Phone Number</label>
                            <input type="text" class="form-control" name="phoneno" required>
                        </div>

		                    
                        <div class="mb-4">
                            <label class="form-label">Delivery Address</label>
                            <textarea class="form-control" name="shippingAddress" rows="3" required></textarea>
                        </div>

                        <!-- Product Details -->
                        <div class="mb-4">
                            <label class="form-label">Selected Product</label>
                            <input type="text" class="form-control" 
                                   value="${productId}" name="prodid" readonly>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label">Unit Price (Rs.)</label>
                                <input type="number" class="form-control" 
                                       value="${unitPrice}" name="unitprice" readonly>
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
