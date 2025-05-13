<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
        <div class="w-100 d-flex justify-content-start">
            <h2 class="text-white mb-4">Manage Messages</h2>
        </div>

        <!-- Show messages/errors -->
        <c:if test="${not empty message}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                ${error}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>

        <!-- Modern 3D Table -->
        <div class="table-3d-container w-100">
            <table class="table-3d">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Date</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                        <th>Status</th>
                        <th>Reply</th>
                    </tr>
                </thead>
                <tbody>
                    <c:choose>
                        <c:when test="${not empty messageList}">
                            <c:forEach var="msg" items="${messageList}">
                                <tr>
                                    <td>${msg.m_Id}</td>
                                    <td>${msg.m_Date}</td>
                                    <td>${msg.m_Name}</td>
                                    <td>${msg.m_Email}</td>
                                    <td class="text-start">${msg.message}</td>
                                    <td>
                                        <span class="status-badge">
                                            <c:choose>
                                                <c:when test="${msg.m_Status eq 'Pending'}">
                                                    <i class="bi bi-hourglass-split" title="Pending"></i> Pending
                                                </c:when>
                                                <c:when test="${msg.m_Status eq 'Read'}">
                                                    <i class="bi bi-check-circle" title="Read"></i> Read
                                                </c:when>
                                                <c:when test="${msg.m_Status eq 'Unread'}">
                                                    <i class="bi bi-envelope" title="Unread"></i> Unread
                                                </c:when>
                                                <c:otherwise>
                                                    <i class="bi bi-question-circle" title="${msg.m_Status}"></i> ${msg.m_Status}
                                                </c:otherwise>
                                            </c:choose>
                                        </span>
                                    </td>
                                    <td>
                                        <a href="mailto:${msg.m_Email}?subject=Reply to your message&body=Hi ${msg.m_Name},%0D%0A%0D%0A"
                                           class="reply-btn" title="Reply by Email">
                                            <i class="bi bi-reply"></i>Reply
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="7" class="text-warning">No messages found.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
