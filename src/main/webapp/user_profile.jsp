<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="Model.User"%>
<%
    User usr = (User) request.getAttribute("user");
    if (usr == null) {
        response.sendRedirect("hero.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_profile.css">
</head>
<body>
<jsp:include page="Header.jsp"/>
<jsp:include page="TopBar.jsp"/>

<div class="profile-bg-art"></div>
<div class="profile-dashboard">
    <aside class="profile-sidebar">
        <div class="avatar-holder shadow-pop">
            <c:choose>
                <c:when test="${not empty user.u_image}">
                    <img src="${pageContext.request.contextPath}/images/profilepics/${user.u_image}" alt="Profile Photo" class="avatar-img" />
                </c:when>
                <c:otherwise>
                    <div class="avatar-placeholder">
                        <i class="bi bi-person"></i>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
        <h2 class="user-fullname"><i class="bi bi-person-badge"></i> ${user.u_firstname} ${user.u_lastname}</h2>
        <form class="update-pic-form" action="${pageContext.request.contextPath}/ProPicUpdateServlet" method="POST" enctype="multipart/form-data">
            <label class="file-label">
                <i class="bi bi-camera"></i> Change Photo
                <input type="file" name="profilepic" accept="image/*" required>
            </label>
            <button type="submit" class="btn-side-update">
                <i class="bi bi-upload"></i>
            </button>
        </form>
        <div class="user-email">
            <i class="bi bi-envelope"></i> ${user.u_email}
        </div>
        <div class="user-actions">
            <button class="del-account-btn" data-bs-toggle="modal" data-bs-target="#deleteModal" title="Delete Account">
                <i class="bi bi-trash3"></i> Delete Account
            </button>
        </div>
    </aside>
    <main class="profile-main-content">
        <c:if test="${not empty param.message}">
            <div class="alert-box error">${param.message}</div>
        </c:if>
        <c:if test="${not empty param.success}">
            <div class="alert-box success">${param.success}</div>
        </c:if>
        <section class="profile-card shadow-panel">
            <header>
                <h3><i class="bi bi-pencil-square"></i> Account Details</h3>
            </header>
            <form method="POST" action="${pageContext.request.contextPath}/updateUserServlet" class="profile-form">
                <div class="form-group">
                    <label><i class="bi bi-person"></i> First Name</label>
                    <input type="text" name="u_firstname" value="${user.u_firstname}" required>
                </div>
                <div class="form-group">
                    <label><i class="bi bi-person"></i> Last Name</label>
                    <input type="text" name="u_lastname" value="${user.u_lastname}" required>
                </div>
                <div class="form-group">
                    <label><i class="bi bi-envelope"></i> Email</label>
                    <input type="email" name="u_email" value="${user.u_email}" required>
                </div>
                <div class="form-group readonly">
                    <label><i class="bi bi-shield-lock"></i> Password</label>
                    <input type="password" value="${user.u_password}" readonly>
                </div>
                <button type="submit" class="update-btn"><i class="bi bi-save"></i> Save Changes</button>
            </form>
        </section>
        <section class="profile-card shadow-panel">
            <header>
                <h3><i class="bi bi-shield-lock"></i> Change Password</h3>
            </header>
            <form method="POST" action="${pageContext.request.contextPath}/updatePwdServlet" class="profile-form" id="passwordForm">
                <div class="form-group">
                    <label><i class="bi bi-key"></i> Old Password</label>
                    <input type="password" name="oldpwd">
                </div>
                <div class="form-group">
                    <label><i class="bi bi-key-fill"></i> New Password</label>
                    <input type="password" name="newpwd" id="newPassword">
                </div>
                <div class="form-group">
                    <label><i class="bi bi-key-fill"></i> Confirm Password</label>
                    <input type="password" name="confirmpwd" id="confirmPassword" required>
                </div>
                <button type="submit" class="update-btn yellow"><i class="bi bi-arrow-repeat"></i> Update Password</button>
            </form>
        </section>
    </main>
</div>

<!-- Delete Modal -->
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content bg-white text-dark">
      <form action="${pageContext.request.contextPath}/deleteUserServlet" method="POST">
        <div class="modal-header bg-danger text-white">
          <h5 class="modal-title" id="deleteModalLabel"><i class="bi bi-trash3 me-2"></i>Delete Account</h5>
          <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <p>
            Type your User ID (<strong>${userid}</strong>) to confirm deletion.
          </p>
          <input type="text" id="confirmUserId" class="form-control" placeholder="Enter User ID" required>
          <input type="hidden" name="usrid" value="${userid}">
          <input type="hidden" name="from" value="myprofile">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="submit" class="btn btn-danger" id="deleteBtn" disabled>
            <i class="bi bi-trash3 me-2"></i>Delete
          </button>
        </div>
      </form>
    </div>
  </div>
</div>

<jsp:include page="Footer.jsp"/>
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
<script>
    // Enable delete button only if user ID matches
    document.getElementById('confirmUserId').addEventListener('input', function() {
        document.getElementById('deleteBtn').disabled = (this.value.trim() !== "${userid}");
    });

    // Password matching validation
    document.getElementById('passwordForm').addEventListener('submit', function(e) {
        var pwd = document.getElementById('newPassword');
        var cpwd = document.getElementById('confirmPassword');
        if (pwd.value !== cpwd.value) {
            cpwd.setCustomValidity("Passwords must match");
            cpwd.reportValidity();
            e.preventDefault();
        } else {
            cpwd.setCustomValidity("");
        }
    });
</script>
</body>
</html>
