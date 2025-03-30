<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Messages</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Bootstrap Icons -->
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

    <div class="container mt-5">
        <h2 class="text-white">Manage Messages</h2>
        
        <!-- Messages Table -->
        <div class="table-responsive">
            <table class="table table-dark table-bordered text-center">
                <thead>
                    <tr>
                        <th>Message ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>01</td>
                        <td>Kasun Perera</td>
                        <td>kasun.perera@gmail.lk</td>
                        <td>Need help with my account.</td>
                        <td><span class="badge bg-warning"><i class="bi bi-hourglass-split"></i> Pending</span></td>
                        <td>
                            <button class="btn btn-success btn-sm">
                                <i class="bi bi-envelope-open"></i> Mark as Read
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>02</td>
                        <td>Thilini Silva</td>
                        <td>thilini.silva@gmail.lk</td>
                        <td>Requesting transaction details.</td>
                        <td><span class="badge bg-primary"><i class="bi bi-envelope"></i> Unread</span></td>
                        <td>
                            <button class="btn btn-success btn-sm">
                                <i class="bi bi-envelope-open"></i> Mark as Read
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>03</td>
                        <td>Amal Fernando</td>
                        <td>amal.fernando@gmail.lk</td>
                        <td>Issue with login credentials.</td>
                        <td><span class="badge bg-success"><i class="bi bi-check-circle"></i> Read</span></td>
                        <td>
                            <button class="btn btn-secondary btn-sm" disabled>
                                <i class="bi bi-check-circle"></i> Read
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <td>04</td>
                        <td>Sanduni Rathnayake</td>
                        <td>sanduni.rathnayake@gmail.lk</td>
                        <td>Follow-up on previous inquiry.</td>
                        <td><span class="badge bg-info"><i class="bi bi-reply"></i> Replied</span></td>
                        <td>
                            <button class="btn btn-secondary btn-sm" disabled>
                                <i class="bi bi-reply"></i> Replied
                            </button>
                        </td>
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