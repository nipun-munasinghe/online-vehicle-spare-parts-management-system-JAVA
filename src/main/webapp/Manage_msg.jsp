<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Messages</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/manage_msg.css">
    
</head>

<body>
    <!-- Include Header and Top Bar -->
    <jsp:include page="Header.jsp" />
    <jsp:include page="TopBar.jsp" />

    <div class="container mt-5 d-flex flex-column align-items-center">
        <h2 class="text-white mb-4">Manage Messages</h2>

        <!-- Messages Table -->
        <div class="table-responsive w-100">
            <table class="table table-dark table-bordered text-center">
                <thead>
                    <tr>
                        <th> Message ID </th>
                        <th> Name </th>
                        <th> Email </th>
                        <th> Message </th>
                        <th> Status </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td> Kasun Perera</td>
                        <td> kasun.pere43ra@email.lk </td>
                        <td> Need help with my account.</td>
                        <td><span class="badge bg-warning"><i class="bi bi-hourglass-split"></i> Pending </span></td>
                    </tr>
                    
                    <tr>
                        <td>02</td>
                        <td> Thilini Silva </td>
                        <td> thilini.silva23@email.lk </td>
                        <td> Requesting transaction details.</td>
                        <td><span class="badge bg-success"><i class="bi bi-check-circle"></i> Read </span></td>
                    </tr>
                    
                    <tr>
                        <td>03</td>
                        <td> Amal Fernando </td>
                        <td> amal.fernando78@email.lk </td>
                        <td> Issue with login credentials.</td>
                        <td><span class="badge bg-danger"><i class="bi bi-envelope"></i> Unread </span></td>
                    </tr>
                </tbody>
                
            </table>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
