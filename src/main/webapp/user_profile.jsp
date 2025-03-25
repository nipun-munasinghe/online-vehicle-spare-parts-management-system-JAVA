<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_profile.css">
    
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    <script src="${pageContext.request.contextPath}/js/user_profile.js" defer></script>
     
    <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
</head>
<body>
    <div class="container mt-5">
        <div class="profile-box">
            <div class="profile-header d-flex justify-content-between align-items-center mb-4">
                <h2 class="text-lime">Your Profile</h2>
                <div class="dropdown">
                    <button class="btn btn-outline-lime" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bi bi-three-dots-vertical"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li><a class="dropdown-item text-danger" href="javascript:void(0);" onclick="showDeletePopup()">Delete Profile</a></li>
                    </ul>
                </div>
            </div>
            <div class="profile-content">
                <div class="profile-image-container mb-4">
                    <img src="${pageContext.request.contextPath}/images/car1.jpg" alt="Profile Picture" class="profile-image">
                    <div class="image-overlay">
                        <button class="btn btn-sm btn-outline-lime" onclick="changeProfilePicture()">
                            <i class="bi bi-camera"></i> Change
                        </button>
                    </div>
                </div>
                <div class="profile-details">
                    <div class="detail-item">
                        <span class="detail-label">First Name:</span>
                        <span class="detail-value" id="firstName"></span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Last Name:</span>
                        <span class="detail-value" id="lastName"></span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Email:</span>
                        <span class="detail-value" id="email"></span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Password:</span>
                        <span class="detail-value"></span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Address:</span>
                        <span class="detail-value" id="address"></span>
                    </div>
                    <div class="detail-item">
                        <span class="detail-label">Phone:</span>
                        <span class="detail-value" id="phone"></span>
                    </div>
                </div>
               <a href="update_profile.jsp">
     <button class="btn-update" type="button" >Edit</button>
            </a>
            </div>
        </div>
    </div>

    <!-- Edit Profile Modal -->
    <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editProfileModalLabel">Edit Profile</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="editProfileForm">
                        <div class="mb-3">
                            <label for="editFirstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="editFirstName" required>
                        </div>
                        <div class="mb-3">
                            <label for="editLastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="editLastName" required>
                        </div>
                        <div class="mb-3">
                            <label for="editEmail" class="form-label">Email</label>
                            <input type="email" class="form-control" id="editEmail" required>
                        </div>
                        <div class="mb-3">
                            <label for="editAddress" class="form-label">Address</label>
                            <input type="text" class="form-control" id="editAddress" required>
                        </div>
                        <div class="mb-3">
                            <label for="editPhone" class="form-label">Phone</label>
                            <input type="tel" class="form-control" id="editPhone" required>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-lime" onclick="saveProfile()">Save Changes</button>
                </div>
            </div>
        </div>
    </div>
	<br>
    <!-- include footer -->
    <jsp:include page="Footer.jsp"/>
</body>
</html>
