<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Summary - AutoElite</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <style>
        /* Custom colors matching your login page */
        .btn-confirm {
            background-color: #2ecc71; /* green */
            border: none;
            color: white;
        }
        .btn-confirm:hover {
            background-color: #27ae60;
            color: white;
        }
        .btn-cancel {
            background-color: #e74c3c; /* red */
            border: none;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #c0392b;
            color: white;
        }
        .order-summary {
            max-width: 700px;
            margin: 40px auto;
            padding: 20px;
            border-radius: 1rem;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            background: #fff;
        }
        .order-header {
            color: #393f81; /* your blue */
            font-weight: 700;
            margin-bottom: 20px;
        }
        .order-total {
            font-weight: 700;
            font-size: 1.25rem;
            color: #393f81;
        }
    </style>
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <section class="order-summary">
        <h2 class="order-header text-center">Order Summary</h2>

        <!-- Example order items -->
        <table class="table">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Qty</th>
                    <th>Price</th>
                    <th>Subtotal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Car Engine Oil</td>
                    <td>2</td>
                    <td>$25.00</td>
                    <td>$50.00</td>
                </tr>
                <tr>
                    <td>Brake Pads</td>
                    <td>1</td>
                    <td>$40.00</td>
                    <td>$40.00</td>
                </tr>
            </tbody>
        </table>

        <div class="d-flex justify-content-end mb-4">
            <div class="order-total">Total: $90.00</div>
        </div>

        <form action="${pageContext.request.contextPath}/OrderActionServlet" method="POST" class="d-flex justify-content-between">
            <%-- Pass order ID as hidden input --%>
            <input type="hidden" name="orderId" value="${orderId}" />

            <button type="submit" name="action" value="cancel" class="btn btn-success px-4">Cancel Order</button>
            <button type="submit" name="action" value="confirm" class="btn btn-primary px-4">Confirm Order</button>
        </form>
    </section>

    <jsp:include page="Footer.jsp"/>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
ss