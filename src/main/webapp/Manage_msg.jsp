<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

        <!-- Show error if exists -->
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <!-- Messages Table -->
        <div class="table-responsive w-100">
            <table class="table table-dark table-bordered text-center">
                <thead>
                    <tr>
                        <th>Message ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                        <th>Status</th>
                    </tr>
                </thead>
<tbody>
    <c:choose>
        <c:when test="${not empty messageList}">
            <c:forEach var="msg" items="${messageList}">
                <tr>
                    <td>${msg.mId}</td>
                    <td>${msg.mName}</td>
                    <td>${msg.mEmail}</td>
                    <td>${msg.message}</td>
                    <td>
                        <c:choose>
                            <c:when test="${msg.mStatus eq 'Pending'}">
                                <span class="badge bg-warning"><i class="bi bi-hourglass-split"></i> Pending</span>
                            </c:when>
                            <c:when test="${msg.mStatus eq 'Read'}">
                                <span class="badge bg-success"><i class="bi bi-check-circle"></i> Read</span>
                            </c:when>
                            <c:when test="${msg.mStatus eq 'Unread'}">
                                <span class="badge bg-danger"><i class="bi bi-envelope"></i> Unread</span>
                            </c:when>
                            <c:otherwise>
                                <span class="badge bg-secondary">${msg.mStatus}</span>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td colspan="5" class="text-warning">No messages found.</td>
            </tr>
        </c:otherwise>
    </c:choose>
</tbody>

            </table>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
