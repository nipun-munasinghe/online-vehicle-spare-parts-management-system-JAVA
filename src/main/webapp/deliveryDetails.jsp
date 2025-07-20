<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delivery Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dilivary_details.css">
    <style>
        /* === 3D Table Styles === */
        .table-3d {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: #23272b;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 24px rgba(0, 0, 0, 0.18);
        }
        .table-3d th, .table-3d td {
            padding: 16px 18px;
            text-align: left;
            font-size: 1rem;
            border-bottom: 1px solid #393E46;
            background: #23272b;
            color: #fff;
        }
        .table-3d th {
            font-weight: 700;
            font-size: 1.05rem;
            background: #23272b;
            border-bottom: 2px solid #393E46;
            letter-spacing: 0.02em;
        }
        .table-3d tbody tr {
            transition: transform 0.18s, box-shadow 0.18s;
        }
        .table-3d tbody tr:hover {
            background: #262a2f;
            transform: translateY(-2px) scale(1.01);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.16);
            z-index: 2;
            position: relative;
        }
        /* Responsive Table */
        @media screen and (max-width: 768px) {
            .table-3d thead {
                display: none;
            }
            .table-3d tr {
                display: block;
                margin-bottom: 20px;
                border: 1px solid #393E46;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.08);
            }
            .table-3d td {
                display: block;
                text-align: right;
                border-bottom: 1px solid #393E46;
                position: relative;
                padding-left: 50%;
                min-height: 30px;
            }
            .table-3d td:before {
                content: attr(data-label);
                position: absolute;
                left: 15px;
                width: 45%;
                padding-right: 10px;
                text-align: left;
                font-weight: bold;
                color: #A6FF00;
            }
        }
        /* Alerts */
        .alert-danger {
            background-color: #FF4500;
            color: #fff;
            border: none;
        }
        /* Headings */
        h2 {
            font-family: 'Roboto', Arial, sans-serif;
            font-size: 24px;
            color: #A6FF00;
            margin-bottom: 20px;
            text-align: center;
            font-weight: 700;
        }
        body {
            background: linear-gradient(#222831, #F7F7F7);
            color: #FFFFFF;
            font-family: 'Poppins', Arial, sans-serif;
            font-weight: 400;
            min-height: 100vh;
            width: 100%;
            overflow-x: hidden;
        }
        .container {
            margin-top: 40px;
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
    <%-- Header and TopBar should be inside <body> --%>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <div class="container">
        <h2>Delivery Details</h2>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
        <div class="table-responsive">
            <table class="table-3d">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Order Date</th>
                        <th>Customer ID</th>
                        <th>Address</th>
                        <th>Phone No</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty orderList}">
                            <c:forEach var="order" items="${orderList}">
                                <tr>
                                    <td data-label="Order ID">${order.o_id}</td>
                                    <td data-label="Order Date">${order.o_date}</td>
                                    <td data-label="Customer ID">${order.customer_id}</td>
                                    <td data-label="Address">${order.o_address}</td>
                                    <td data-label="Phone No">${order.o_phone}</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5" class="text-warning" style="text-align:center;">No orders found.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="Footer.jsp"/>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>