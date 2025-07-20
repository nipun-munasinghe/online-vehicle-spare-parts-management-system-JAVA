<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Secure Card Payment</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <style>
        body { background: #f5f7fa; }
        .payment-container { max-width: 600px; margin: 40px auto; background: #fff; border-radius: 16px; box-shadow: 0 8px 32px rgba(60,72,88,0.15); padding: 0; overflow: hidden; }
        .payment-header { background: linear-gradient(to right, #000000, #A6FF00); color: #fff; padding: 32px 24px 16px 24px; }
        .payment-header h2 { font-weight: 700; }
        .payment-form label { font-weight: 500; }
        .secure-badge { color: #28a745; font-size: 1rem; margin-top: 10px; }
        .btn-pay { width: 100%; padding: 14px; font-size: 1.1rem; font-weight: 600; border-radius: 8px; }
        @media (max-width: 767px) { .payment-header { padding: 24px 12px 12px 12px; } }
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <div class="payment-container shadow">
        <div class="row g-0">
            <!-- Payment Form -->
            <div class="col-12">
                <div class="payment-header">
                    <h2>Secure Card Payment</h2>
                    <p class="mb-0">Pay safely for your automobile spare parts.</p>
                </div>
                <form class="payment-form p-4" autocomplete="off" method="post" action="ProcessPaymentServlet">
                    <div class="mb-3">
                        <label for="cardNumber" class="form-label">Card Number</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-credit-card-2-front"></i></span>
                            <input type="text" class="form-control" id="cardNumber" name="cardNumber" maxlength="19" placeholder="1234 5678 9012 3456" required pattern="\\d{4} \\d{4} \\d{4} \\d{4}">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="expiry" class="form-label">Expiry Date</label>
                            <input type="text" class="form-control" id="expiry" name="expiry" placeholder="MM/YY" required pattern="(0[1-9]|1[0-2])\\/\\d{2}">
                        </div>
                        <div class="col-md-6">
                            <label for="cvv" class="form-label">CVV</label>
                            <input type="password" class="form-control" id="cvv" name="cvv" maxlength="4" placeholder="123" required pattern="\\d{3,4}">
                        </div>
                    </div>
                    <div class="mb-4">
                        <label for="cardName" class="form-label">Name on Card</label>
                        <input type="text" class="form-control" id="cardName" name="cardName" required placeholder="Cardholder Name">
                    </div>
                    <div class="secure-badge">
                        <i class="bi bi-shield-lock-fill"></i> Your payment is encrypted and secure
                    </div>
                    <button type="submit" class="btn btn-success btn-pay mt-4">Pay Rs. 5,700.00</button>
                    <!-- Hardcoded amount. Change as required -->
                </form>
            </div>
        </div>
    </div>

    <jsp:include page="Footer.jsp"/>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>