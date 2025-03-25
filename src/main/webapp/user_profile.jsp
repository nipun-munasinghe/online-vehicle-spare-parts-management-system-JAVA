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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user_profile.css">
    
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
    <!-- Link bootstrap script file -->
   <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
    
     <script src="${pageContext.request.contextPath}/js/user_profile.js" defer></script>

     
     <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
     <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    
     
</head>
<body>
	
    
 <div class="container mt-5">
    <!-- Profile Box -->
    <div class="profile-box">
        <!-- Header with Title and Dropdown -->
        <div class="profile-header d-flex justify-content-between align-items-center mb-3">
            <h3 class="text-dark">Your Profile</h3>
            <!-- Dropdown Button -->
            <div class="dropdown">
                <button class="btn btn-light" type="button" data-bs-toggle="dropdown" aria-expanded="false">☰</button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item text-danger" href="javascript:void(0);" onclick="showDeletePopup()">Delete Profile</a></li>
                </ul>
            </div>
        </div>
        <!-- Profile Content -->
        <img src="${pageContext.request.contextPath}/images/car1.jpg" alt="Profile Picture" class="profile-image mb-3">
        
        <p><span>FIRST NAME:</span></p>
                <p><span>LAST NAME:</span></p>
                <p><span>EMAIL:</span></p>
                <p><span>PASSWORD</span></p>
                <p><span>ADDRESS:</span></p>
                <p><span>PHONE:</span></p>
        
        <button class="btn-update" type="button" >Edit</button>
    </div>
</div>

 <br><br>
 
  
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	

   
</body>
</html>