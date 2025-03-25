<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/update_profile.css">
    
    <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
     <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
</head>
<body>
    <div class="container mt-4">
        <div class="profile-title">
            
        </div>

        <div class="row mt-4">
            <div class="col-xl-4">
                <!-- Profile picture card-->
                <div class="profile-card mb-4">
                    <div class="profile-image-container">
                        <img class="profile-image" src="${pageContext.request.contextPath}/images/users/avatar-2.png" alt="profile photo">
                        <div class="image-overlay">
                            <button class="btn btn-upload">
                                <i class="bi bi-camera"></i>
                            </button>
                        </div>
                    </div>
                    
                </div>
            </div>
            
            <div class="col-xl-8">
                <!-- Account details card-->
                <div class="update-card mb-4">
                    <div class="card-header">
                        <h4>Update Your Details</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <!-- Form Row-->
                            <div class="row gx-3 mb-3">
                                <!-- Form Group (first name)-->
                                <div class="col-md-6">
                                    <label class="form-label" for="inputFirstName">First name</label>
                                    <input class="form-control" id="inputFirstName" type="text" placeholder="Update your first name" value="">
                                </div>
                                <!-- Form Group (last name)-->
                                <div class="col-md-6">
                                    <label class="form-label" for="inputLastName">Last name</label>
                                    <input class="form-control" id="inputLastName" type="text" placeholder="Update your last name" value="">
                                </div>
                            </div>
                            <!-- Form Row -->
                            <div class="row gx-3 mb-3">
                                <div class="col-md-6">
                                    <label class="form-label" for="inputEmail">Email</label>
                                    <input class="form-control" id="inputEmail" type="email" placeholder="Update your email" value="">
                                </div>
                                <!-- Form Group (phone number)-->
                                <div class="col-md-6">
                                    <label class="form-label" for="inputPhone">Phone number</label>
                                    <input class="form-control" id="inputPhone" type="tel" placeholder="Enter your phone number" value="">
                                </div>
                            </div>
                            
                            <br><hr><br>
                            
                            <div class="password-section">
                                <h5>Change Password</h5>
                                <div class="row gx-3 mb-3">
                                    <div class="col-md-6">
                                        <label class="form-label" for="currentPassword">Current Password</label>
                                        <input class="form-control" id="currentPassword" type="password" placeholder="Enter current password">
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <label class="form-label" for="newPassword">New Password</label>
                                        <input class="form-control" id="newPassword" type="password" placeholder="Enter new password">
                                    </div>
                                </div>
                            </div>
                            
                            <!-- Save changes button-->
                            <button class="btn btn-save" type="button">Save Changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        

    <!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
    <!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
