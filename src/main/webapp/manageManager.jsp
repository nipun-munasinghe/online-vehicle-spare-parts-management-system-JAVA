<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Manager Management</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
	<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addManager.css">
	<script src="${pageContext.request.contextPath}/js/manageManager.js"></script>
</head>

<body class="bg-black text-white min-vh-100 d-flex flex-column">

<jsp:include page="Header.jsp" />
<jsp:include page="TopBar.jsp" />

<div class="container mt-5 flex-grow-1">

    <!-- Action Message Display -->
    <c:if test="${not empty message}">
        <div class="alert alert-info alert-dismissible fade show">
            ${message}
            <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        </div>
    </c:if>

    <div class="row">
        <div class="col-12">
            <!-- Manager Action Section -->
            <h2>Manager Actions</h2>
            <div class="card bg-dark text-white shadow rounded-2 mb-4 p-4">
                <form action="${pageContext.request.contextPath}/managerActions"
                      method="post" id="actionForm">
                    <div class="mb-3">
                        <input type="email" class="form-control bg-black text-white border-secondary rounded-2"
                               name="managerEmail" placeholder="Enter manager email" required>
                    </div>
                    <div class="d-flex gap-2">
                        <button type="submit" name="action" value="activate"
                                class="btn btn-gradient-activate btn-sm rounded-2">
                            <i class="bi bi-check-circle-fill"></i> Activate
                        </button>
                        <button type="submit" name="action" value="deactivate"
                                class="btn btn-gradient-deactivate btn-sm rounded-2">
                            <i class="bi bi-exclamation-circle-fill"></i> Inactivate
                        </button>
                        <button type="submit" name="action" value="remove"
                                class="btn btn-gradient-delete btn-sm rounded-2">
                            <i class="bi bi-x-circle-fill"></i> Remove
                        </button>
                    </div>
                </form>
            </div>

            <!-- Manager List Table -->
            <div class="d-flex justify-content-between align-items-center mb-2">
                <h2>Manager List</h2>
                <button class="btn btn-highlight-greenyellow shadow rounded-2"
                        data-bs-toggle="modal" data-bs-target="#addManagerModal">
                    <i class="bi bi-person-plus-fill"></i> Add Manager
                </button>
            </div>

            <div class="table-responsive">
                <table class="table table-dark table-striped table-hover align-middle shadow-lg rounded-2 table-3d">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${not empty managerList}">
                                <c:forEach items="${managerList}" var="manager">
                                    <tr>
                                        <td>${manager.firstName}</td>
                                        <td>${manager.lastName}</td>
                                        <td>${manager.email}</td>
                                        <td>${manager.phoneNumber}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${manager.status eq 'Active'}">
                                                    <span class="badge bg-success">
                                                        <i class="bi bi-check-circle-fill"></i> Active
                                                    </span>
                                                </c:when>
                                                <c:when test="${manager.status eq 'Inactive'}">
                                                    <span class="badge bg-danger">
                                                        <i class="bi bi-x-circle-fill"></i> Inactive
                                                    </span>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td colspan="5" class="text-center text-warning">No managers found in the system</td>
                                </tr>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>
            </div>

            <!-- Add Manager Modal -->
            <div class="modal fade" id="addManagerModal" tabindex="-1"
                 aria-labelledby="addManagerModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content bg-dark text-white rounded-2">
                        <div class="modal-header border-0">
                            <h5 class="modal-title" id="addManagerModalLabel">
                                <i class="bi bi-person-plus-fill"></i> Register New Manager
                            </h5>
                            <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="${pageContext.request.contextPath}/managerServlet"
                                  method="post" id="managerForm">
                                <div class="mb-3">
                                    <input type="text" class="form-control bg-black text-white border-secondary rounded-2" name="firstName"
                                           placeholder="First Name" required>
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control bg-black text-white border-secondary rounded-2" name="lastName"
                                           placeholder="Last Name" required>
                                </div>
                                <div class="mb-3">
                                    <input type="email" class="form-control bg-black text-white border-secondary rounded-2" name="email"
                                           placeholder="Email" required>
                                </div>
                                <div class="mb-3">
                                    <input type="tel" class="form-control bg-black text-white border-secondary rounded-2" name="phone"
                                           placeholder="Phone Number (+94XXXXXXXXX or 0XXXXXXXXX)"
                                           required>
                                </div>
                                <div class="mb-3">
                                    <input type="password" class="form-control bg-black text-white border-secondary rounded-2" name="password"
                                           placeholder="Password" minlength="8" required>
                                </div>
                                <div class="mb-3">
                                    <select class="form-select bg-black text-white border-secondary rounded-2" name="status" required>
                                        <option value="Active">Active</option>
                                        <option value="Inactive">deactive</option>
                                        
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-highlight-greenyellow w-100 rounded-2">
                                    <i class="bi bi-plus-circle-fill"></i> Register Manager
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/manageManager.js"></script>
</body>
</html>