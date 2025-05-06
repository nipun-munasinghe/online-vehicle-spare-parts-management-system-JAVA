<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dilivary details</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/dilivary_details.css">
    
    <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
</head>
<body>
	
    <div class="container">
        <h2>Delivery Details</h2>
        
        <div class="table-responsive">
            <table>
                <thead>
                    <tr>
                        <th>Customer Name</th>
                        <th>Address</th>
                        <th>Phone No</th>
                        <th>Product No</th>
                        <th>Delivery Status</th>
                        <th>Comment</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td data-label="Customer Name"></td>
                        <td data-label="Address"></td>
                        <td data-label="Phone No"></td>
                        <td data-label="Product No"></td>
                        <td data-label="Delivery Status">
                            <select class="status-dropdown form-select">
                                <option value="placed" selected></option>
                                <option value="shipped"></option>
                                <option value="delivered"></option>
                            </select>
                        </td>
                        <td data-label="Comment">
                            <div class="comment-section">
                                <input type="text" class="comment-input form-control" placeholder="Add a comment">
                                <button class="comment-btn">Add</button>
                            </div>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </div>
    <br><br>
    
	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>